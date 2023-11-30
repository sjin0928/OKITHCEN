package com.spring.biz.admin.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.admin.AdminOrdersVO;
import com.spring.biz.community.CommunityRecipeVO;
import com.spring.biz.community.CommunityVO;

@Repository
public class AdminOrdersDAO {

	private SqlSessionTemplate mybatis;
	
	public AdminOrdersDAO() {
		System.out.println(">>> AdminOrdersDAO() 객체 생성");
	}
	
	@Autowired
	public AdminOrdersDAO(SqlSessionTemplate mybatis) {
		System.out.println(">>> AdminOrdersDAO(SqlSessionTemplate) 객체 생성");
		this.mybatis = mybatis;
	}
	
	//주문내역 한개 페이지 보기 (추후구현)
	
	
	//주문내역 리스트 전체 조회
	public List<AdminOrdersVO> getOrderStatusList(){
		System.out.println("getOrderStatusList() 실행");
		
		return mybatis.selectList("adminOrdersDAO.getOrdersList");
	}
	
	
	
	//주문내역 리스트 전체 조회 조건검색
	public List<AdminOrdersVO> getOrdersStatusListByUserId(AdminOrdersVO vo){
		System.out.println("===> MyBatis JDBC로 getOrdersStatusList() 실행");
		System.out.println("vo : " + vo );
		
		//NullPointerException 방지위함
		if(vo.getSearchUserId() == null) {
			vo.setSearchUserId("");
		}
		
		if (vo.getSelectOrderDate() == null) {
	        vo.setSelectOrderDate("");
	    }

	    if (vo.getSelectOrderStatus() == null) {
	        vo.setSelectOrderStatus("");
	    }
		System.out.println("날짜 null인경우 초기화_ vo체크 : " + vo);
		
		return mybatis.selectList("adminOrdersDAO.getOrdersListByOption", vo);
	}
	
	//주문내역 배송정보 수정
	public void updateOrderStatus(AdminOrdersVO vo) {
		System.out.println("updateOrderStatus() 실행");
		
		mybatis.update("adminOrdersDAO.updateOrderStatus", vo);
	}
	
	//이번달  매출 조회
	public AdminOrdersVO totalAmountMonth() {
		System.out.println("DAO _ totalAmountMonth() 실행");
		return mybatis.selectOne("adminOrdersDAO.totalAmountMonth");
	}
	//이번해  매출 조회
	public AdminOrdersVO totalAmountYear() {
		System.out.println("DAO _ totalAmountYear() 실행");
		return mybatis.selectOne("adminOrdersDAO.totalAmountYear");
	}
	
	//전체게시물 가져오기
	public List<CommunityVO> getCommunityListByAdmin() {
		System.out.println("DAO_getCommunityListByAdmin() 실행");
		return mybatis.selectList("adminOrdersDAO.getcommunityListAdmin");
	}
	
	
	

}
