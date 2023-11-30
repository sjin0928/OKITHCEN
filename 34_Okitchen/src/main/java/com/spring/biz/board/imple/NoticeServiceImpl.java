package com.spring.biz.board.imple;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.board.NoticeService;
import com.spring.biz.board.NoticeVO;
import com.spring.biz.inquiry.InquiryService;
import com.spring.biz.product.ProductVO;
import com.spring.biz.review.ReviewService;
import com.spring.biz.review.ReviewVO;
import com.spring.biz.vo.InquiryAnsVO;
import com.spring.biz.vo.OptionsVO;
import com.spring.biz.vo.OrdersVO;

// @Service : @Component 상속 확장 어노테이션
// 비즈니스 로직 처리 서비스 영역에 사용
@Service("NoticeService")
public class NoticeServiceImpl implements NoticeService{
	@Autowired //타입이 일치하는 객체(인스턴스) 주입
	private NoticeDAO noticeDAO;

	public NoticeServiceImpl() {
		System.out.println(">> InquiryServiceImpl() 객체 생성");
	}

	//고객센터 페이지에서 공지사항 조회
	@Override
	public List<NoticeVO> getNoticeList(NoticeVO vo) {
		return noticeDAO.getNoticeList(vo);
	}
	
	//공지사항 상세조회
	@Override 
	public NoticeVO noticeDetail(NoticeVO vo) { 
		return noticeDAO.noticeDetail(vo);
	
	}
	
	//공지사항 총 개수 구하기(페이징)
	@Override
	public Double noticeCount() {
		return noticeDAO.noticeCount();
	}
	
	//공지사항 등록
	@Override
	public void noticeInsert(NoticeVO vo) {
		noticeDAO.noticeInsert(vo);
		
	}

	//수정페이지 이동 시 전에 썼던 글 조회
	@Override
	public NoticeVO updateNoticeView(NoticeVO vo) {
		return noticeDAO.updateNoticeView(vo);
	}

	//공지사항 수정
	@Override
	public void noticeUpdate(NoticeVO vo) {
		noticeDAO.noticeUpdate(vo);
		
	}

	//공지사항 삭제
	@Override
	public void deleteNotice(NoticeVO vo) {
		noticeDAO.deleteNotice(vo);
		
	}






}
