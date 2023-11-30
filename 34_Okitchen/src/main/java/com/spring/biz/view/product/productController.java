package com.spring.biz.view.product;

import java.io.File;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.biz.picked.PickedService;
import com.spring.biz.picked.PickedVO;
import com.spring.biz.product.ProductImageVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.RegisterProdVO;
import com.spring.biz.seller.SellerService;
import com.spring.biz.seller.SellerVO;
import com.spring.biz.user.UsersVO;

@Controller
@RequestMapping("/product")
public class productController {
	
	private ProductService productService;
	private SellerService sellerService;
	private PickedService pickedService;
	
	public productController() {
		System.out.println("=========> productController 객체 생성");
	}
	
	@Autowired
	public productController(ProductService productService, SellerService sellerService, PickedService pickedService) {
		System.out.println("=========> productController(productService) 객체 생성");
		System.out.println("::: ProductService productService : " + productService);
		this.productService = productService;
		this.sellerService = sellerService;
		this.pickedService = pickedService;
	}
	
	//상품 등록 전 할인율 계산
	private int calculateDiscount(RegisterProdVO vo) {
		System.out.println(">>> 할인율 계산 calculateDiscount() 실행");
		double discountRate = vo.getDiscountRate(); 
	    int originalPrice = vo.getPrice(); 
	    System.out.println("discountRate : " + discountRate + ", originalPrice : " + originalPrice);
	    
	    // 할인된 가격 계산 (원래 가격에서 할인율을 적용하여 계산)
	    double discPrice = originalPrice * (1 - discountRate / 100);
	    int roundedPrice = (int) Math.ceil(discPrice / 10) * 10;
	    System.out.println("discPrice : " + discPrice + ", roundedPrice : " + roundedPrice);
		
		return roundedPrice;
	}
	
	   //상품관리페이지로 이동
	   @RequestMapping("/productList.do")
	   private String productList(HttpSession session, RegisterProdVO vo, Model model) throws Exception {
	      System.out.println("======> productController.productList() 실행");
	      System.out.println(">>>  화면 이동 - productList()");
	      SellerVO sessionVO = (SellerVO)session.getAttribute("sellerVO");
	      if(sessionVO != null) {
	         System.out.println(">>> sellerId : " + sessionVO.getSellerId());
	         
	         //상품 목록 조회
	         List<RegisterProdVO> productList = productService.selectListSelProd(sessionVO.getSellerId());
	         System.out.println(">>> productList : " + productList);
	         
	         // 모델에 상품 목록 추가
	         model.addAttribute("productList", productList);
	      }
	            
	      return "seller/productList";
	   }
	
	   //상품등록하기
	   @RequestMapping("/insertProduct.do")
	   public String insertProduct(HttpSession session, RegisterProdVO vo, @RequestParam("productPhotoFiles") List<MultipartFile> productPhotoFiles, HttpServletRequest request) 
	         throws Exception {
	      System.out.println("======> productController.insertProduct() 실행");
	      SellerVO sellerVO = (SellerVO)session.getAttribute("sellerVO");
	      System.out.println(">>> sellerId : " + sellerVO.getSellerId());
	      vo.setSellerId(sellerVO.getSellerId());
	      System.out.println("vo : " + vo);
	      
	      //할인이 있는 경우 할인 가격 계산
	      if (vo.getDiscountRate() > 0) {
	         int roundedPrice = calculateDiscount(vo);
	         vo.setDiscountedPrice(roundedPrice);
	         System.out.println("vo.getDiscountedPrice() : " + vo.getDiscountedPrice());
	      }
	      
	      MultipartFile titleImage = vo.getImageFile();
	      System.out.println(">> titleImage : " + titleImage);
	      
	      //대표이미지
	      if (titleImage == null) {
	         System.out.println("::: uploadFile 파라미터가 전달되지 않은 경우");
	      } else if (titleImage.isEmpty()) {
	         System.out.println("::: 전달받은 파일 데이터가 없는 경우");
	      } else { //업로드 파일이 존재하는 경우 false
	         System.out.println("titleImage.isEmpty() : " + titleImage.isEmpty());
	         
	         //원본파일명 구하기
	         String titleFilename = titleImage.getOriginalFilename();
	           System.out.println("::: titleFilename 원본파일명 : " + titleFilename);

	         //저장파일명 구하기
	         String savedFilename = UUID.randomUUID().toString();
	         System.out.println("::: titleImage 저장파일명 : " + savedFilename);
	         
	         // 서블릿 컨텍스트의 실제 경로를 얻어옴
	         String uploadDir = request.getServletContext().getRealPath("/productImage/title");
	         
	         // 저장할 폴더 경로와 파일명을 합침
	         String destPathFile = uploadDir + File.separator + savedFilename;

	         titleImage.transferTo(new File(destPathFile));
	         
	         vo.setImage(savedFilename);
	         productService.registerProduct(vo);
	      }

		
		
		//상세이미지
		if (productPhotoFiles != null && !productPhotoFiles.isEmpty()) {
	        for (MultipartFile productPhotoFile : productPhotoFiles) {
	            if (productPhotoFile != null && !productPhotoFile.isEmpty()) {
	                // 원본 파일명 구하기
	                String detailFilename = productPhotoFile.getOriginalFilename();
	                System.out.println("::: detailFilename 원본 파일명: " + detailFilename);

	                // 저장 파일명 구하기
	                String savedDetailFilename = UUID.randomUUID().toString();
	                System.out.println("::: detailImage 저장 파일명: " + savedDetailFilename);

	                // 서블릿 컨텍스트의 실제 경로를 얻어옴
	                String uploadDir2 = request.getServletContext().getRealPath("/productImage/detail");

	                // 저장할 폴더 경로와 파일명을 합침
	                String destPathFile2 = uploadDir2 + File.separator + savedDetailFilename;

	                // 물리적 파일 복사
	                productPhotoFile.transferTo(new File(destPathFile2));

	                vo.setProductPhoto(savedDetailFilename);
	                System.out.println("vo : " + vo);
	                
	                productService.registerProductFile(vo);
	            }
	        }
	    }
        System.out.println("vo : " + vo);

        return "redirect:/product/productList.do"; //판매자의 내 상품 조회하기 페이지로 이동
	}
	
