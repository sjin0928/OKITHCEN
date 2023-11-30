package com.spring.biz.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.user.UsersVO;

@Repository
public class UserAddressDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserAddressDAO() {
		System.out.println(">> UserDAO() 객체 생성");
	}
	
	//userAddress 정보 수정
	public void updateAddress(UsersVO user) {
		System.out.println(">> mybatis로 updateAddress실행");
		mybatis.update("userAddress.updateAddress",user);
	}
}
