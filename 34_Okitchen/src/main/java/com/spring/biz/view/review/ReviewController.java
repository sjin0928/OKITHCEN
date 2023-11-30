package com.spring.biz.view.review;

import java.io.File;




import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.spring.biz.product.ProductVO;
import com.spring.biz.review.ReviewService;
import com.spring.biz.review.ReviewVO;
import com.spring.biz.inquiry.InquiryVO;
import com.spring.biz.vo.OptionsVO;
import com.spring.biz.vo.OrdersVO;

@Controller
@SessionAttributes("review")
@RequestMapping("/product")
public class ReviewController {
   //@Autowired
   private ReviewService reviewService;

   public ReviewController() {
      System.out.println("===========> ReveiwService() 객체 생성");
   }

   @Autowired
   public ReviewController(ReviewService reviewService) {
      System.out.println("===========> ReviewController(ReviewService) 객체 생성");
      System.out.println("::: ReviewService reviewService : " + reviewService);
      this.reviewService = reviewService;
   }

   //리뷰insert
   @RequestMapping("/reviewInsert.do") public String insertBoard(ReviewVO vo, Model model, HttpServletRequest request)
    throws IllegalStateException, IOException { 
      System.out.println(">>> 게시글 입력");
      
      System.out.println("리뷰 입력 받은 vo : " + vo); 
      
      MultipartFile uploadFile = vo.getUploadFile();
      System.out.println("> uploadFile : " + uploadFile);
      
      if (uploadFile == null) {
         System.out.println("::: uploadFile 파라미터가 전달되지 않은 경우");
      } else if (uploadFile.isEmpty()) {
         System.out.println("::: 전달받은 파일 데이터가 없는 경우");
      } else { //업로드 파일이 존재하는 경우
         System.out.println("uploadFile.isEmpty() : " + uploadFile.isEmpty());
         //원본파일명 구하기
         String filename = uploadFile.getOriginalFilename();
         System.out.println("::: 원본파일명 : " + filename);
         String savedFilename = UUID.randomUUID().toString();
         System.out.println("::: 저장파일명 : " + savedFilename);
         
         // 서블릿 컨텍스트의 실제 경로를 얻어옴
           String uploadDir = request.getServletContext().getRealPath("/resources/");
           // 저장할 폴더 경로와 파일명을 합침
           String destPathFile = uploadDir + File.separator + savedFilename;

           // 물리적 파일 복사
           uploadFile.transferTo(new File(destPathFile));
           
           // ReviewVO에 savedFilename 넣기
           vo.setReviewImage(savedFilename);
      }
      
      //orderId로 orders테이블에 후기 여부 등록
      reviewService.updateReviewStatus(vo);
      
      //리뷰 등록
      reviewService.insertReview(vo);
      
      String sucessInsert = "sucessInsert";
      // 성공 여부를 모델에 추가
       model.addAttribute("sucessInsert", sucessInsert);

      return "/product/goMyReview"; 
   }

   // 상품상세페이지로 이동, 상품 / 리뷰, 구매한 상품정보 / 문의 전체 목록 보여주기
   @GetMapping("/ProductReview.do")
   @ResponseBody
   public  List<ReviewVO> ProductReview(OptionsVO ovo, ProductVO vo,ReviewVO rvo, InquiryVO ivo, Model model) throws IllegalStateException, IOException {
      
      System.out.println(">>> 상품/리뷰/문의 전체 목록 보여주기");
      System.out.println("cPage2 : " + rvo.getcPage2());
      System.out.println("rvo : " + rvo);
      
       String cPageValue = rvo.getcPage2();
       int cPageInt;
       int StartPage;
       int EndPage;
      
       if (cPageValue != null && !cPageValue.isEmpty()) {
           cPageInt = Integer.parseInt(cPageValue);
           EndPage = cPageInt * 5;
           StartPage = (cPageInt - 1) * 5 + 1;
       } else {
           // 기본값 또는 에러 처리 로직을 추가하세요.
           cPageInt = 0; // 기본값으로 1을 사용하거나 다른 적절한 값으로 설정합니다.
           StartPage = 1;
           EndPage = 5;
       }
       
       rvo.setStartPage(String.valueOf(StartPage));
       rvo.setEndPage(String.valueOf(EndPage));
       rvo.setcPage2(String.valueOf(cPageInt));
       
       System.out.println(StartPage);
       System.out.println("rvo : " + rvo);
       
      //페이징 처리를 위해 공지사항글 총개수 구하기
         String reviewCount = reviewService.reviewCount(rvo);
         System.out.println("reviewCount : " + reviewCount);
         
         if ((Integer.parseInt(reviewCount)) <= 5) {
            reviewCount = "0";
         }
         System.out.println("New reviewCount : " + reviewCount);
         
         //후기 리스트 출력
         List<ReviewVO> getReviewList = reviewService.getReviewList(rvo);
         
         
         if (reviewCount != "0") {
            reviewCount = String.valueOf((Integer.parseInt(reviewCount) / 5));
         }
         // reviewList에 있는 각 ReviewVO의 cPage 값을 업데이트
         for (ReviewVO review : getReviewList) {
            review.setcPage2(String.valueOf(cPageInt));
            review.setTotPage(reviewCount);
         }
       

      System.out.println("getReviewList : " + getReviewList);
      
      return getReviewList;
   }
   