	//[상품등록하기] 클릭시 화면전환
	@GetMapping("/registerProduct.do")
	private String registerProduct() {
		System.out.println("======> productController.registerProduct() 실행");
		System.out.println(">>> 화면 이동 - registerProduct()");
		
		return "seller/registerProduct";
	}
	
	  //상품상세페이지로 이동
	   @RequestMapping("/prodDetail.do")
	   private String productDetail(String deleteInquirysuccess, RegisterProdVO vo, Model model, HttpSession session, PickedVO pickedVo) throws NullPointerException,Exception {
	      System.out.println("======> productController.productDetail() 실행");
	      System.out.println(">>> 화면 이동 - productDetail()");
	      
	       
	      //상품상세정보 가져오기
	      int productId = vo.getProductId();
	      vo = productService.selectOneProd(productId);
	      System.out.println(">>> vo : " + vo);
	      
	      //상품 상세정보 모델에 추가
	      model.addAttribute("vo", vo);
	      
	      //판매자 정보 가져오기
	      SellerVO sellerVO = sellerService.selectOneSel(vo.getSellerId());
	      System.out.println("sellerVO : " + sellerVO);
	      
	      //판매자 정보 모델에 추가
	      model.addAttribute("sellerVO", sellerVO);
	      
	      //상세이미지 가져오기
	      List<ProductImageVO> productImageList = productService.selectDetailImages(productId);
	      
	      //상세이미지 모델에 추가
	      model.addAttribute("productImageList", productImageList);
	      model.addAttribute("deleteInquirysuccess", deleteInquirysuccess);

	      // 세션에서 loginUser와 productId를 통해서 해당 상품이 찜하기 리스트에 있는지 여부를 확인해야 함 
	       // 찜한 상품이면 채워진 하트 , 찜한 상품이 아니면 빈 하트여야하기 때문 !! 
	      System.out.println(">> 상품상세 페이지 pickedVO 확인 : " + pickedVo);
	      // 1. 로그인 O : 세션에 loginUser가 있는지 여부 확인 
	      UsersVO loginUser = (UsersVO)session.getAttribute("loginUser");
	       // 하트 이미지 src : 빈하트가 초기값
	      String heartImg = "../css/img/heart_before.png";
	      if(loginUser != null) { // 로그인 상태면
	         System.out.println(">> 로그인 상태임");
	         pickedVo.setUserId(loginUser.getUserId());
	         System.out.println(">> pickedVo : " + pickedVo);
	          PickedVO pickedCheck = pickedService.selectPicked(pickedVo);
	          System.out.println(">> pickedCheck : " + pickedCheck);
	          // 찜한 상품이라면
	          if(pickedCheck != null) {
	             System.out.println(">> 찜한 상품 해당");
	              heartImg = "../css/img/heart_after.png";
	          }
	      } else { // 로그인 상태가 아니면
	         System.out.println(">> 로그인 상태 아님 ! ");
	       }
	      System.out.println(">> 상세페이지에 들어갈 heartImg : " + heartImg);
	      model.addAttribute("heartImg", heartImg);
	       // productId와 loginUser를 통해 찜한 상품 selectOne 
	       // -> null이 아니면 찜 model.addAttribute
	       // 2. 
	       
	       
	      // 세션에서 userId와 sellerId 가져오기 -> sellerId가 존재하면 판매자쪽으로 보내기
//	       SellerVO seller = (SellerVO) session.getAttribute("sellerVO");
//	       if (seller.getSellerId() != null) {
//	          return "seller/prodDetail"; //판매자의 상품 상세보기
//	       } else {
	          return "product/productDetail"; //메인에서 상품 상세보기
	          
//	       }
	      
	   }
	
