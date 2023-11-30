package com.spring.biz.view.cart;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.spring.biz.cart.CartService;
import com.spring.biz.cart.CartVO;

@RestController
public class CartAjaxController {
	private static final int Map = 0;
	private CartService cartService;
	
	@Autowired
	public CartAjaxController(CartService cartService) {
		System.out.println(">> CartController(cartService) 객체 생성");
		this.cartService = cartService;
	}
	
	// + , - 버튼 눌렀을 때 ajax 
	@PostMapping("/cart/updateQuantity.do")
	@ResponseBody
	public String updateQuantity(@RequestParam int productId, @RequestParam int quantity, CartVO cartItem) {
		System.out.println(">> dlkjsdflkfjsdk");
		cartItem.setProductId(productId);
		cartItem.setQuantity(quantity);
		cartService.updateCnt(cartItem);
		return "success";
	}
	
	@RequestMapping("/cart/orderForm.do")
	@ResponseBody
	public String goOrderForm(@RequestBody Map<String, List<Map<String, String>>> requestMap, HttpSession session) {
		List<Map<String, String>> selectedProducts = requestMap.get("selectedProducts");
	    System.out.println(">> selectedProducts : " + selectedProducts);
		
	    //System.out.println(">>selectedProducts: " + selectedProducts);
	    //System.out.println(">> goOrderForm() 선택");
	    
	    List<CartVO> cartList = new ArrayList<CartVO>();
	    for (Map<String, String> product : selectedProducts) {
	    	
	    	CartVO cart = new CartVO();
	    	cart.setProductId(Integer.parseInt(product.get("productId")));
	    	cart.setQuantity(Integer.parseInt(product.get("quantity")));
	    	cart.setPrice(Integer.parseInt(product.get("price")));
	    	cart.setTitle(product.get("title"));
	    	cart.setDiscountRate(Integer.parseInt(product.get("discountRate")));
	    	cart.setTotalAmount(Integer.parseInt(product.get("totalAmount")));
	    	cart.setImage(product.get("image"));
	    	
	    	cartList.add(cart);
	    	
	    	session.setAttribute("cartList", cartList );
	    	
	    }
	    return "success";
	}
	
}
