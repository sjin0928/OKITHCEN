package com.spring.biz.view.cart;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.spring.biz.cart.CartService;
import com.spring.biz.cart.CartVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.ProductVO;
import com.spring.biz.user.UsersVO;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
	@Qualifier("cartService")
	private CartService cartService;

	public CartController(CartService cartService) {
		System.out.println(">> CartController(cartService) 객체 생성");
		this.cartService = cartService;
	}

	// 장바구니 상품 담기
		// 1. 장바구니 담기 전 조회
		@RequestMapping("/getProductId.do")
		public String getProductId(ProductVO product, HttpSession session, Model model) {
			System.out.println("product : " + product);
			ProductVO existingProduct = cartService.getProduct(product);
			//session.setAttribute("existingProduct", existingProduct);
			model.addAttribute("existingProduct",existingProduct);
			System.out.println(existingProduct);
			return "/cart/inputCart";
		}
		
		//2. 장바구니에 담기  //noDetail
		@RequestMapping("/insertCartInDetail.do")
		public void insertCartInDetail(CartVO cart, Model model, HttpSession session) {
		   System.out.println(".> 실행");
			// System.out.println(">> product : " + product);
		    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");
		    String userId = loginUser.getUserId();

		    //CartVO cart = new CartVO();
		    System.out.println(">> cart : " + cart);
		   cart.setUserId(userId);
		   // cart.setProductId(product.getProductId());
		    //cart.setProductId(cart.getProductId());

		    CartVO carts = cartService.getCarts(cart);
		    System.out.println(">> carts : " + carts);
		    if (carts != null ) {
		    	cart.setQuantity(carts.getQuantity() + cart.getQuantity());
		    	cartService.updateCnt(cart);
		    } else {
		    	cart.setQuantity(cart.getQuantity());
		    	cartService.insertCartItem(cart);
		    }
		    //return "redirect:/index.do";
		}
		
		//2. 장바구니에 담기  //noDetail
		@RequestMapping("/insertCart.do")
		public String insertCart(CartVO cart, Model model, HttpSession session) {
			System.out.println(".> 실행");
			UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");
			String userId = loginUser.getUserId();
			
			System.out.println(">> cart : " + cart);
			cart.setUserId(userId);
			
			CartVO carts = cartService.getCarts(cart);
			System.out.println(">> carts : " + carts);
			if (carts != null ) {
				cart.setQuantity(carts.getQuantity() + cart.getQuantity());
				cartService.updateCnt(cart);
			} else {
				cart.setQuantity(cart.getQuantity());
				cartService.insertCartItem(cart);
			}
			return "redirect:/index.do";
		}

		
	
	// 장바구니 목록 조회
	@RequestMapping("/getCart.do")
	public String getCart(HttpSession session, Model model, CartVO cartItem, UsersVO user) {
		
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");
		
		String userId = loginUser.getUserId();
		cartItem.setUserId(userId);

		System.out.println(">> cartItem : " + cartItem);

		List<CartVO> cart = cartService.getCart(cartItem);
		System.out.println(">> cart : " + cart);

		int originalTotal = 0;
		int discountTotal = 0;

		for (CartVO vo : cart) {
			originalTotal += (vo.getPrice() * vo.getQuantity());
			discountTotal += (vo.getPrice() * vo.getQuantity() * vo.getDiscountRate());
		}

		model.addAttribute("cart", cart);
		model.addAttribute("user", loginUser);
		model.addAttribute("originalTotal", originalTotal);
		model.addAttribute("discountTotal", discountTotal / 100);

		return "/cart/cart";

	}

	// 장바구니에서 선택한 항목 삭제 -> x 버튼 클릭 시
	@RequestMapping("/deleteCartItem.do")
	public String deleteCartItem(CartVO cartItem, SessionStatus session) {
		cartService.deleteCartItem(cartItem);
		return "redirect:getCart.do";
	}
	
	// 주문하기 버튼 클릭시 주문서 페이지로 이동
	@RequestMapping("/goOrderForm.do")
	public String goOrderForm(HttpSession session, CartVO vo) {
		List<CartVO> cartList = (List<CartVO>) session.getAttribute("cartList");
	    
	    System.out.println("cartList : " + cartList);
	    
	    return "/cart/orderCheckout";
	}
	
	//+ or - 버튼 클릭 시 
	@RequestMapping("/updateCnt.do")
	public String updateCnt(CartVO cartItem) {
		cartService.updateCnt(cartItem);
		return "redirect:getCart.do";
	}
	
	//----------마이페이지
	@RequestMapping("/goUserMyPage.do")
	public String myPage(UsersVO user) {
		return "/user/userMyPageMain";
	}
}
