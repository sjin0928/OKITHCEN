package com.spring.biz.product;

import java.util.List;


public interface ProductService {
	//[판매자]상품등록 -------------------
	void registerProduct(RegisterProdVO vo) throws Exception; //판매자의 상품등록
	void registerProductFile(RegisterProdVO vo) throws Exception; //사진등록
	//[판매자]상품조회 -------------------
	List<RegisterProdVO> selectListSelProd(Object obj) throws Exception; //판매자의 내 상품목록 보기
	RegisterProdVO selectOneProd(int productId) throws Exception; //판매자의 내 상품 상세보기
	List<ProductImageVO> selectDetailImages(int productId) throws Exception; //상품 상세사진 가져오기
	
	
	//[메인]상품조회 -------------------
	List<RegisterProdVO> selectAllList() throws Exception; //모든 상품리스트 가져오기 (미사용)
	List<RegisterProdVO> selectAcceptList() throws Exception; //최근 등록순으로 조회
	List<RegisterProdVO> selectLowPriceList() throws Exception; //낮은 가격순으로 조회
	List<RegisterProdVO> selectDiscList() throws Exception; //할인율 높은순으로 조회
	List<RegisterProdVO> selectBestList() throws Exception; //판매량 높은순으로 조회
	List<RegisterProdVO> selectCategoryList(String category); //카테고리별 조회
	
	// 통합검색 -------------------
	List<RegisterProdVO> selectSearchList(String keyword);
	
	//리뷰갯수 가져오기 -------------------
	String reviewCount(RegisterProdVO vo) throws Exception;
	List<RegisterProdVO> selectReviewList() throws Exception;
	
	//231127 - 박수진
	// 상품수정
	void sellerUpdateProduct(RegisterProdVO inProdVO) throws Exception;
	void sellerUpdateProductImage(RegisterProdVO inProdVO) throws Exception;
	// 상품 이미지 삭제
	void deleteProductImage(int imageId);
	// 상품 상태 수정
	void productStatusUpdate(RegisterProdVO vo);
	
	
}
