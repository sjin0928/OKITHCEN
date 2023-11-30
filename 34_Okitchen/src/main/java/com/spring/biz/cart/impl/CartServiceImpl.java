package com.spring.biz.cart.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.cart.CartService;
import com.spring.biz.cart.CartVO;
import com.spring.biz.product.ProductVO;

@Service("cartService")
public class CartServiceImpl implements CartService{

	@Autowired
	private CartDAO cartDAO;
	
	public CartServiceImpl() {
		System.out.println(">> cartServiceImpl()객체 생성");
	}
	
	//장바구니 담기 전 product 조회 
	@Override
	public ProductVO getProduct(ProductVO product) {
		return cartDAO.getProduct(product);
	}
	
	//장바구니 조회
	@Override
	public List<CartVO> getCart(CartVO cartItem) {
		return cartDAO.getCart(cartItem);
	}
	
	//선택한 항목 삭제 
	@Override
	public void deleteCartItem(CartVO cartItem) {
		cartDAO.deleteCartItem(cartItem);
	}
	
	//+ - 버튼 누를때 update CNT
	@Override
	public void updateCnt(CartVO cartItem) {
		cartDAO.updateCnt(cartItem);
	}

	//장바구니 담기
	@Override
	public void insertCartItem(CartVO cartItem) {
		cartDAO.insertCartItem(cartItem);
	}

	//장바구니 조회
	@Override
	public CartVO getCarts(CartVO cartItem) {
		return cartDAO.getCarts(cartItem);
	}

	

}
