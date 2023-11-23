package com.spring.biz.view.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.biz.cart.CartVO;
import com.spring.biz.cart.cartService;

@Controller
@RequestMapping("/cart")
public class cartController {
	
	private cartService cartService;
	
	public cartController() {
		System.out.println("=========> cartController 객체 생성");
	}
	
	@Autowired
	public cartController(cartService cartService) {
		System.out.println("=========> cartController(cartService) 객체 생성");
		System.out.println("::: cartService cartService : " + cartService);
		this.cartService = cartService;
	}
	
	@RequestMapping("/updateQuantity.do")
	@ResponseBody
	public String updateQuantity(@RequestParam int productId, @RequestParam int quantity, CartVO cartItem) throws Exception {
		System.out.println(">> dlkjsdflkfjsdk");
		cartItem.setProductId(productId);
		cartItem.setQuantity(quantity);
		cartService.updateCnt(cartItem);
		
		return "success";
	}
	
}