   // 상품 상세페이지로 이동
   @RequestMapping("/ProductDetail.do")
   public String ProductDetail(ReviewVO rvo, Model model) throws IllegalStateException, IOException {
      
      System.out.println(">>> 상품상세페이지 이동");
      System.out.println("rvo : " + rvo);
      //후기 리스트 출력
      List<ReviewVO> getPhotoList = reviewService.getPhotoList(rvo);
      model.addAttribute("getPhotoList", getPhotoList); 
      System.out.println("getPhotoList : " + getPhotoList);
      
      return "/product/productDetail";
   }
   
   //리뷰작성 시 상품정보 조회
   @RequestMapping("/getReviewInsertView.do")
   public String getBoard(String orderDetailId,ProductVO vo, Model model) {
      System.out.println(">>> 리뷰상품정보 보여주기");
      System.out.println("productId : " + vo);
      System.out.println("orderDetailId : " + orderDetailId);

      ProductVO product = reviewService.getProductOne(vo);
      System.out.println("product : " + product);

      model.addAttribute("product", product); // Model 객체 사용 View로 데이터 전달
      model.addAttribute("orderDetailId", orderDetailId); // Model 객체 사용 View로 데이터 전달

      return "review/replyEnroll";
   }
   
   //문의작성 시 상품정보 조회
   @RequestMapping("/getInQuiryInsertView.do")
   public String getInQuiryInsertView(ProductVO vo, Model model) {
      System.out.println(">>> 문의상품정보 보여주기");
      System.out.println("productId : " + vo);

      ProductVO product = reviewService.getProductOne(vo);
      System.out.println("product : " + product);

      model.addAttribute("product", product); // Model 객체 사용 View로 데이터 전달

      return "inquiry/replyEnrollInquiry";
   }
   
