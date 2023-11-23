package com.spring.biz.cart.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.cart.CartVO;
import com.spring.biz.cart.cartService;

@Service("cartService")
public class CartServiceImpl implements cartService{
	
	@Autowired
	private CartDAO cartDAO;
	
	public CartServiceImpl() {
		System.out.println(">> CartServiceImpl() 객체 생성");
	}
	
	@Override
	public void updateCnt(CartVO cartItem) throws Exception {
	}

}
