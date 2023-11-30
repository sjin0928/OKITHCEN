package com.spring.biz.review.imple;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.inquiry.imple.InquiryDAO;
import com.spring.biz.product.ProductVO;
import com.spring.biz.review.ReviewService;
import com.spring.biz.review.ReviewVO;
import com.spring.biz.inquiry.InquiryVO;
import com.spring.biz.vo.OptionsVO;
import com.spring.biz.vo.OrdersVO;

// @Service : @Component 상속 확장 어노테이션
// 비즈니스 로직 처리 서비스 영역에 사용
@Service("ReviewService")
public class ReviewServiceImpl implements ReviewService{
	@Autowired //타입이 일치하는 객체(인스턴스) 주입
	private ReviewDAO reviewDAO;
	@Autowired //타입이 일치하는 객체(인스턴스) 주입
	private InquiryDAO inquiryDAO;

	public ReviewServiceImpl() {
		System.out.println(">> ReviewServiceImpl() 객체 생성");
	}
	
	//리뷰 저장
	@Override
	public void insertReview(ReviewVO vo) {
		reviewDAO.insertReview(vo);
	}
	
	//리뷰 사진 리스트조회
	@Override
	public List<ReviewVO> getPhotoList(ReviewVO vo) {
		return reviewDAO.getPhotoList(vo);
	}
	
	//리뷰작성시 상품정보조회
	@Override
	public ProductVO getProductOne(ProductVO vo) {
		return reviewDAO.getProductOne(vo);
	}

	/*
	 * //전체 리뷰리스트 조회
	 * 
	 * @Override public List<ReviewVO> getReviewList(Map<String, Integer> map) {
	 * return reviewDAO.getReviewList(map); }
	 */
	
	//총 리뷰개수 구하기
	@Override
	public int getCount() {
		return reviewDAO.getCount();
	}

	@Override
	public List<ProductVO> getableReview(String userId) {
		return reviewDAO.getableReview(userId);
	}

	@Override
	public List<ProductVO> getwriteReview(String userId) {
		return reviewDAO.getwriteReview(userId);
	}
	
	@Override
	public void updateReviewStatus(ReviewVO vo) {
		reviewDAO.updateReviewStatus(vo);
	}

	//리뷰수정 시 전에 썼던 내용 조회
	@Override
	public ReviewVO reviewUpdateView(ReviewVO vo) {
		return reviewDAO.reviewUpdateView(vo);
	}
	
	//리뷰수정
	@Override
	public void reviewUpdate(ReviewVO vo) {
		reviewDAO.reviewUpdate(vo);
	}
	
	//문의수정 시 전에 썼던 내용 조회
	@Override
	public InquiryVO inquiryUpdateView(InquiryVO ivo) {
		System.out.println("문의수정 implement조회");
		return inquiryDAO.inquiryUpdateView(ivo);
	}
	
	//해당 상품의 후기 총 개수
	@Override
	public String reviewCount(ReviewVO vo) {
		System.out.println("문의수정 implement조회");
		return  reviewDAO.reviewCount(vo);
	}
	//리뷰리스트 조회
	@Override
	public List<ReviewVO> getReviewList(ReviewVO vo) {
		return reviewDAO.getReviewList(vo);
	}


	




}
