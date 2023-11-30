package com.spring.biz.view.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class IndexController {
	
	public IndexController() {
		System.out.println("=========> IndexController 객체 생성");
	}
	
	//메인페이지로 이동
	@RequestMapping("/index.do")
	private String indexProdList() {
		System.out.println("======> IndexController.indexProdList() 실행");
		System.out.println(">>>  화면 이동 - index()");
		
		return "redirect:collections/indexProdList.do";
	}
	
	//관리자페이지로 이동
	@RequestMapping("/adminIndex.do")
	private String adminIndex() {
		System.out.println("======> IndexController.adminIndex() 실행");
		System.out.println(">>>  화면 이동 - adminIndex()");
		
		return "redirect:adminOrdersList/getSalesRecord.do";
	}
	
}
