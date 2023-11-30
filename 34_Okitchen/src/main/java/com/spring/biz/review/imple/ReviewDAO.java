package com.spring.biz.review.imple;

import java.util.List;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.product.ProductVO;
import com.spring.biz.review.ReviewVO;
import com.spring.biz.vo.OptionsVO;
import com.spring.biz.vo.OrdersVO;


@Repository
public class ReviewDAO {
	//@Autowired
	private static SqlSessionTemplate mybatis;
	
	public ReviewDAO() {
		System.out.println(">>> ReviewDAO() 객체 생성");
	}
	@Autowired
	public ReviewDAO(SqlSessionTemplate mybatis) {
		System.out.println(">>> ReviewDAO(SqlSessionTemplate) 객체 생성");
		this.mybatis = mybatis;
	}
	
	//리뷰입력
	public static void insertReview(ReviewVO vo) {
		System.out.println("===> MyBatis JDBC로 insertReview() 실행");
		mybatis.insert("reviewDAO.insertReview", vo);
	}
	
	//리뷰 사진 조회
	public static List<ReviewVO> getPhotoList(ReviewVO vo) {
		System.out.println("===> MyBatis JDBC로 getPhotoList() 실행");
		return mybatis.selectList("reviewDAO.getPhotoList", vo);
	}
	
	//리뷰조회
	public static List<ReviewVO> getReviewList(ReviewVO vo) {
		System.out.println("===> MyBatis JDBC로 getReviewList() 실행");
		return mybatis.selectList("reviewDAO.getReviewList", vo);
	}
	
	//리뷰개수 구하기
	public static int getCount() {
		System.out.println("===> MyBatis JDBC로 getCount() 실행");
		return mybatis.selectOne("reviewDAO.getCount");
	}

	//리뷰작성시 상품에 대한 정보조회
	public static ProductVO getProductOne(ProductVO vo) {
		System.out.println("===> MyBatis JDBC로 getProductOne() 실행");
		return mybatis.selectOne("reviewDAO.getProductOne", vo);
	}

	//리뷰수정 시 전에 수정했던 내용 조회
	public static ReviewVO reviewUpdateView(ReviewVO vo) {
		System.out.println("===> MyBatis JDBC로 reviewUpdateView() 실행");
		return mybatis.selectOne("reviewDAO.reviewUpdateView", vo);
	}
	
	//리뷰수정
	public static void reviewUpdate(ReviewVO vo) {
		System.out.println("===> MyBatis JDBC로 reviewUpdate() 실행");
		mybatis.update("reviewDAO.reviewUpdate", vo);
	}
	
	//후기작성가능한 상품조회
	public static  List<ProductVO> getableReview(String userId) {
		System.out.println("===> MyBatis JDBC로 getableReview() 실행");
		return mybatis.selectList("reviewDAO.getableReview", userId);
	}
	
	//작성한후기 상품조회
	public static  List<ProductVO> getwriteReview(String userId) {
		System.out.println("===> MyBatis JDBC로 getwriteReview() 실행");
		return mybatis.selectList("reviewDAO.getwriteReview", userId);
	}
	
	//orders테이블에 리뷰상태값 등록
	public void updateReviewStatus(ReviewVO vo) {
		System.out.println("===> MyBatis JDBC로 updateReviewStatus() 실행");
		System.out.println("리뷰상태값 변경 vo : " + vo);
		mybatis.insert("reviewDAO.updateReviewStatus", vo);
	}
	//해당 상품의 총 후기 개수
	public String reviewCount(ReviewVO vo) {
		System.out.println("===> MyBatis JDBC로 reviewCount() 실행");
		return mybatis.selectOne("reviewDAO.reviewCount", vo);
	}
	

}