   //문의수정 시 정보조회
   @RequestMapping("/InquiryUpdateView.do")
   public String InquiryUpdateView(InquiryVO ivo,ProductVO vo, Model model) {
      System.out.println(">>> 리뷰내용 보여주기");
      System.out.println("vo : " + vo);
      System.out.println("rvo : " + ivo);

      ProductVO product = reviewService.getProductOne(vo);
      System.out.println("product : " + product);

      //수정 전 정보 가져오기
      InquiryVO inquiry = reviewService.inquiryUpdateView(ivo);
      System.out.println("inquiry : " + inquiry);
      

      model.addAttribute("product", product); // Model 객체 사용 View로 데이터 전달
      model.addAttribute("inquiry", inquiry);

      
      return "inquiry/replyEnrollInqUpdate";
   }
   
   
   // 리뷰수정시 조회
   @RequestMapping("/getReviewUpdateView.do")
   public String ReviewUpdateView(ReviewVO rvo,String orderDetailId, ProductVO vo, Model model) {
      System.out.println(">>> 리뷰상품정보 보여주기");
      System.out.println("productId : " + vo);
      System.out.println("orderDetailId : " + orderDetailId);

      ProductVO product = reviewService.getProductOne(vo);
      System.out.println("product : " + product);

      //수정 전 정보 가져오기
      ReviewVO reviewView = reviewService.reviewUpdateView(rvo);
      System.out.println("reviewView : " + reviewView);
      

      model.addAttribute("product", product); // Model 객체 사용 View로 데이터 전달
      model.addAttribute("orderDetailId", orderDetailId); // Model 객체 사용 View로 데이터 전달
      model.addAttribute("reviewView", reviewView);

      return "review/replyEnrollUpdate";
   }
   
   
   //리뷰수정
   @RequestMapping("/reviewUpdate.do")
   public String reviewUpdate(ReviewVO vo, Model model, HttpServletRequest request) throws IllegalStateException, IOException {
      System.out.println(">>> 리뷰수정");
      
      System.out.println("vo : " + vo);

      MultipartFile uploadFile = vo.getUploadFile();
      System.out.println("> uploadFile : " + uploadFile);
      
      if (uploadFile == null) {
         System.out.println("::: uploadFile 파라미터가 전달되지 않은 경우");
         ReviewVO reviewView = reviewService.reviewUpdateView(vo);
         System.out.println("파라미터가 전달안됐을경우!! : " + reviewView.getReviewImage());
         String savedFilename = reviewView.getReviewImage(); //전에 썼던 이미지 가져오기
      } else if (uploadFile.isEmpty()) {
         System.out.println("::: 전달받은 파일 데이터가 없는 경우");
         ReviewVO reviewView = reviewService.reviewUpdateView(vo);
         System.out.println("파라미터가 전달안됐을경우!! : " + reviewView.getReviewImage());
         String savedFilename = reviewView.getReviewImage(); //전에 썼던 이미지 가져오기
         
         // 서블릿 컨텍스트의 실제 경로를 얻어옴
           String uploadDir = request.getServletContext().getRealPath("/resources/");
           // 저장할 폴더 경로와 파일명을 합침
           String destPathFile = uploadDir + File.separator + savedFilename;

           // 물리적 파일 복사
           uploadFile.transferTo(new File(destPathFile));
           
           // ReviewVO에 savedFilename 넣기
           vo.setReviewImage(savedFilename);
      } else { //업로드 파일이 존재하는 경우
         System.out.println("uploadFile.isEmpty() : " + uploadFile.isEmpty());
         //원본파일명 구하기
         String filename = uploadFile.getOriginalFilename();
         System.out.println("::: 원본파일명 : " + filename);
         String savedFilename = UUID.randomUUID().toString();
         System.out.println("::: 저장파일명 : " + savedFilename);
         
         // 서블릿 컨텍스트의 실제 경로를 얻어옴
           String uploadDir = request.getServletContext().getRealPath("/resources/");
           // 저장할 폴더 경로와 파일명을 합침
           String destPathFile = uploadDir + File.separator + savedFilename;

           // 물리적 파일 복사
           uploadFile.transferTo(new File(destPathFile));
           
           // ReviewVO에 savedFilename 넣기
           vo.setReviewImage(savedFilename);
      }
      reviewService.reviewUpdate(vo);
      String sucessUpdate = "sucessUpdate";
      // 성공 여부를 모델에 추가
       model.addAttribute("successUpdate", sucessUpdate);

      return "/product/goMyReview";
   }
   
   
   //마이페이지 - 상품후기페이지 이동
   @GetMapping("/goMyReview.do")
   public String MyReview() throws IllegalStateException, IOException {
      
      System.out.println(">>> 마이페이지 리뷰목록 보여주기");

      
      return "/product/goMyReview";
   }
   
//   //마이페이지-후기작성가능 페이지 ajax
   @GetMapping("/ableReview.do")
   @ResponseBody
   public List<ProductVO> ableReview(@RequestParam String userId, Model model) {
       System.out.println("====== ReviewController.ableReview() 실행");
       System.out.println("userId : " + userId);
       List<ProductVO> ableReviewList = reviewService.getableReview(userId);
       System.out.println("ableReviewList : " + ableReviewList);
       return ableReviewList;
   }
   
//   //마이페이지-후기gks 페이지 ajax
   @GetMapping("/writeReview.do")
   @ResponseBody
   public List<ProductVO> writeReview(@RequestParam String userId, Model model) {
       System.out.println("====== ReviewController.writeReview() 실행");
       System.out.println("userId : " + userId);
       List<ProductVO> writeReviewList = reviewService.getwriteReview(userId);
       System.out.println("writeReviewList : " + writeReviewList);
       return writeReviewList;
   }
   
}