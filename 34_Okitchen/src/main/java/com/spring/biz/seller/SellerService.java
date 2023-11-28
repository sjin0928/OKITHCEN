package com.spring.biz.seller;

import java.util.List;
import java.util.Map;

public interface SellerService {
	SellerVO getSeller (SellerVO vo);
	int sellerIdCheck (SellerVO vo);
	void insertSeller (SellerVO vo);
	SellerVO findPwSeller (SellerVO vo);
	SellerVO findIdSeller (SellerVO vo);
	void updatePwSeller (SellerVO vo);
	void updateSeller(SellerVO vo);
	void updateSellerStatus(SellerVO vo);
	List<SellerVO> getSellerList(Map<String, Integer> pMap);
	int getSellerCount();
	//--------(cho)
	SellerVO selectOneSel(String sellerId) throws Exception; //판매자 정보 가져오기
	int getSellerFindregistNum(SellerVO vo);
}
