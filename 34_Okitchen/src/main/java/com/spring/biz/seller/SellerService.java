package com.spring.biz.seller;

import java.util.List;

public interface SellerService {
	SellerVO getSeller (SellerVO vo);
	int sellerIdCheck (SellerVO vo);
	void insertSeller (SellerVO vo);
	SellerVO findPwSeller (SellerVO vo);
	SellerVO findIdSeller (SellerVO vo);
	void updatePwSeller (SellerVO vo);
	void updateSeller(SellerVO vo);
	void updateSellerStatus(SellerVO vo);
	SellerVO getSellerList();
	

}
