package com.spring.biz.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.vo.UsersVO;

@Repository 
public class UserDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserDAO() {
		System.out.println(">> UserDAO() 객체 생성 ");
	}
	
	public UsersVO checkDuplicateId(UsersVO vo) {
		System.out.println(">> MyBatis로 아이디 중복 확인 실행 ");
		return mybatis.selectOne("userDAO.checkDuplicateId", vo);
	}
}
