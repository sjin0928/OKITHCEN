package com.spring.biz.admin.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.product.RegisterProdVO;
import com.spring.biz.user.UsersVO;

@Repository 
public class AdminDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public AdminDAO() {
		System.out.println(">> AdminDAO() 객체 생성");
	}
	
	// 전체회원조회
	public List<UsersVO> getUserList(){
		System.out.println(">> MyBatis로 회원 리스트 조회 실행 ");
		return mybatis.selectList("adminDAO.userList");
	}
	
	// 회원 수 구하기 
	public int getUserCount() {
		System.out.println(">> MyBatis로 회원 수 구하기 실행 ");
		
		return mybatis.selectOne("adminDAO.totalUserList");
	}
	
	public List<UsersVO> getUserListPaging(int begin, int end){
	      System.out.println(">> MyBatis로 회원 리스트(페이징) 조회 실행 ");
	      Map<String, Integer> map = new HashMap<>();
	      map.put("begin", begin);
	      map.put("end", end);
	      return mybatis.selectList("adminDAO.userListPaging",map);
	 }
	
	//[상품관리]-------------------
	//전체 상품 조회
	public List<RegisterProdVO> allProdList() {
		System.out.println("===> Mybatis로 allPostList() 실행");
	    return mybatis.selectList("adminDAO.selectAllList");
	}
	
	//승인대기 상품 조회
	public List<RegisterProdVO> confirmProd() {
		System.out.println("===> Mybatis로 confirmProd() 실행");
		return mybatis.selectList("adminDAO.confirmProdList");
	}
	
	//게시물 수 구하기
	public int getProdCount() {
		System.out.println("===> Mybatis로 getProdCount() 실행");
		return mybatis.selectOne("adminDAO.totalProdList");
	}
	
	//(페이징)전체 상품 조회
	public List<RegisterProdVO> allProdListPaging(int begin, int end) {
		System.out.println("===> Mybatis로 allProdListPaging() 실행");
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		
		return mybatis.selectList("adminDAO.allProdListPaging", map);
	}

	//(페이징)승인대기 상품 조회
	public List<RegisterProdVO> confirmProdPaging(int begin, int end) {
		System.out.println("===> Mybatis로 confirmProdPaging() 실행");
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		
		return mybatis.selectList("adminDAO.confirmProdPaging", map);
	}
	
	//상품 승인처리
	public Object approveProdStatus(int productId) {
		System.out.println("===> Mybatis로 approveProdStatus() 실행");
		
		return mybatis.update("adminDAO.approveProdStatus", productId);
	}
	
	//상품 반려처리
	public Object rejectProdStatus(int productId) {
		System.out.println("===> Mybatis로 rejectProdStatus() 실행");
		
		return mybatis.update("adminDAO.rejectProdStatus", productId);
	}
}
