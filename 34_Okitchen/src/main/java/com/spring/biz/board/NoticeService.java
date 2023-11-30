package com.spring.biz.board;

import java.util.List;

import java.util.Map;

import com.spring.biz.product.ProductVO;
import com.spring.biz.review.ReviewVO;
import com.spring.biz.vo.InquiryAnsVO;
import com.spring.biz.vo.OptionsVO;
import com.spring.biz.vo.OrdersVO;

public interface NoticeService {
	//CRUD 기능 구현 메소드 정의

	List<NoticeVO> getNoticeList(NoticeVO vo); //공지사항 리스트 - 고객센터페이지
	NoticeVO noticeDetail(NoticeVO vo); //문의 답변여부 수정
	Double noticeCount(); //페이징 처리를 위한 공지사항 글 총개수구하기
	void noticeInsert(NoticeVO vo); //공지사항등록
	NoticeVO updateNoticeView(NoticeVO vo); //공지사항 수정 시 전에썼던 글 조회
	void noticeUpdate(NoticeVO vo); //공지사항 수정
	void deleteNotice(NoticeVO vo); //공지사항 삭제
	
}