	 //상품상세페이지로 이동
	   @RequestMapping("/prodDetailSeller.do")
	   private String prodDetailSeller(String deleteInquirysuccess, RegisterProdVO vo, Model model, HttpSession session, PickedVO pickedVo) throws NullPointerException,Exception {
	      System.out.println("======> productController.prodDetailSeller() 실행");
	      System.out.println(">>> 화면 이동 - prodDetailSeller()");
	      
	       
	      //상품상세정보 가져오기
	      int productId = vo.getProductId();
	      vo = productService.selectOneProd(productId);
	      System.out.println(">>> vo : " + vo);
	      
	      //상품 상세정보 모델에 추가
	      model.addAttribute("vo", vo);
	      
	      //판매자 정보 가져오기
	      SellerVO sellerVO = sellerService.selectOneSel(vo.getSellerId());
	      System.out.println("sellerVO : " + sellerVO);
	      
	      //판매자 정보 모델에 추가
	      model.addAttribute("sellerVO", sellerVO);
	      
	      //상세이미지 가져오기
	      List<ProductImageVO> productImageList = productService.selectDetailImages(productId);
	      
	      //상세이미지 모델에 추가
	      model.addAttribute("productImageList", productImageList);
	      model.addAttribute("deleteInquirysuccess", deleteInquirysuccess);

	      // 세션에서 loginUser와 productId를 통해서 해당 상품이 찜하기 리스트에 있는지 여부를 확인해야 함 
	       // 찜한 상품이면 채워진 하트 , 찜한 상품이 아니면 빈 하트여야하기 때문 !! 
	      System.out.println(">> 상품상세 페이지 pickedVO 확인 : " + pickedVo);
	      // 1. 로그인 O : 세션에 loginUser가 있는지 여부 확인 
	      UsersVO loginUser = (UsersVO)session.getAttribute("loginUser");
	       // 하트 이미지 src : 빈하트가 초기값
	      String heartImg = "../css/img/heart_before.png";
	      if(loginUser != null) { // 로그인 상태면
	         System.out.println(">> 로그인 상태임");
	         pickedVo.setUserId(loginUser.getUserId());
	         System.out.println(">> pickedVo : " + pickedVo);
	          PickedVO pickedCheck = pickedService.selectPicked(pickedVo);
	          System.out.println(">> pickedCheck : " + pickedCheck);
	          // 찜한 상품이라면
	          if(pickedCheck != null) {
	             System.out.println(">> 찜한 상품 해당");
	              heartImg = "../css/img/heart_after.png";
	          }
	      } else { // 로그인 상태가 아니면
	         System.out.println(">> 로그인 상태 아님 ! ");
	       }
	      System.out.println(">> 상세페이지에 들어갈 heartImg : " + heartImg);
	      model.addAttribute("heartImg", heartImg);
	       // productId와 loginUser를 통해 찜한 상품 selectOne 
	       // -> null이 아니면 찜 model.addAttribute
	       // 2. 
	       
	       
	      // 세션에서 userId와 sellerId 가져오기 -> sellerId가 존재하면 판매자쪽으로 보내기
//	       SellerVO seller = (SellerVO) session.getAttribute("sellerVO");
//	       if (seller.getSellerId() != null) {
	          return "seller/prodDetail"; //판매자의 상품 상세보기
	       /*} else {
	          return "product/prodDetail"; //메인에서 상품 상세보기
	          
	       }*/
	      
	   }
	
	
}
