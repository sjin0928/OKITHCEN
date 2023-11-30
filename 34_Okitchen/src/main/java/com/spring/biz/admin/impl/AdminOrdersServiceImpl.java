package com.spring.biz.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.admin.AdminOrdersService;
import com.spring.biz.admin.AdminOrdersVO;
import com.spring.biz.community.CommunityVO;

@Service("adminOrdersService")
public class AdminOrdersServiceImpl implements AdminOrdersService{
	
	@Autowired
	private AdminOrdersDAO adminOrdersDAO;
	
	public AdminOrdersServiceImpl() {
		System.out.println(">> AdminOrdersServiceImpl() 객체 생성");
	}
	

	@Override//미구현

	public AdminOrdersVO getOrdersStatus(AdminOrdersVO vo) {
		return null;
	}


	@Override //배송 현황 수정
	public void updateOrderStatus(AdminOrdersVO vo) {
		System.out.println("AdminOrdersDAO adminOrdersDAO_updateOrderStatus() 실행");
		adminOrdersDAO.updateOrderStatus(vo);
	}


	@Override //미구현
	public List<AdminOrdersVO> getOrdersStatusList() {
		System.out.println("AdminOrdersDAO adminOrdersDAO_getOrdersStatusList() 실행");
		return adminOrdersDAO.getOrderStatusList();
	}


	@Override //조건별 주문내역 조회
	public List<AdminOrdersVO> getOrdersStatusListByUserId(AdminOrdersVO vo) {
		System.out.println("AdminOrdersDAO adminOrdersDAO_getOrdersStatusListByUserId() 실행");
		return adminOrdersDAO.getOrdersStatusListByUserId(vo);
	}


	@Override //이번달 매출 조회
	public AdminOrdersVO totalAmountMonth() {
		System.out.println("AdminOrdersDAO adminOrdersDAO_totalAmountMonth() 실행");
		return adminOrdersDAO.totalAmountMonth();
	}


	@Override //이번해 매출 조회
	public AdminOrdersVO totalAmountYear() {
		System.out.println("AdminOrdersDAO adminOrdersDAO_totalAmountYear() 실행");
		return adminOrdersDAO.totalAmountYear();
	}


	@Override //전체게시물 가져오기
	public List<CommunityVO> getcommunityListAdmin() {
		System.out.println("AdminOrdersDAO adminOrdersDAO_getCommunityListByAdmin() 실행");
		return adminOrdersDAO.getCommunityListByAdmin();
	}


	


}
