package com.spring.biz.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.admin.AdminService;
import com.spring.biz.product.RegisterProdVO;
import com.spring.biz.user.UsersVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminDAO adminDAO;
	
	public AdminServiceImpl() {
		System.out.println(">> AdminServiceImpl() 객체 생성----");
	}
	
	// 전체회원조회
	@Override
	public List<UsersVO> getUserList() {
		System.out.println(">> AdminServiceImpl.getUserList() 실행");
		
		return adminDAO.getUserList();
	}

	// 회원 수 구하기 
	@Override
	public int getUserCount() {
		System.out.println(">> AdminServiceImpl.getUserCount() 실행");
		return adminDAO.getUserCount();
	}

	@Override
	public List<UsersVO> getUserListPaging(int begin, int end) {
		System.out.println(">> AdminServiceImpl.getUserListPaging() 실행");
		return adminDAO.getUserListPaging(begin, end);
	}
	
	//[상품관리]------------------
	//전체 상품 조회
	@Override
	public List<RegisterProdVO> allProdList() throws Exception {
		return adminDAO.allProdList();
	}
	
	//승인대기 상품 조회
	@Override
	public List<RegisterProdVO> confirmProd() throws Exception {
		return adminDAO.confirmProd();
	}

	//(페이징)상품 수 구하기
	@Override
	public int getProdCount() throws Exception {
		return adminDAO.getProdCount();
	}
	
	//(페이징)전체 상품 조회
	@Override
	public List<RegisterProdVO> allProdListPaging(int begin, int end) throws Exception {
		return adminDAO.allProdListPaging(begin, end);
	}
	
	//(페이징)승인대기 상품 조회
	@Override
	public List<RegisterProdVO> confirmProdPaging(int begin, int end) throws Exception {
		return adminDAO.confirmProdPaging(begin, end);
	}

	//상품승인처리
	@Override
	public Object approveProdStatus(int productId) throws Exception {
		return adminDAO.approveProdStatus(productId);
	}
	
	//상품반려처리
	@Override
	public Object rejectProdStatus(int productId) throws Exception {
		return adminDAO.rejectProdStatus(productId);
	}
	
	

}
