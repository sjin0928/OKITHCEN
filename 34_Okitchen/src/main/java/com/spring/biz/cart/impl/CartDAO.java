package com.spring.biz.cart.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {
	
	@Autowired 
	private SqlSessionTemplate mybatis;
	
	public CartDAO() {
		System.out.println(">>> CartDAO() 객체 생성");
	}
	
	
	
}
