package com.spring.biz.view.seller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	@RequestMapping("/sellerLogin.do")
	@ResponseBody
	public boolean sellerLogin (@RequestBody SellerVO vo, Model model) {
		System.out.println("login");
		System.out.println("입력정보 : " + vo);

		SellerVO sellerVO = sellerService.getSeller(vo);
				System.out.println("db정보 : " + sellerVO);
		
		if(sellerVO != null) {
			if(sellerVO.getSellerStatus().equals("회원")) {
				
				System.out.println(">> 로그인 성공");
				model.addAttribute("sellerVO", sellerVO);
							
				return true;
			} else if(sellerVO.getSellerStatus().equals("정지")) {
				
				return false;
			}

		} 
		System.out.println(">> 로그인 실패");
		return false;
		
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
		vo.setSellerStatus("회원");
		sellerService.insertSeller(vo);
		System.out.println(vo);
		return "redirect:/sellerLogin.jsp";
	}
	// 아이디/비밀번호 찾기 페이지로 이동
	@GetMapping("/sellerFindIdGo.do")
	public String sellerFindIdGo () {

		return "seller/sellerIdFind";
	}
	@GetMapping("/sellerFindPwGo.do")
	public String sellerFindPwGo () {
		
		return "seller/sellerPwFind";
	}
	// 아이디 찾기
	@PostMapping("/sellerFindId.do")
	public String sellerFindId (SellerVO vo, Model model) {
		System.out.println(">> 아이디, 비밀번호 찾기 중");
		System.out.println("vo : " + vo);

		model.addAttribute("sellerId", null);
		SellerVO findVO = sellerService.findIdSeller(vo);
		StringBuilder sellerId = null;
		if(findVO != null) {
			System.out.println(">> 아이디 찾기 중");
			System.out.println("findVO : " + findVO);
			sellerId = new StringBuilder(findVO.getSellerId().substring(0, 3));
			System.out.println(sellerId);
			int length = findVO.getSellerId().length();
			System.out.println(length);
			for(int i = 4; i <= length; i++) {
				sellerId.append("*");
			}
			model.addAttribute("sellerId", sellerId);
			
			return "seller/sellerFindResult";
		} else {
			System.out.println();
			model.addAttribute("findVO", findVO);
			
			return "seller/sellerFindResult";
		}
			
	}
	// 비밀번호 찾기
		@PostMapping("/sellerFindPw.do")
		public String sellerFindPw (SellerVO vo, Model model) {
			System.out.println(">> 아이디, 비밀번호 찾기 중");
			System.out.println("vo : " + vo);
			//아이디 찾기
			SellerVO findVO = sellerService.findPwSeller(vo);
			if (vo.getSellerId() != null) {
				System.out.println(">> 비밀번호 찾기 중");
				System.out.println("vo.getSellerId() : " + vo.getSellerId());
				
				System.out.println("findVO : " + findVO);
				
				if(findVO != null) {
					model.addAttribute("findVO", findVO);
					return "seller/sellerFindUpdate";
					
				} else {
					model.addAttribute("findVO", findVO);
					return "seller/sellerFindResult";
				}
			} else {
				model.addAttribute("findVO", findVO);
				return "seller/sellerFindResult";
			}
		}
	// 비밀번호 찾기 후 변경
	@PostMapping("/sellerPwUpdate.do")
	public String sellerPwUpdate (SellerVO vo, Model model) {
		System.out.println(">> 비밀번호 찾기 후 변경 중");
		System.out.println("vo : " + vo);
				
		sellerService.updatePwSeller(vo);
		model.addAttribute("sellerId", vo.getSellerId());
		return "seller/sellerFindUpResult";
	}
	// 로그아웃
	@GetMapping("/sellerLogout.do")
	public String sellerLogout (SessionStatus session) {
				
		session.setComplete();
		
		return "redirect:/sellerLogin.jsp";
	}
	// 회원 정보 수정 전 비밀번호 확인 페이지 이동
	@GetMapping ("/sellerUpPwCheck.do")
	public String sellerUpPwCheck () {
		return "seller/sellerUpPwCheck";
	}
	@RequestMapping ("/sellerUpPwCheck.do")
	@ResponseBody
	public boolean sellerUpPwCheck (@RequestBody SellerVO vo, HttpServletRequest request) {
		HttpSession httpSession = request.getSession(false);
		
		SellerVO sessionVO = (SellerVO)httpSession.getAttribute("sellerVO"); 
		String inPw = vo.getSellerPassword();
		String inId = vo.getSellerId();
		String sessionPw = sessionVO.getSellerPassword();
		String sessionId = sessionVO.getSellerId();
		boolean result = inId.equals(sessionId) && inPw.equals(sessionPw);
		if(result) {
			return result;
		}
		return result;
	}
	
	//회원 정보 수정
	@RequestMapping ("/sellerUpdate.do")
	@ResponseBody
	public boolean sellerUpdate (@RequestBody(required = false) SellerVO vo, Model model) {
		
		System.out.println("입력 받은 데이터 : " + vo);
		sellerService.updateSeller(vo);
		
		SellerVO sellerVO = sellerService.getSeller(vo);
		model.addAttribute("sellerVO", sellerVO);
		
		boolean response = true;
		
		return response;
	}
	
	// 회원 정보 수정 이동
	@GetMapping ("/sellerUpdateGo.do")
	public String sellerUpdate () {
		return "seller/sellerUpdate";
	}
	
	// 회원 탈퇴 페이지 이동
	@GetMapping ("/sellerWithdrawal.do")
	public String sellerWithdrawal () {
		return "seller/sellerWithdrawal";
	}
	@RequestMapping ("/sellerWithdrawal.do")
	@ResponseBody
	public void sellerWithdrawal (@RequestBody SellerVO vo, HttpServletRequest request, SessionStatus session) {
		HttpSession httpSession = request.getSession(false);
		SellerVO sessionVO = (SellerVO)httpSession.getAttribute("sellerVO");
		String sessionId = sessionVO.getSellerId();
		String sessionPw = sessionVO.getSellerPassword();
		String InId = vo.getSellerId();
		String InPw = vo.getSellerPassword();
		if(sessionId.equals(InId) && sessionPw.equals(InPw)) {
			vo.setSellerStatus("정지");
			sellerService.updateSellerStatus(vo);
			session.setComplete();
		}
	}
	
	// 상품리스트 페이지로 이동 (중복시 삭제)
	@GetMapping ("/productList.do")
	public String productList () {
		return "seller/productList";
	}
	
	@GetMapping ("/adminSellerGo.do")
	public String getSellerList () {
		SellerVO list = sellerService.getSellerList();
		
		return "admin/adminSellerList";
	}
}
