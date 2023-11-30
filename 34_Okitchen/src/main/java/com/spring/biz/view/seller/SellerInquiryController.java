package com.spring.biz.view.seller;

import java.io.File;





import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

import com.spring.biz.inquiry.InquiryService;
import com.spring.biz.product.ProductVO;
import com.spring.biz.review.ReviewService;
import com.spring.biz.review.ReviewVO;
import com.spring.biz.seller.SellerVO;
import com.spring.biz.inquiry.InquiryAnsVO;
import com.spring.biz.inquiry.InquiryVO;
import com.spring.biz.vo.OptionsVO;
import com.spring.biz.vo.OrdersVO;

@Controller
@SessionAttributes("inquiry")
@RequestMapping("/seller")
public class SellerInquiryController {
	//@Autowired
	private InquiryService inquiryService;

	public SellerInquiryController() {
		System.out.println("===========> InquiryService() 객체 생성");
	}

	@Autowired
	public SellerInquiryController(InquiryService inquiryService) {
		System.out.println("===========> InquiryController(inquiryService) 객체 생성");
		System.out.println("::: InquiryService inquiryService : " + inquiryService);
		this.inquiryService = inquiryService;
	}
	
	// 판매자메뉴바 -> 나의 문의내역 클릭 시 문의내역 리스트로 이동
	@GetMapping("/Sellerinquirypage.do") // 화면 전환만 할 경우 @GetMapping
	public String goSellerinquirypage() {
		System.out.println("====== InquiryController.goSellerinquirypage() 실행");
		return "/seller/SellerInquiryList";
	}
	
	// 판매자메뉴바 -> 나의 문의내역 클릭 시 문의답변완료내역 리스트로 이동
		@GetMapping("/SellerinquiryAnsPage.do") // 화면 전환만 할 경우 @GetMapping
		public String goSellerinquiryAnsList() {
			System.out.println("====== InquiryController.goSellerinquiryAnsList() 실행");
			return "/seller/SellerInquiryAnsList";
		}
	
	//판매자페이지 - 상품문의 조회 ajax
	@GetMapping("/SellerinquiryList.do")
	@ResponseBody
	public List<InquiryVO> SellerinquiryList(InquiryAnsVO avo, InquiryVO vo, Model model, HttpServletRequest request) {
	    System.out.println("====== InquiryController.SellerinquiryList() 실행");
	    System.out.println("vo : " + vo);
	    
	    HttpSession httpSession = request.getSession(false);
		SellerVO sessionVO = (SellerVO)httpSession.getAttribute("sellerVO");
	    
	    
	    List<InquiryVO> inquiryList = inquiryService.SellerinquiryList(sessionVO);
	    System.out.println("inquiryList : " + inquiryList);
	    
	    return inquiryList;
	}
	
	//판매자페이지 - 답변완료 상품문의 조회 ajax
	@GetMapping("/SellerinquiryAnsList.do")
	@ResponseBody
	public List<InquiryVO> SellerinquiryAnsList(InquiryAnsVO avo, InquiryVO vo, Model model, HttpServletRequest request) {
	    System.out.println("====== InquiryController.SellerinquiryAnsList() 실행");
	    System.out.println("vo : " + vo);
	    
	    HttpSession httpSession = request.getSession(false);
		SellerVO sessionVO = (SellerVO)httpSession.getAttribute("sellerVO");
		
	    List<InquiryVO> inquiryList = inquiryService.SellerinquiryAnsList(sessionVO);
	    System.out.println("inquiryList : " + inquiryList);
	    
	    return inquiryList;
	}
	
	//문의답변작성 시 문의정보 조회
	@RequestMapping("/getinqContent.do")
	public String getBoard(String inqId,InquiryVO vo, Model model) {
		System.out.println(">>> 문의내용 보여주기");
		System.out.println("InquiryVO : " + vo);
		System.out.println("inqId : " + inqId);

		InquiryVO inquiry = inquiryService.getinquiryOne(vo);
		System.out.println("inquiry : " + inquiry);

		model.addAttribute("inquiry", inquiry); // Model 객체 사용 View로 데이터 전달

		return "seller/replyEnrollSellerInq";
	}
	
	//문의답변수정 시 문의정보 조회
	@RequestMapping("/InquiryAnsUpdateView.do")
	public String InquiryAnsUpdateView(InquiryAnsVO avo, String inqId, InquiryVO vo, Model model) {
		System.out.println(">>> 문의 답변 수정 시 문의내용 보여주기");
		System.out.println("InquiryVO : " + vo);
		
		//문의내용을 가져옴
		InquiryVO inquiry = inquiryService.getinquiryOne(vo);
		System.out.println("inquiry : " + inquiry);
		
		//문의 답변내용을 가져옴
		InquiryAnsVO inquiryAns = inquiryService.getinquiryAnsOne(avo);
		System.out.println("inquiry : " + inquiry);
		
		model.addAttribute("inquiryAns", inquiryAns); // Model 객체 사용 View로 데이터 전달
		model.addAttribute("inquiry", inquiry); // Model 객체 사용 View로 데이터 전달

		return "seller/replyEnrollSellInqUpdate";
	}
	
	//문의 답변 입력
		@RequestMapping("/inqAnsInsert.do")
		public String inqAnsInsert(InquiryAnsVO avo,InquiryVO vo, Model model) throws IllegalStateException, IOException {
			System.out.println(">>> 문의답변 등록");
			
			System.out.println("vo : " + vo);
			
			//리뷰답변등록
			inquiryService.inqAnsInsert(avo);
			//리뷰답변여부변경
			inquiryService.inqAnswered(vo);
			
			// 성공 여부를 모델에 추가
		    model.addAttribute("success", true);

			return "/seller/SellerInquiryList";
		}
		//상품문의답변 조회 ajax
		@GetMapping("/inquiryAns.do")
		@ResponseBody
		public InquiryAnsVO GetReplyContent(String inqId, Model model) {
		    System.out.println("====== InquiryController.inquiryAns() 실행");
		    System.out.println("inqId : " + inqId);
		    
		    InquiryAnsVO inquiryAns = inquiryService.inquiryAns(inqId);
		    System.out.println("inquiryAns : " + inquiryAns);
		    
		    return inquiryAns;
		}
		
		//문의 답변 수정
		@RequestMapping("/inqAnsUpdate.do")
		public String inqAnsUpdate(InquiryAnsVO avo,InquiryVO vo, Model model) throws IllegalStateException, IOException {
			System.out.println(">>> 문의답변 수정");
			
			System.out.println("vo : " + vo);
			
			//리뷰답변수정
			inquiryService.inqAnsUpdate(avo);
			
			// 성공 여부를 모델에 추가
		    model.addAttribute("success", true);

			return "/seller/SellerInquiryAnsList";
		}
		
		//문의 답변 삭제
		@RequestMapping("/deleteInquiryAns.do")
		public String deleteInquiryAns(InquiryVO vo, Model model) throws IllegalStateException, IOException {
			System.out.println(">>> 문의답변 삭제");
			
			System.out.println("vo : " + vo);
			
			//리뷰답변삭제
			inquiryService.deleteInquiryAns(vo);
			
			//리뷰답변삭제하면서 상태값 바꾸기
			inquiryService.inqAnsweredUpdate(vo);
			
			return "/seller/SellerInquiryAnsList";
		}
}
