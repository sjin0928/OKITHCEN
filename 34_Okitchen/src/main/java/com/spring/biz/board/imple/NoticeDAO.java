package com.spring.biz.board.imple;

import java.util.List;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.board.NoticeVO;
import com.spring.biz.product.ProductVO;
import com.spring.biz.review.ReviewVO;
import com.spring.biz.vo.InquiryAnsVO;
import com.spring.biz.vo.OptionsVO;
import com.spring.biz.vo.OrdersVO;


@Repository
public class NoticeDAO {
   @Autowired
   private static SqlSessionTemplate mybatis;
   
   public NoticeDAO() {
      System.out.println(">>> NoticeDAO() 객체 생성");
   }
   @Autowired
   public NoticeDAO(SqlSessionTemplate mybatis) {
      System.out.println(">>> NoticeDAO(SqlSessionTemplate) 객체 생성");
      this.mybatis = mybatis;
   }
   
   //고객센터 - 공지사항 조회
   public List<NoticeVO> getNoticeList(NoticeVO vo) {
      System.out.println("===> MyBatis JDBC로 getNoticeList() 실행");
      System.out.println("dao vo : "  + vo);
      return mybatis.selectList("noticeDAO.getNoticeList", vo);
   }
   
   //공지사항 상세조회
    public NoticeVO noticeDetail(NoticeVO vo) {
    System.out.println("===> MyBatis JDBC로 noticeDetail() 실행");
    System.out.println("dao vo : " + vo);
    
    return mybatis.selectOne("noticeDAO.noticeDetail", vo); 
    }
    
    //공지사항 총 개수구하기(페이징)
	public Double noticeCount() {
		return mybatis.selectOne("noticeDAO.noticeCount"); 
	}
	
	//공지사항등록
	public void noticeInsert(NoticeVO vo) {
		System.out.println("===> MyBatis JDBC로 noticeInsert() 실행");
		mybatis.insert("noticeDAO.noticeInsert", vo);
	}
	//공지사항 수정 시 전에 썼던 글 조회
	public NoticeVO updateNoticeView(NoticeVO vo) {
		return mybatis.selectOne("noticeDAO.updateNoticeView", vo); 	
	}
	//공지사항 수정
	public void noticeUpdate(NoticeVO vo) {
		System.out.println("===> MyBatis JDBC로 noticeUpdate() 실행");
		mybatis.update("noticeDAO.noticeUpdate", vo);
	}
	//공지사항 삭제
	public void deleteNotice(NoticeVO vo) {
		System.out.println("===> MyBatis JDBC로 deleteNotice() 실행");
		mybatis.delete("noticeDAO.deleteNotice", vo);
	}



} 