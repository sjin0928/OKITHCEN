package com.spring.biz.cart;

import java.util.List;

import com.spring.biz.product.ProductVO;

public interface CartService {
	List<CartVO> getCart(CartVO cartItem);
	void deleteCartItem(CartVO cartItem);
	void updateCnt(CartVO cartItem);
	void insertCartItem(CartVO cartItem);
	ProductVO getProduct(ProductVO product);
	CartVO getCarts(CartVO cartItem);
}
