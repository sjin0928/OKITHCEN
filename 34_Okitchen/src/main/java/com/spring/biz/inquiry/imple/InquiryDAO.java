package com.spring.biz.inquiry.imple;

import java.util.List;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.board.NoticeVO;
import com.spring.biz.product.ProductVO;
import com.spring.biz.review.ReviewVO;
import com.spring.biz.seller.SellerVO;
import com.spring.biz.inquiry.InquiryAnsVO;
import com.spring.biz.inquiry.InquiryVO;
import com.spring.biz.vo.OptionsVO;
import com.spring.biz.vo.OrdersVO;

@Repository
public class InquiryDAO {
	// @Autowired
	private static SqlSessionTemplate mybatis;

	public InquiryDAO() {
		System.out.println(">>> InquiryDAO() 객체 생성");
	}

	@Autowired
	public InquiryDAO(SqlSessionTemplate mybatis) {
		System.out.println(">>> InquiryDAO(SqlSessionTemplate) 객체 생성");
		this.mybatis = mybatis;
	}

	// 문의 등록
	public void insertInquiry(InquiryVO vo) {
		System.out.println("===> MyBatis JDBC로 insertInquiry() 실행");
		mybatis.insert("inquiryDAO.insertInquiry", vo);
	}

	// 상품문의 리스트 조회
	public List<InquiryVO> inquiryList(InquiryVO vo) {
		System.out.println("===> MyBatis JDBC로 inquiryList() 실행");
		return mybatis.selectList("inquiryDAO.inquiryList", vo);
	}

	// 문의수정 시 전에 썼던내용 조회
	public InquiryVO inquiryUpdateView(InquiryVO ivo) {
		return mybatis.selectOne("inquiryDAO.inquiryUpdateView", ivo);
	}

	// 상품문의 수정
	public void updateInquiry(InquiryVO vo) {
		System.out.println("===> MyBatis JDBC로 updateInquiry() 실행");
		mybatis.update("inquiryDAO.updateInquiry", vo);
	}

	// 상품문의 삭제
	public void deleteInquiry(InquiryVO vo) {
		System.out.println("===> MyBatis JDBC로 deleteInquiry() 실행");
		mybatis.update("inquiryDAO.deleteInquiry", vo);
	}

	// 마이페이지 - 상품문의 리스트 조회
	public List<InquiryVO> MyInquiry(InquiryVO vo) {
		System.out.println("===> MyBatis JDBC로 MyInquiry() 실행");
		return mybatis.selectList("inquiryDAO.MyInquiry", vo);
	}

	// 판매자페이지 - '답변대기'상태 상품문의 리스트 조회
	public List<InquiryVO> SellerinquiryList(SellerVO vo) {
		System.out.println("===> MyBatis JDBC로 SellerinquiryList() 실행");
		return mybatis.selectList("inquiryDAO.SellerinquiryList", vo);
	}

	// 판매자페이지 - '답변완료'상태 상품문의 리스트 조회
	public List<InquiryVO> SellerinquiryAnsList(SellerVO vo) {
		System.out.println("===> MyBatis JDBC로 SellerinquiryAnsList() 실행");
		return mybatis.selectList("inquiryDAO.SellerinquiryAnsList", vo);
	}

	// 문의 답변 시 문의 내용 표시
	public InquiryVO getinquiryOne(InquiryVO vo) {
		System.out.println("===> MyBatis JDBC로 getinquiryOne() 실행");
		return mybatis.selectOne("sellerDAO.getinquiryOne", vo);
	}

	// 문의 답변등록
	public void inqAnsInsert(InquiryAnsVO avo) {
		System.out.println("===> MyBatis JDBC로 inqAnsInsert() 실행");
		mybatis.insert("sellerDAO.inqAnsInsert", avo);
	}

	// 문의답변여부 수정
	public void inqAnswered(InquiryVO vo) {
		System.out.println("===> MyBatis JDBC로 inqAnswered() 실행");
		mybatis.update("sellerDAO.inqAnswered", vo);
	}

	// 문의답변 조회
	public InquiryAnsVO inquiryAns(String inqId) {
		System.out.println("===> MyBatis JDBC로 inquiryAns() 실행");
		return mybatis.selectOne("inquiryDAO.inquiryAns", inqId);

	}

	// 문의답변수정
	public void inqAnsUpdate(InquiryAnsVO avo) {
		System.out.println("===> MyBatis JDBC로 inqAnsUpdate() 실행");
		mybatis.update("sellerDAO.inqAnsUpdate", avo);
	}

	// 문의답변 수정 시 문의답변내용을 가져옴
	public InquiryAnsVO getinquiryAnsOne(InquiryAnsVO avo) {
		System.out.println("===> MyBatis JDBC로 getinquiryAnsOne() 실행");
		return mybatis.selectOne("sellerDAO.getinquiryAnsOne", avo);
	}

	// 문의답변삭제
	public void deleteInquiryAns(InquiryVO vo) {
		System.out.println("===> MyBatis JDBC로 deleteInquiryAns() 실행");
		
		mybatis.selectOne("sellerDAO.deleteInquiryAns", vo);

	}
	//문의글 총 개수구하기
	public Double inquiryCount(InquiryVO vo) {
		return mybatis.selectOne("inquiryDAO.inquiryCount", vo); 
	}

	//문의삭제시 상태 업데이트
	public void inqAnsweredUpdate(InquiryVO vo) {
		mybatis.update("sellerDAO.inqAnsweredUpdate", vo);
		
	}




}
