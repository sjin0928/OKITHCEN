package com.spring.biz.inquiry;

import java.util.List;

import com.spring.biz.seller.SellerVO;

public interface InquiryService {
	//CRUD 기능 구현 메소드 정의
	void insertInquiry(InquiryVO vo);//상품 문의 등록
	void updateInquiry(InquiryVO vo);//상품문의 수정
	void deleteInquiry(InquiryVO vo);//상품문의 삭제
	List<InquiryVO> inquiryList(InquiryVO vo); //상품 문의 리스트
	List<InquiryVO> MyInquiry(InquiryVO vo); //상품 문의 리스트 - 마이페이지
	List<InquiryVO> SellerinquiryList(SellerVO vo); //상품 문의 리스트 - 판매자페이지
	InquiryVO getinquiryOne(InquiryVO vo); //문의 답글달때 어떤 문의내용인지 표시
	void inqAnsInsert(InquiryAnsVO avo); //상품 문의 답변 등록
	void inqAnswered(InquiryVO vo); //문의 답변여부 수정
	InquiryAnsVO inquiryAns(String inqId); //문의답변 불러오기
	List<InquiryVO> SellerinquiryAnsList(SellerVO vo);//답변완료 상품문의 리스트 - 판매자페이지
	void inqAnsUpdate(InquiryAnsVO avo);//문의답변 수정
	InquiryAnsVO getinquiryAnsOne(InquiryAnsVO avo); //문의 답변 수정시 문의 답변내용을 가져옴
	void deleteInquiryAns(InquiryVO vo); //문의답변삭제
	Double inquiryCount(InquiryVO vo); //문의글 총개수구하기
	void inqAnsweredUpdate(InquiryVO vo);//문의답변삭제 시 상태값바꾸기
}
