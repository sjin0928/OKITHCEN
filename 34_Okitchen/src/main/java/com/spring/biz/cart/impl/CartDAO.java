package com.spring.biz.cart.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.cart.CartVO;
import com.spring.biz.product.ProductVO;

@Repository
public class CartDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public CartDAO() {
		System.out.println(">> cartDAO() 객체 생성");
	}
	//상품 디테일 조회
	public ProductVO getProduct(ProductVO product) {
		System.out.println(">>mybatis로 getProduct 실행");
		return mybatis.selectOne("cart.getProductDetail",product);
	}
	//장바구니에 상품 추가
	public void insertCartItem(CartVO cartItem) {
		System.out.println(">> mybatis로 insertCartItem 실행");
		mybatis.insert("cart.insertCartItem", cartItem);
	}
	
	//장바구니 조회
	public List<CartVO> getCart(CartVO cartItem) {
		System.out.println(">> mybatis로 getCart() 실행");
		return mybatis.selectList("cart.getCart", cartItem);
	}
	
	//장바구니에서 선택 항목 삭제
	public void deleteCartItem(CartVO cartItem) {
		System.out.println(">> mybatis로 deleteCartItem() 실행");
		mybatis.delete("cart.deleteSelect",cartItem);
	}
	
	//+, - 버튼 클릭 시 -> 수량수정
	public void updateCnt(CartVO cartItem) {
		System.out.println(">> mybatis로 updateCnt() 실행");
		mybatis.update("cart.updateCnt", cartItem);
	}
	//cart 조회 
	public CartVO getCarts(CartVO cartItem) {
		System.out.println(">> mybatis로 getCarts() 실행");
		return mybatis.selectOne("cart.gerProductId", cartItem);
	}
}
