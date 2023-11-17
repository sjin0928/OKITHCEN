package com.spring.biz.seller.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.seller.SellerVO;
@Repository
public class SellerDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public SellerDAO() {
		System.out.println("-------SellerDAO() 실행");
	}
	
	public SellerVO getSeller(SellerVO vo) {
		return mybatis.selectOne("sellerDAO.getSeller", vo);
	}

	public int sellerIdCheck(SellerVO vo) {
		return mybatis.selectOne("sellerDAO.sellerIdCheck", vo);
	}
}
