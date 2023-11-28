package com.spring.biz.view.admin;

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
import com.spring.biz.inquiry.InquiryAnsVO;
import com.spring.biz.inquiry.InquiryVO;
import com.spring.biz.vo.OptionsVO;
import com.spring.biz.vo.OrdersVO;

@Controller
@SessionAttributes("admin")
@RequestMapping("/admin")
public class AdminNoticeController {
	// @Autowired
	private NoticeService noticeService;

	public AdminNoticeController() {
		System.out.println("===========> NoticeService() 객체 생성");
	}

	@Autowired
	public AdminNoticeController(NoticeService noticeService) {
		System.out.println("===========> AdminNoticeController(noticeService) 객체 생성");
		System.out.println("::: NoticeService noticeService : " + noticeService);
		this.noticeService = noticeService;
	}

	// 관리자페이지 게시판관리 - 공지사항메뉴바 -> 공지사항 리스트페이지로 이동
	@GetMapping("/goAdminNotice.do") // 화면 전환만 할 경우 @GetMapping
	public String adminNoticePage() {
		System.out.println("====== AdminNoticeController.adminNoticePage() 실행");
		return "/admin/adminNoticePage";
	}

	//관리자페이지 공지사항 리스트 조회
	@GetMapping("/getAdminNoticeList.do")
	@ResponseBody
	public List<NoticeVO> getNoticeList(NoticeVO vo, Model model) {
		System.out.println("====== AdminNoticeController.getNoticeList() 실행");

		System.out.println("cPage : " + vo.getcPage());
		 System.out.println("vo : " + vo);
		 
		 String cPageValue = vo.getcPage();
		 int cPageInt;
		 int StartPage;
		 int EndPage;
		 
		
		 if (cPageValue != null && !cPageValue.isEmpty() && cPageValue != "0") {
			 // 끝번호 계산
		     cPageInt = Integer.parseInt(cPageValue);
		     EndPage = cPageInt * 10;
		     // 시작번호 계산
		     StartPage = (cPageInt - 1) * 10 + 1;
		 } else {
		     // 기본값 또는 에러 처리 로직을 추가하세요.
		     cPageInt = 0; // 기본값으로 1을 사용하거나 다른 적절한 값으로 설정합니다.
		     StartPage = 1;
		     EndPage = 10;
		 }
		 
		 vo.setStartPage(String.valueOf(StartPage));
		 vo.setEndPage(String.valueOf(EndPage));
		 vo.setcPage(String.valueOf(cPageInt));
		 
		 System.out.println(StartPage);
		
		//페이징 처리를 위해 공지사항글 총개수 구하기
		Double noticeCount = noticeService.noticeCount();
		
		if (noticeCount <= 10.0) {
			noticeCount = (double) 0;
		}
		System.out.println("noticeCount : " + noticeCount);
		//공지사항 글 리스트 가져오기
		List<NoticeVO> noticeList = noticeService.getNoticeList(vo);
		
		if (noticeCount != 0) {
			noticeCount = (double)noticeCount / 10;
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
	 
	 @RequestMapping("/adminNoticeDetail.do") 
	 public String NoticeDetail(NoticeVO vo,Model model) {
	 System.out.println("====== AdminNoticeController.getNoticeList() 실행");
	  
	 NoticeVO noticeDetail = noticeService.noticeDetail(vo);
	 System.out.println("noticeDetail : " + noticeDetail);
	  
	 model.addAttribute("noticeDetail", noticeDetail);
	  
	 return "/admin/adminNoticeDetail"; 
	 
	 }
	 
	 
	// 공지사항 등록 페이지 이동
	@GetMapping("/goInsertNoticePage.do") // 화면 전환만 할 경우 @GetMapping
	public String goInsertNoticePage() {
		System.out.println("====== AdminNoticeController.goInsertNoticePage() 실행");
		return "/board/insertNoticePage";
	}
	
		
	 //공지사항 등록
	 
	 @RequestMapping("/noticeInsert.do")
	 public String noticeInsert(NoticeVO vo,Model model) {
	 System.out.println("====== AdminNoticeController.noticeInsert() 실행");
	  
	 noticeService.noticeInsert(vo);
	 
	 //등록성공했을 시 successInsert 전달
	 String successInsert = "successInsert";
	 model.addAttribute("successInsert", successInsert);
	 
	 return "/admin/adminNoticePage"; 
	 
	 }
	 
	 //공지사항 수정
	 @RequestMapping("/noticeUpdate.do")
	 public String noticeUpdate(NoticeVO vo,Model model) {
	 System.out.println("====== AdminNoticeController.noticeUpdate() 실행");
	  
	 noticeService.noticeUpdate(vo);
	 
	 NoticeVO noticeDetail = noticeService.noticeDetail(vo);
	 System.out.println("noticeDetail : " + noticeDetail);
	 
	 //등록성공했을 시 successUpdate 전달
	 String successUpdate = "successUpdate";
	 model.addAttribute("successUpdate", successUpdate);
	 model.addAttribute("noticeDetail", noticeDetail);
	 
	 return "/admin/adminNoticeDetail"; 
	 
	 }
	 
	// 공지사항 수정 페이지 이동(전에 작성했던 내용 조회)
	@RequestMapping("/goUpdateNoticePage.do")
	public String goUpdateNoticePage(NoticeVO vo,Model model) {
		System.out.println("====== AdminNoticeController.goUpdateNoticePage() 실행");
		System.out.println("vo : " + vo);
		
		NoticeVO updateNoticeView = noticeService.updateNoticeView(vo);
		
		System.out.println("updateNoticeView : " + updateNoticeView);
		
		model.addAttribute("updateNoticeView", updateNoticeView);
		
		return "/board/updateNoticePage";
	}
	 
	// 공지사항 삭제
	@RequestMapping("/deleteNotice.do")
	public String deleteNotice(NoticeVO vo,Model model) {
		System.out.println("====== AdminNoticeController.deleteNotice() 실행");
		System.out.println("vo : " + vo);
		
		noticeService.deleteNotice(vo);
		
		return "/admin/adminNoticePage";
	}
	 

}
