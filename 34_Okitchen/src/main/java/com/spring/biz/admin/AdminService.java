package com.spring.biz.admin;

import java.util.List;

import com.spring.biz.product.RegisterProdVO;
import com.spring.biz.user.UsersVO;

public interface AdminService {
	// 회원 전체 리스트 조회 
	List<UsersVO> getUserList();
	
	// 회원 수 구하기 
	int getUserCount();

	List<UsersVO> getUserListPaging(int begin, int end);
	
	//----- [상품관리] ------
	//전체 상품 조회
	List<RegisterProdVO> allProdList() throws Exception;

	//승인대기 상품 조회
	List<RegisterProdVO> confirmProd() throws Exception;
	
	//(페이징)상품 수 구하기 (미사용?)
	int getProdCount() throws Exception;
	
	//(페이징)전체 상품 조회
	List<RegisterProdVO> allProdListPaging(int begin, int end) throws Exception;
	
	//(페이징)승인대기 상품 조회
	List<RegisterProdVO> confirmProdPaging(int begin, int end) throws Exception;

	//상품 승인처리
	Object approveProdStatus(int productId) throws Exception;
	
	//상품 반려처리
	Object rejectProdStatus(int productId) throws Exception;
	
	
}
