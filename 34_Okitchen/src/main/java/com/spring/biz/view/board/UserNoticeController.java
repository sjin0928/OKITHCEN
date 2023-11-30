package com.spring.biz.view.board;

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

import com.spring.biz.board.NoticeService;
import com.spring.biz.board.NoticeVO;
import com.spring.biz.inquiry.InquiryService;
import com.spring.biz.product.ProductVO;
import com.spring.biz.review.ReviewService;
import com.spring.biz.review.ReviewVO;
import com.spring.biz.vo.InquiryAnsVO;
import com.spring.biz.vo.OptionsVO;
import com.spring.biz.vo.OrdersVO;

@Controller
@SessionAttributes("notice")
@RequestMapping("/notice")
public class UserNoticeController {
	// @Autowired
	private NoticeService noticeService;

	public UserNoticeController() {
		System.out.println("===========> NoticeService() 객체 생성");
	}

	@Autowired
	public UserNoticeController(NoticeService noticeService) {
		System.out.println("===========> UserNoticeController(noticeService) 객체 생성");
		System.out.println("::: NoticeService noticeService : " + noticeService);
		this.noticeService = noticeService;
	}

	// 고객센터메뉴바 -> 공지사항 클릭시 공지사항 리스트페이지로 이동
	@GetMapping("/goNotice.do") // 화면 전환만 할 경우 @GetMapping
	public String goNotice() {
		System.out.println("====== UserNoticeController.goNotice() 실행");
		return "/board/userNoticePage";
	}


	// 고객센터 공지사항 리스트 조회
	@GetMapping("/getNoticeList.do")
	@ResponseBody
	public List<NoticeVO> getNoticeList(NoticeVO vo, Model model) {
		System.out.println("====== InquiryController.getNoticeList() 실행");

		System.out.println("cPage : " + vo.getcPage());
		 System.out.println("vo : " + vo);
		 
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
		 System.out.println("vo : " + vo);
		
		//페이징 처리를 위해 공지사항글 총개수 구하기
		Double noticeCount = noticeService.noticeCount();
		
		if (noticeCount <= 5.0) {
			noticeCount = (double) 0;
		}
		System.out.println("noticeCount : " + noticeCount);
		//공지사항 글 리스트 가져오기
		List<NoticeVO> noticeList = noticeService.getNoticeList(vo);
		
		if (noticeCount != 0) {
			noticeCount = (double)noticeCount / 5;
		}
		// noticeList에 있는 각 NoticeVO의 cPage 값을 업데이트
		for (NoticeVO notice : noticeList) {
		    notice.setcPage(String.valueOf(cPageInt));
		    notice.setTotPage(noticeCount);
		}
		
		System.out.println("noticeList : " + noticeList);

		return noticeList;
	}

	
	  //공지사항 상세페이지 조회
	 
	 @RequestMapping("/NoticeDetail.do") 
	 public String NoticeDetail(NoticeVO vo,Model model) {
	 System.out.println("====== InquiryController.NoticeDetail() 실행");
	  
	 NoticeVO noticeDetail = noticeService.noticeDetail(vo);
	 System.out.println("noticeDetail : " + noticeDetail);
	  
	 model.addAttribute("noticeDetail", noticeDetail);
	  
	 return "board/userNoticeDetail"; 
	 
	 }
	 
	// 고객센터메뉴바 -> 자주묻는 질문 클릭시 FAQ 리스트페이지로 이동
	@GetMapping("/goFAQ.do") // 화면 전환만 할 경우 @GetMapping
	public String goFAQ() {
		System.out.println("====== UserNoticeController.goFAQ() 실행");
		return "/board/userFaq";
	}


}
