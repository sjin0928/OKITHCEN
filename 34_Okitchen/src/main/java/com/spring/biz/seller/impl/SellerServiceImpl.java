package com.spring.biz.seller.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.seller.SellerService;
import com.spring.biz.seller.SellerVO;

@Service("sellerService")
public class SellerServiceImpl implements SellerService {
	
	@Autowired
	private SellerDAO sellerDAO;
	
	public SellerServiceImpl() {
		System.out.println("-----SellerServiceImpl() 실행");
	}
	
	@Override
	public SellerVO getSeller(SellerVO vo) {
		return sellerDAO.getSeller(vo);
	}
	
	@Override
	public int sellerIdCheck(SellerVO vo) {
		return sellerDAO.sellerIdCheck(vo);
	}
	
/*
	@Override
	public void insertSeller(SellerVO vo) {
		
	}

	@Override
	public void updateSeller(SellerVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteSeller(SellerVO vo) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public List<SellerVO> getSellerList(SellerVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	

	@Override
	public void insertSeller(SellerVO vo) {
		// TODO Auto-generated method stub
		
	}
	*/


}
