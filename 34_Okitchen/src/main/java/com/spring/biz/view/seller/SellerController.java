package com.spring.biz.view.seller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.spring.biz.seller.SellerService;
import com.spring.biz.seller.SellerVO;

@Controller
@RequestMapping("seller")
@SessionAttributes("sellerVO")
public class SellerController {
	
	@Autowired
	private SellerService sellerService;

	
	public SellerController() {
		System.out.println("--------SellerController() 실행");
	}
	// 아이디 비번 입력
	@PostMapping("/sellerLogin.do")

	public String sellerLogin (SellerVO vo, Model model) {
		System.out.println("login");
		System.out.println("입력정보 : " + vo);
		if(vo.getSellerId() == null || vo.getSellerId().contentEquals("")) {
			return "seller/error";
			
		} else if(vo.getSellerPassword() == null || vo.getSellerPassword().contentEquals("")) {
			
			return "seller/error";
		}

		SellerVO sellerVO = sellerService.getSeller(vo);
		System.out.println("db정보 : " + sellerVO);
		
		if(sellerVO != null) {
			System.out.println(">> 로그인 성공");
			model.addAttribute("sellerVO", sellerVO);

			// 상품 리스트 페이지로 이동 (나중에 추가)
			return "seller/productList";
		} else {
			System.out.println(">> 로그인 실패");
			return "../../sellerLogin";
		}
	}
	// 아이디 비번 오류 발생 후 페이지 이동
	@ResponseBody
	@PostMapping("/sellerIdCheck.do")
	public int sellerIdCheck (SellerVO vo) {
		
		System.out.println(">> 아이디 확인중");
		System.out.println(">> 입력값 : " + vo);
		int result = sellerService.sellerIdCheck(vo);
		
		if(vo.getSellerId().equals(null) || vo.getSellerId().isEmpty()) {
			result = -1;
		}
		
		System.out.println("result : " + result);
		
		return result;
	}
	// 로그인 페이지로 이동
	@GetMapping("/sellerLogin.do")
	public String sellerLogin () {
		
		return "../../sellerLogin";
	}
	// 회원가입 페이지로 이동
	@GetMapping("/sellerSignIn.do")
	public String sellerSignIn () {
		return "seller/sellerSignIn";
	}
	// 회원가입
	@PostMapping("/sellerSignIn.do")
	public String sellerSignIn (SellerVO vo) {
		System.out.println(">> 회원가입 진행");
		sellerService.insertSeller(vo);
		System.out.println(vo);
		return "redirect:/sellerLogin.jsp";
	}
	// 아이디/비밀번호 찾기 페이지로 이동
	@GetMapping("/sellerFind.do")
	public String sellerFind () {
		
		return "seller/sellerFind";
	}
	@PostMapping("/sellerFind.do")
	public String sellerFindIdPw (SellerVO vo, Model model) {
		System.out.println(">> 아이디, 비밀번호 찾기 중");
		System.out.println("vo : " + vo);
		//아이디 찾기
		if(vo.getSellerId() == null || vo.getSellerId() == "") {
			SellerVO findVO = sellerService.findIdSeller(vo);
			
			StringBuilder sellerId = new StringBuilder(findVO.getSellerId().substring(0, 3));
			System.out.println(sellerId);
			int length = findVO.getSellerId().length();
			System.out.println(length);
			for(int i = 4; i <= length; i++) {
				sellerId.append("*");
			}
			
			model.addAttribute("sellerId", sellerId);
			
			return "seller/sellerFindResult";
		// 비밀번호 찾기
		} else if (vo.getSellerId() != null) {
			SellerVO findVO = sellerService.findPwSeller(vo);
			if(findVO.getSellerPassword() != null) {
				
				model.addAttribute("sellerId", findVO.getSellerId());
				
				return "seller/sellerFindUpdate";
			}
		}
		return "seller/sellerFind";
	}
	@PostMapping("/sellerPwUpdate.do")
	public String sellerPwUpdate (SellerVO vo, Model model) {
		System.out.println(">> 비밀번호 찾기 후 변경 중");
		System.out.println("vo : " + vo);
				
		sellerService.updatePwSeller(vo);
		model.addAttribute("sellerId", vo.getSellerId());
		return "seller/sellerFindResult";
	}

}
