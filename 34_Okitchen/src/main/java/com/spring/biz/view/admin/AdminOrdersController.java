package com.spring.biz.view.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.biz.admin.AdminOrdersService;
import com.spring.biz.admin.AdminOrdersVO;
import com.spring.biz.community.CommunityService;
import com.spring.biz.community.CommunityVO;

@Controller
@RequestMapping("/adminOrdersList")			
public class AdminOrdersController {

	@Autowired
	private AdminOrdersService adminOrdersService;
	
	public AdminOrdersController() {
		System.out.println("====> adminOrdersController() 객체 생성");
	}
	
	public AdminOrdersController(AdminOrdersService adminOrdersService) {
		System.out.println("====> adminOrdersController(AdminOrdersService adminOrdersService) 객체 생성");
		System.out.println(" AdminOrdersService adminOrdersService : " + adminOrdersService);
		this.adminOrdersService = adminOrdersService;
	}
	
	// 조건별 주문내역 조회
	@GetMapping("/getOrdersListByOption.do")
	@ResponseBody
	public List<AdminOrdersVO> getOrdersStatusList(AdminOrdersVO vo) {
		System.out.println(">>> 주문 내역 리스트 보기 실행");
		System.out.println("vo : " + vo);
		
		
		List<AdminOrdersVO> adminOrdersServiceList =  adminOrdersService.getOrdersStatusListByUserId(vo);
		System.out.println("adminOrdersServiceList : " + adminOrdersServiceList);
		
		return adminOrdersServiceList;
	}
	
	
	// 배송정보 수정
	@PostMapping("/updateOrderStatus.do")
	@ResponseBody
	public String updateOrderStatus(AdminOrdersVO vo) {
		System.out.println(">> 주문 내역 변경 실행");
		System.out.println(vo);
		
		adminOrdersService.updateOrderStatus(vo);
		
		return "test"; //조회페이지 돌아가 .. 아 왜 안돼?
	}
	
	// 주문 내역 조회페이지로 가자 (JSP를 렌더링하는 컨트롤러로 리다이렉션하는 것이 더 일반적)
	@GetMapping("/goAdminOrderHistory.do")
	public String goAdminOrderHistory() {
	    return "/admin/adminOrderHistory";
	}
	
	//송장번호 입력 팝업창 띄워라
	@GetMapping("/goInvoiceNumberPopup.do")
	public String goInvoiceNumberPopup() {
		return "admin/adminInvoicePopup";
	}
	
	
	
	//이번달, 올해  매출조회
	@GetMapping("getSalesRecord.do")
	public String getSalesRecord(Model model) {
		System.out.println(">>  이번달, 올해  총 매출 계싼");
		
		AdminOrdersVO monthAmount = adminOrdersService.totalAmountMonth();
		System.out.println("MonthAmount : " + monthAmount);
		
		AdminOrdersVO yearAmount = adminOrdersService.totalAmountYear();
		System.out.println("yearAmount : " + yearAmount);
		
		model.addAttribute("monthAmount", monthAmount);
		model.addAttribute("yearAmount", yearAmount);
		
		System.out.println("이번달, 올해 수익 model : " + model);
		
		return "adminIndex";
	}
	
	
	//전체 커뮤니티 게시물 가져오기
	@GetMapping("/getCommunityListByAdmin.do")
	public String getCommunityList( Model model) {
		System.out.println(">>> 커뮤니티 전체 목록 보여주기");

		List<CommunityVO> communityListAdmin = adminOrdersService.getcommunityListAdmin();
		
		model.addAttribute("communityListAdmin", communityListAdmin);
		System.out.println("model : " + model);
		
		return "admin/adminCommunityList";
	}
	
}
