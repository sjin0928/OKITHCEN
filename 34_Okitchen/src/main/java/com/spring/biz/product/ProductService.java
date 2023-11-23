package com.spring.biz.product;

import java.util.List;


public interface ProductService {
	//CRUD 기능 구현 메소드 정의
	void registerProduct(RegisterProdVO vo) throws Exception; //판매자의 상품등록
	void registerProductFile(RegisterProdVO vo) throws Exception; //사진등록
	
	List<RegisterProdVO> selectListSelProd(Object obj) throws Exception; //판매자의 내 상품목록 보기
	RegisterProdVO selectOneProd(int productId) throws Exception; //판매자의 내 상품 상세보기
	List<ProductImageVO> selectDetailImages(int productId) throws Exception; //상품 상세사진 가져오기
	
	List<RegisterProdVO> selectAllList() throws Exception; //모든 상품리스트 가져오기 (미사용)
	List<RegisterProdVO> selectAcceptList() throws Exception; //최근 등록순으로 조회
	List<RegisterProdVO> selectLowPriceList() throws Exception; //낮은 가격순으로 조회
	List<RegisterProdVO> selectDiscList() throws Exception; //할인율 높은순으로 조회
	
	
	
}
