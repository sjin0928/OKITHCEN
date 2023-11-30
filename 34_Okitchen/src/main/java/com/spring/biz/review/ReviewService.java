package com.spring.biz.review;

import java.util.List;

import java.util.Map;

import com.spring.biz.product.ProductVO;
import com.spring.biz.inquiry.InquiryVO;
import com.spring.biz.vo.OptionsVO;
import com.spring.biz.vo.OrdersVO;

public interface ReviewService {
	//CRUD 기능 구현 메소드 정의
	void insertReview(ReviewVO vo);
	void updateReviewStatus(ReviewVO vo);
	//List<ReviewVO> getReviewList(Map<String, Integer> map);	//한페이지의 리뷰목록을 List로 리턴(페이징)
	List<ReviewVO> getReviewList(ReviewVO vo);	//리뷰 사진 리스트
	List<ReviewVO> getPhotoList(ReviewVO vo);	//리뷰 사진 리스트
	List<ProductVO> getableReview(String userId);	//후기작성 가능한 리스트
	List<ProductVO> getwriteReview(String userId);	//후기작성 가능한 리스트
	int getCount(); //작성된 리뷰의 총 개수 출력
	ProductVO getProductOne(ProductVO vo);	//리뷰작성 시 작성하는 상품정보를 나타내주기
	ReviewVO reviewUpdateView(ReviewVO vo); //리뷰수정 시 전에 작성했던 내용을 나타내주기
	void reviewUpdate(ReviewVO vo);
	InquiryVO inquiryUpdateView(InquiryVO ivo); //문의수정 시 작성했던 내용조회
	String reviewCount(ReviewVO vo); //해당 상품의 총개수 구하기
}
