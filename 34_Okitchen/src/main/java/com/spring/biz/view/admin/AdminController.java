package com.spring.biz.view.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.biz.admin.AdminService;
import com.spring.biz.admin.Paging;
import com.spring.biz.picked.PickedService;
import com.spring.biz.picked.PickedVO;
import com.spring.biz.product.ProductImageVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.RegisterProdVO;
import com.spring.biz.seller.SellerService;
import com.spring.biz.seller.SellerVO;
import com.spring.biz.user.UsersVO;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	private AdminService adminService;
	private ProductService productService;
	private SellerService sellerService;
	private PickedService pickedService;
	
	//@Autowired
	//private Paging paging;
	
	public AdminController() {
		System.out.println("=====>> AdminController() 생성 ");
	}
	
	@Autowired
	public AdminController(AdminService adminService, ProductService productService
			, SellerService sellerService, PickedService pickedService) {
		System.out.println("=====>> AdminController(AdminService adminService) 생성 ");
		this.adminService = adminService;
		this.productService = productService;
		this.sellerService = sellerService;
		this.pickedService = pickedService;
	}
	
	// 페이징 처리 메소드
	private void handlePaging(Model model, Paging p, int cnt) {
	    // 전체 회원 수 구하기
	    p.setTotalRecord(cnt);
	    p.setTotalPage();

	    // 현재 페이지 구하기
	    System.out.println(">> 현재 페이지 : " + p.getNowPage());

	    // 현재 페이지에 표시할 게시글 시작번호(begin), 끝번호 구하기
	    p.setEnd(p.getNowPage() * p.getNumPerPage());
	    p.setBegin(p.getEnd() - p.getNumPerPage() + 1);

	    // 시작번호(begin)이 1보다 작으면 1로 설정
	    if (p.getBegin() < 1) {
	        p.setBegin(1);
	    }
	    
	    System.out.println("> 상품 전체 게시글 수 : " + p.getTotalRecord());
		System.out.println("> 상품 전체 페이지 수 : " + p.getTotalPage());
		
	    // 시작번호(begin)이 데이터 건수보다 크면 데이터 건수와 동일하게 설정
	    if (p.getBegin() > p.getTotalRecord()) {
	        p.setBegin(p.getTotalRecord());
	    }

	    // 끝 번호가 데이터 건수보다 많아지면 데이터 건수와 동일하게 설정
	    if (p.getEnd() > p.getTotalRecord()) {
	        p.setEnd(p.getTotalRecord());
	    }
	    
	    System.out.println(">> 시작번호(begin) : " + p.getBegin());
		System.out.println(">> 끝번호(end) : " + p.getEnd());

	    // 블록 시작페이지, 끝페이지 구하기
	    int beginPage = (p.getNowPage() - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
	    p.setBeginPage(beginPage);
	    p.setEndPage(beginPage + p.getPagePerBlock() - 1);
	    
	    System.out.println(">> 시작페이지(begin) : " + p.getBeginPage());
		System.out.println(">> 끝페이지(end) : " + p.getEndPage());

	    // 끝페이지(endPage)가 전체 페이지 수(totalPage)를 초과하면 전체 페이지 수로 설정
	    if (p.getEndPage() > p.getTotalPage()) {
	        p.setEndPage(p.getTotalPage());
	    }

	    model.addAttribute("pvo", p);
	}
	
	@RequestMapping("/userList.do")
	   public String getUserList(Model model, Paging p) {
	      System.out.println(">> 회원 전체 리스트 ");
	      
	      // =============================================
	      List<UsersVO> userList = adminService.getUserList();
	      System.out.println(">> 회원 리스트  : " + userList);
	      
	      model.addAttribute("userList", userList);
	      
	      // 페이징 처리 ========================
	      //1. 전체 회원 수 구하기 
	      p.setTotalRecord(adminService.getUserCount());
	      p.setTotalPage();
	      
	      System.out.println("> 상품 전체 게시글 수 : " + p.getTotalRecord());
	      System.out.println("> 상품 전체 페이지 수 : " + p.getTotalPage());
	      
	      //2. 현재 페이지 구하기 
	      /*
	       * if (cPage != null) { p.setNowPage(Integer.parseInt(cPage)); }
	       */
	      //System.out.println("> cPage : " + cPage);
	      //2. 현재 페이지 구하기 
	      System.out.println(">> 현재 페이지 : " + p.getNowPage());
	      
	      //3. 현재 페이지에 표시할 게시글 시작번호(begin), 끝번호 구하기
	      p.setEnd(p.getNowPage() * p.getNumPerPage());
	      p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
	      
	      //3-1.(선택적) 끝 번호가 데이터 건수보다 많아지면 데이터 건수와 동일하게 설정
	      if (p.getEnd() > p.getTotalRecord()) {
	            p.setEnd(p.getTotalRecord());
	      }
	      System.out.println(">> 시작번호(begin) : " + p.getBegin());
	      System.out.println(">> 끝번호(end) : " + p.getEnd());
	      //4. 블록 시작페이지, 끝페이지 구하기(현재페이지 번호 사용)
	      //4-1시작페이지 구하기
	      //cPage 마지막페이지 초과로 인해 끝페이지가 전체페이지보다 큰 경우 전체페이지수랑 같게 셋팅
	      int beginPage = (p.getNowPage() - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
	      p.setBeginPage(beginPage);
	      p.setEndPage(beginPage + p.getPagePerBlock() - 1);
	      
	      //4-2. 끝페이지(endPage)가 전체 페이지 수(totalPage) 보다 크면
	      //끝페이지를 전체 페이지 수로 변경처리(설정)
	      if(p.getEndPage() > p.getTotalPage()){
	         p.setEndPage(p.getTotalPage());
	      }
	      
	      System.out.println(">> 시작페이지(begin) : " + p.getBeginPage());
	      System.out.println(">> 끝페이지(end) : " + p.getEndPage());      
	      
	      //=================================
	      //현재 페이지 기준으로 DB 데이터(게시글) 가져오기
	      //시작번호(begin), 끝번호(end) 사용해서
	      List<UsersVO> userListPaging = adminService.getUserListPaging(p.getBegin(), p.getEnd());
	      System.out.println(">> 상품 게시글 현재 페이지 글 목록 : " + userListPaging);
	      
	      model.addAttribute("userListPaging", userListPaging);
	      model.addAttribute("pvo", p);
	      
	      return"admin/userList";
	   }
	
	
	//----------- 상품관리 --------------
	//전체상품조회
	@RequestMapping("/allProdList.do")
	private String allPostList(Model model, Paging p, @RequestParam(name = "nowPage", required = false) String nowPage) throws Exception {
		System.out.println("======> AdminController.allPostList() 실행");
		System.out.println(">>> 화면 이동 - allPostList()");
		System.out.println("nowPage : " + nowPage);
		System.out.println("p.getNowPage() : " + p.getNowPage());
		List<RegisterProdVO> list = adminService.allProdList();
		model.addAttribute("list", list);
		
		//adminService.getProdCount(); //총 게시물 수 
		int cnt =  list.size(); 
		model.addAttribute("cnt", cnt);
		
		// 페이징 처리 ========================
		handlePaging(model, p, cnt);
		
		//=================================
		//현재 페이지 기준으로 DB 데이터(게시글) 가져오기
		//시작번호(begin), 끝번호(end) 사용해서
		List<RegisterProdVO> allProdListPaging = adminService.allProdListPaging(p.getBegin(), p.getEnd());
		
		model.addAttribute("allProdListPaging", allProdListPaging);
		
		return "admin/allProdList";
	}
	
	//승인대기관리
	@RequestMapping("/confirmProd.do")
	private String confirmProd(Model model, Paging p) throws Exception {
		System.out.println("======> AdminController.confirmProd() 실행");
		System.out.println(">>> 화면 이동 - confirmProd()");
		
		List<RegisterProdVO> list = adminService.confirmProd();
		model.addAttribute("list", list);
		
		int cnt = list.size(); //승인대기 총 게시물 수
		model.addAttribute("cnt", cnt);
		
		// 페이징 처리 ========================
		handlePaging(model, p, cnt); 
		
		//=================================
		//현재 페이지 기준으로 DB 데이터(게시글) 가져오기
		//시작번호(begin), 끝번호(end) 사용해서
		List<UsersVO> userListPaging = adminService.getUserListPaging(p.getBegin(), p.getEnd());
		System.out.println(">> 상품 게시글 현재 페이지 글 목록 : " + userListPaging);
		
		model.addAttribute("userListPaging", userListPaging);
		
		return "admin/confirmProd";
	}
	
	//승인대기-상세보기
	@RequestMapping("/confirmDetail.do")
	private String confirmDetail(Model model, RegisterProdVO vo, PickedVO pickedVo, HttpSession session) throws Exception {
		System.out.println("======> AdminController.confirmDetail() 실행");
		System.out.println(">>> 화면 이동 - confirmDetail()");
		
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
		
		return "admin/confirmDetail";
	}
	
	//상품 승인반려처리
	@RequestMapping("/approveOrRejectProduct.do")
	@ResponseBody
	private String approveOrRejectProduct (@RequestParam("decision") String decision, int productId, Model model) throws Exception {
		System.out.println("======> AdminController.approveOrRejectProduct() 실행");
		
		System.out.println("productId : " + productId);
		
		// 이후 로직에서 decision 값에 따라 처리를 분기할 수 있습니다.
        if ("approve".equals(decision)) {
            // 상품 승인 로직
            adminService.approveProdStatus(productId);

            //메세지 전달 처리 .. 실패 (추후 구현)
            model.addAttribute("successMessage", true);
            return "상품이 승인되었습니다.";
        } else if ("reject".equals(decision)) {
            // 상품 반려 로직
			adminService.rejectProdStatus(productId);
            return "상품이 반려되었습니다.";
        } else {
        	return "올바르지 않은 결정 값입니다.";
        }
		
	}
		
	
}
