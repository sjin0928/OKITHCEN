package com.spring.biz.view.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.biz.picked.PickedService;
import com.spring.biz.picked.PickedVO;
import com.spring.biz.product.ProductVO;
import com.spring.biz.user.UserService;
import com.spring.biz.user.UsersVO;


@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired PickedService pickedService;
	
	public UserController() {
		System.out.println(">> UserController() 객체 생성");
	}
	
	// 메인 -> 회원가입 버튼 클릭 시 회원가입 페이지로 이동 (단순 페이지 이동 시 @GetMapping 사용)
	@GetMapping("/goJoinPage.do") 
	public String goJoinPage() {
		return "user/joinUser";
	}
	
	// 메인 -> 로그인 버튼 클릭 시 로그인 페이지로 이동 
	@GetMapping("/goUserLoginPage.do") 
	public String goUserLoginPage() {
		return "user/userLogin";
	}
	
	// 메인 -> 마이페이지 클릭 시 마이페이지로 이동
	@GetMapping("/goUserMyPage.do")
	public String goUserMyPage(Model model,HttpSession session) {
		// 찜한 상품 리스트 조회 
		UsersVO vo = (UsersVO)session.getAttribute("loginUser");
		List<PickedVO> pickedList = userService.getPickedList(vo);
		
		List<ProductVO> pickedProductList = new ArrayList<>();
		
		// productId로 해당 상품 정보 꺼내기 
		for(PickedVO pickedProduct : pickedList) {
			ProductVO getPickedProduct = userService.getPickedProduct(pickedProduct.getProductId());
			pickedProductList.add(getPickedProduct);
		}
		int pickedListCount = pickedList.size();
		
		session.setAttribute("pickedListCount", pickedListCount); // 찜한 상품 갯수
		
		
		
		return "user/userMyPageMain";
	}
	
	// 로그아웃 (메인페이지 이동)
	@RequestMapping("/userLogout.do")
	public String userLogout(HttpSession session) {
		System.out.println(">> user 로그아웃 처리");
		//session.invalidate();
		session.removeAttribute("loginUser"); // 로그인 회원정보만 세션 지우기 위해 사용함 
		
		return "redirect:/index.do";
	}
	
	// 아이디 찾기 페이지 이동
	@GetMapping("/goFindIdPage.do") 
	public String goFindIdPage() {
		return "user/findUserId";
	}
	
	//비밀번호 찾기 페이지 이동
	@GetMapping("/goFindPwdPage.do") 
	public String goFindPwdPage() {
		return "user/findUserPassword";
	}
	
	// 마이페이지 -> 개인정보수정(비밀번호 입력하는 곳)으로 이동
	@GetMapping("/modifyConfirm.do")
	public String modifyConfirm() {
		return "user/modifyConfirm";
	}
	
	// 마이페이지 -> 찜한상품으로 이동 
	   @GetMapping("/userLikedListPage.do")
	   public String userLikedListPage(Model model,HttpSession session) {
	      // 찜한 상품 리스트 조회 
	      UsersVO vo = (UsersVO)session.getAttribute("loginUser");
	      List<PickedVO> pickedList = userService.getPickedList(vo);
	      List<ProductVO> pickedProductList = new ArrayList<>();
	      
	      int pickedListCount = (pickedList != null) ? pickedList.size() : 0;

	       if (pickedList != null) {
	           for (PickedVO pickedProduct : pickedList) {
	               ProductVO getPickedProduct = userService.getPickedProduct(pickedProduct.getProductId());
	               pickedProductList.add(getPickedProduct);
	           }
	       }
	      
	      session.setAttribute("pickedListCount", pickedListCount); // 찜한 상품 갯수
	      session.setAttribute("pickedProductList", pickedProductList); // 찜한 상품 리스트
	      
	      return "user/userLikedList";
	   }
	
	// 비밀번호 확인 -> 개인정보수정 페이지로 이동
	@GetMapping("/goUserMyPageModify.do")
	public String goUserMyPageModify() {
		return "user/userMyPageModify";
	}
	
	// 개인정보수정 -> 탈퇴하기 페이지 
	@GetMapping("/goUserWithdraw.do")
	public String goUserWithdraw() {
		return "user/userWithdraw";
	}
	
	//회원탈퇴 (메인 페이지 이동)
	@RequestMapping("/userWithdraw.do")
	public String userWithdraw(HttpSession session) {
		UsersVO loginUser = (UsersVO)session.getAttribute("loginUser"); // 현재 로그인 정보
		System.out.println(">> 탈퇴할 회원 : " + loginUser);
		
		int result = userService.updateUserStatus(loginUser);
		System.out.println(">> 탈퇴 결과 (1 성공) " + result);
		session.removeAttribute("loginUser"); // 탈퇴 + 로그아웃 처리 
		
		return "redirect:/index.do";
	}
	
    // 찜하기 삭제
	@RequestMapping("/deletePickedInList.do")
	public String deletePickedInList(PickedVO vo, HttpSession session) {
		System.out.println(">> PickedAjaxController.deletePicked() 실행");
		System.out.println(">> vo 확인 : " + vo);
		// 세션에 저장된 로그인 정보에서 id 꺼내쓰기
		UsersVO loginUser = (UsersVO)session.getAttribute("loginUser");
		vo.setUserId(loginUser.getUserId());
		int result = pickedService.deletePicked(vo);
		if(result == 1) {
			System.out.println(">> 찜 삭제 성공");
			return "redirect:userLikedListPage.do";
		} else {
			System.out.println(">> 찜 삭제 실패");
			return "redirect:userLikedListPage.do";
		}
	}
}
