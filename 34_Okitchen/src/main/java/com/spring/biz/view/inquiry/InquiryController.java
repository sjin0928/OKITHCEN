package com.spring.biz.view.inquiry;

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

import com.spring.biz.board.NoticeVO;
import com.spring.biz.inquiry.InquiryService;
import com.spring.biz.product.ProductVO;
import com.spring.biz.review.ReviewService;
import com.spring.biz.review.ReviewVO;
import com.spring.biz.inquiry.InquiryAnsVO;
import com.spring.biz.inquiry.InquiryVO;
import com.spring.biz.vo.OptionsVO;
import com.spring.biz.vo.OrdersVO;

@Controller
@SessionAttributes("inquiry")
@RequestMapping("/product")
public class InquiryController {
	//@Autowired
	private InquiryService inquiryService;

	public InquiryController() {
		System.out.println("===========> InquiryService() 객체 생성");
	}

	@Autowired
	public InquiryController(InquiryService inquiryService) {
		System.out.println("===========> InquiryController(inquiryService) 객체 생성");
		System.out.println("::: InquiryService inquiryService : " + inquiryService);
		this.inquiryService = inquiryService;
	}

	//상품문의 등록
	@RequestMapping("/inquiryInsert.do") public String inquiryInsert(InquiryVO vo, Model model)
	 throws IllegalStateException, IOException { 
		System.out.println(">>> 상품문의 등록");
		
		System.out.println("vo : " + vo); 
		
		//상품문의 등록
		inquiryService.insertInquiry(vo);
		
	    // 성공 여부를 모델에 추가
	    model.addAttribute("successInquiry", true);

		return "/product/productDetail"; 
	}

	//상품문의 조회 ajax
	@GetMapping("/inquiryList.do")
	@ResponseBody
	public List<InquiryVO> inquiryList(InquiryVO vo, Model model) {
	    System.out.println("====== InquiryController.inquiryList() 실행");
	    System.out.println("vo : " + vo);
	    
	    System.out.println("cPage : " + vo.getcPage());
	    
	    String cPageValue = vo.getcPage();
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
		 
		 vo.setStartPage(String.valueOf(StartPage));
		 vo.setEndPage(String.valueOf(EndPage));
		 vo.setcPage(String.valueOf(cPageInt));
		 
		 System.out.println(StartPage);
		 
	    
		//페이징 처리를 위해 문의글 총개수 구하기
			Double inquiryCount = inquiryService.inquiryCount(vo);
			System.out.println("inquiryCount : " + inquiryCount);
			
			if (inquiryCount <= 5.0) {
				inquiryCount = (double) 0;
			}
			System.out.println("inquiryCount : " + inquiryCount);
		//문의 글 리스트 가져오기
	    List<InquiryVO> inquiryList = inquiryService.inquiryList(vo);

	    if (inquiryCount != 0) {
	    	inquiryCount = (double)inquiryCount / 5;
		}
		// noticeList에 있는 각 NoticeVO의 cPage 값을 업데이트
		for (InquiryVO inquiry : inquiryList) {
			inquiry.setcPage(String.valueOf(cPageInt));
			inquiry.setTotPage(inquiryCount);
		}
		
		System.out.println("inquiryList : " + inquiryList);
	    
	    
	    return inquiryList;
	}
	
	
	//문의수정
	@RequestMapping("/inquiryUpdate.do")
	public String reviewUpdate(InquiryVO vo, Model model) throws IllegalStateException, IOException {
		System.out.println(">>> 문의수정");
		
		System.out.println("vo : " + vo);

		inquiryService.updateInquiry(vo);

		// 성공 여부를 모델에 추가
	    model.addAttribute("inqUpdatesuccess", true);

		return "/product/productDetail";
	}
	
	//문의삭제
	@RequestMapping("/deleteInquiry.do")
	public String deleteInquiry(InquiryVO vo, Model model) throws IllegalStateException, IOException {
		System.out.println(">>> 문의삭제");
		
		System.out.println("vo : " + vo);

		inquiryService.deleteInquiry(vo);

		// 성공 여부를 모델에 추가
	    model.addAttribute("deleteInquirysuccess", true);

		return "/product/productDetail";
	}
	
	//문의삭제 - 마이페이지
	@RequestMapping("/deleteInquiry2.do")
	public String deleteInquiry2(InquiryVO vo, Model model) throws IllegalStateException, IOException {
		System.out.println(">>> 문의삭제");
		
		System.out.println("vo : " + vo);

		inquiryService.deleteInquiry(vo);

		// 성공 여부를 모델에 추가
	    model.addAttribute("deleteInquirysuccess", true);

		return "/product/goMyInquiry";
	}
	
	//마이페이지 - 상품문의 조회 ajax
	@GetMapping("/MyInquiry.do")
	@ResponseBody
	public List<InquiryVO> MyInquiry(InquiryVO vo, Model model) {
	    System.out.println("====== InquiryController.MyInquiry() 실행");
	    System.out.println("vo : " + vo);
	    
	    List<InquiryVO> MyInquiry = inquiryService.MyInquiry(vo);
	    System.out.println("MyInquiry : " + MyInquiry);
	    
	    return MyInquiry;
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
	
	//마이페이지 - 상품문의페이지 이동
	@GetMapping("/goMyInquiry.do")
	public String MyReview() throws IllegalStateException, IOException {
		
		System.out.println(">>> 마이페이지 문의목록 보여주기");

		
		return "/product/goMyInquiry";
	}

}
