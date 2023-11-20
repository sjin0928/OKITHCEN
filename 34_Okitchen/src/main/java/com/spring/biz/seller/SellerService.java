package com.spring.biz.seller;

import java.util.List;

public interface SellerService {
	SellerVO getSeller (SellerVO vo);
	SellerVO findPwSeller (SellerVO vo);
	SellerVO findIdSeller (SellerVO vo);
	int sellerIdCheck(SellerVO vo);
	void insertSeller (SellerVO vo);
	/*
	void updateSeller (SellerVO vo);
	void deleteSeller (SellerVO vo);
	
	List<SellerVO> getSellerList (SellerVO vo);
	*/

}
