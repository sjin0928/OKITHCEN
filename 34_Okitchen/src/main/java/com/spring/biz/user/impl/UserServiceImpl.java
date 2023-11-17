package com.spring.biz.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.view.user.UserService;
import com.spring.biz.vo.UsersVO;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDAO;
	
	public UserServiceImpl() {
		System.out.println(">> UserServiceImpl() 객체 생성----");
	}
	
	@Override
	public UsersVO checkDuplicateId(UsersVO vo) {
		// 아이디 중복 확인 
		return null;
	}

}
