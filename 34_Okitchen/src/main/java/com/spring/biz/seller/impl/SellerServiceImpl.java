package com.spring.biz.seller.impl;

import java.util.List;
import java.util.Map;

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

	@Override
	public void insertSeller(SellerVO vo) {
		sellerDAO.insertSeller(vo);
	}
	
	@Override
	public SellerVO findPwSeller(SellerVO vo) {
		return sellerDAO.findPwSeller(vo);
	}
	
	@Override
	public SellerVO findIdSeller(SellerVO vo) {
		return sellerDAO.findIdSeller(vo);
	}
	
	@Override
	public void updatePwSeller(SellerVO vo) {
		sellerDAO.updatePwSeller(vo);
	}

	@Override
	public void updateSeller(SellerVO vo) {
		sellerDAO.updateSeller(vo);
	}

	@Override
	public void updateSellerStatus(SellerVO vo) {
		sellerDAO.updateSellerStatus(vo);
		
	}

	@Override
	public List<SellerVO> getSellerList(Map<String, Integer> pMap) {

		return sellerDAO.getSellerList(pMap);
	}
	@Override
	public int getSellerCount() {
		return sellerDAO.getSellerCount();
	}
	
	//---cho ---
	@Override
	public SellerVO selectOneSel(String sellerId) throws Exception {
		return sellerDAO.selectOneSel(sellerId);
	}

	@Override
	public int getSellerFindregistNum(SellerVO vo) {
		return sellerDAO.sellerFindregistNum(vo);
	}
}
