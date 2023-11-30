package com.spring.biz.inquiry.imple;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.board.NoticeVO;
import com.spring.biz.inquiry.InquiryService;
import com.spring.biz.product.ProductVO;
import com.spring.biz.review.ReviewService;
import com.spring.biz.review.ReviewVO;
import com.spring.biz.seller.SellerVO;
import com.spring.biz.inquiry.InquiryAnsVO;
import com.spring.biz.inquiry.InquiryVO;
import com.spring.biz.vo.OptionsVO;
import com.spring.biz.vo.OrdersVO;

// @Service : @Component 상속 확장 어노테이션
// 비즈니스 로직 처리 서비스 영역에 사용
@Service("InquiryService")
public class InquiryServiceImpl implements InquiryService{
	@Autowired //타입이 일치하는 객체(인스턴스) 주입
	private InquiryDAO inquiryDAO;

	public InquiryServiceImpl() {
		System.out.println(">> InquiryServiceImpl() 객체 생성");
	}

	//문의 등록
	@Override
	public void insertInquiry(InquiryVO vo) {
		inquiryDAO.insertInquiry(vo);
		
	}

	//상품문의 리스트 조회
	@Override
	public List<InquiryVO> inquiryList(InquiryVO vo) {
		return inquiryDAO.inquiryList(vo);
	}
	
	//상품문의수정
	@Override
	public void updateInquiry(InquiryVO vo) {
		inquiryDAO.updateInquiry(vo);
		
	}
	
	//상품문의삭제
	@Override
	public void deleteInquiry(InquiryVO vo) {
		inquiryDAO.deleteInquiry(vo);
		
	}
	
	//마이페이지 상품문의 조회
	@Override
	public List<InquiryVO> MyInquiry(InquiryVO vo) {
		return inquiryDAO.MyInquiry(vo);
	}

	//판매자페이지 '답변대기'상태 상품문의 조회
	@Override
	public List<InquiryVO> SellerinquiryList(SellerVO vo) {
		return inquiryDAO.SellerinquiryList(vo);
	}
	//판매자페이지 '답변완료'상태 상품문의 조회
	@Override
	public List<InquiryVO> SellerinquiryAnsList(SellerVO vo) {
		return inquiryDAO.SellerinquiryAnsList(vo);
	}
	//문의 답변 시 문의내용 표시
	@Override
	public InquiryVO getinquiryOne(InquiryVO vo) {
		return inquiryDAO.getinquiryOne(vo);
	}

	//상품문의답변 등록
	@Override
	public void inqAnsInsert(InquiryAnsVO avo) {
		inquiryDAO.inqAnsInsert(avo);
		
	}
	
	//문의답변여부 수정
	@Override
	public void inqAnswered(InquiryVO vo) {
		inquiryDAO.inqAnswered(vo);
		
	}
	
	//문의답변조회
	@Override
	public InquiryAnsVO inquiryAns(String inqId) {
		return inquiryDAO.inquiryAns(inqId);
	}
	//문의 답변 수정
	@Override
	public void inqAnsUpdate(InquiryAnsVO avo) {
		System.out.println("serviceImpl실행");
		inquiryDAO.inqAnsUpdate(avo);
		
	}
	
	//문의답변 수정시 문의답변내용을 가져옴
	@Override
	public InquiryAnsVO getinquiryAnsOne(InquiryAnsVO avo) {
		return inquiryDAO.getinquiryAnsOne(avo);
	}

	//문의답변삭제
	@Override
	public void deleteInquiryAns(InquiryVO vo) {
		inquiryDAO.deleteInquiryAns(vo);
		
	}
	//문의글 총 개수 구하기
	@Override
	public Double inquiryCount(InquiryVO vo) {
		return inquiryDAO.inquiryCount(vo);
	}

	@Override
	public void inqAnsweredUpdate(InquiryVO vo) {
		inquiryDAO.inqAnsweredUpdate(vo);
		
	}








}
