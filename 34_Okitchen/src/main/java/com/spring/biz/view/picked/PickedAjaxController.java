package com.spring.biz.view.picked;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.biz.picked.PickedService;
import com.spring.biz.picked.PickedVO;
import com.spring.biz.user.UsersVO;
@RestController
@RequestMapping("/product")
public class PickedAjaxController {
	@Autowired
	private PickedService pickedService;
	
	@RequestMapping("/insertPicked.do")
	public boolean insertPicked(PickedVO vo, HttpSession session) {
		System.out.println(">> PickedAjaxController.insertPicked() 실행");
		System.out.println(">> vo 확인 : " + vo);
		// 세션에 저장된 로그인 정보에서 id 꺼내쓰기
		UsersVO loginUser = (UsersVO)session.getAttribute("loginUser");
		vo.setUserId(loginUser.getUserId());
		int result = pickedService.insertPicked(vo);
		if(result == 1) {
			System.out.println(">> 찜 추가 성공");
			return true;
		} else {
			System.out.println(">> 찜 추가 실패");
			return false;
		}
		
	}
	
	// 찜하기 삭제
	@RequestMapping("/deletePicked.do")
	public boolean deletePicked(PickedVO vo, HttpSession session) {
		System.out.println(">> PickedAjaxController.deletePicked() 실행");
		System.out.println(">> vo 확인 : " + vo);
		// 세션에 저장된 로그인 정보에서 id 꺼내쓰기
		UsersVO loginUser = (UsersVO)session.getAttribute("loginUser");
		vo.setUserId(loginUser.getUserId());
		int result = pickedService.deletePicked(vo);
		if(result == 1) {
			System.out.println(">> 찜 삭제 성공");
			return true;
		} else {
			System.out.println(">> 찜 삭제 실패");
			return false;
		}
	}

}
