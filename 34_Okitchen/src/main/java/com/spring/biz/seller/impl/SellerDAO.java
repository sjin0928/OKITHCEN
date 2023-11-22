package com.spring.biz.seller.impl;

import java.util.List;

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

	public SellerVO findPwSeller(SellerVO vo) {
		return mybatis.selectOne("sellerDAO.findPwSeller", vo);
	}
	
	public SellerVO findIdSeller(SellerVO vo) {
		System.out.println(vo);
		return mybatis.selectOne("sellerDAO.findIdSeller", vo);
		
	}
	
	public int sellerIdCheck(SellerVO vo) {
		return mybatis.selectOne("sellerDAO.sellerIdCheck", vo);
	}
	
	public void insertSeller(SellerVO vo) {
		mybatis.insert("sellerDAO.insertSeller", vo);
	}

	public void updatePwSeller(SellerVO vo) {
		mybatis.update("sellerDAO.updatePwSeller", vo);
		
	}

	public void updateSeller(SellerVO vo) {
		mybatis.update("sellerDAO.updateSeller", vo);
		
	}

	public void updateSellerStatus(SellerVO vo) {
		mybatis.update("sellerDAO.updateSellerStatus", vo);
		
	}

	public SellerVO getSellerList() {
		return mybatis.selectList("sellerDAO.getSellerList");
	}

}
