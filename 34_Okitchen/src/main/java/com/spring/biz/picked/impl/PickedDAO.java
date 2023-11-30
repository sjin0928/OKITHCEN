package com.spring.biz.picked.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.picked.PickedService;
import com.spring.biz.picked.PickedVO;

@Repository 
public class PickedDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public PickedDAO() {
		System.out.println(">> PickedDAO() 객체 생성");
	}
	
	// 찜 상품 추가 
	public int insertPicked(PickedVO vo) {
		System.out.println(">> MyBatis로 찜 상품 추가 실행");
		return mybatis.insert("pickedDAO.insertPicked", vo);
	}
	
	// 찜 상품 삭제
	public int deletePicked(PickedVO vo) {
		System.out.println(">> MyBatis로 찜 상품 삭제 실행");
		return mybatis.delete("pickedDAO.deletePicked", vo);
	}

	// 찜한 상품 여부 확인(상세페이지로 갈 때 필요)
	public PickedVO selectPicked(PickedVO vo) {
		System.out.println(">> MyBatis로 찜 상품 확인 실행");
		return mybatis.selectOne("pickedDAO.selectPicked", vo);
	}
}
