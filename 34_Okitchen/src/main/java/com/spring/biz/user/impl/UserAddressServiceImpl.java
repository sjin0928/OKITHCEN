package com.spring.biz.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.user.UserAddressService;
import com.spring.biz.user.UsersVO;

@Service("userAddressService")
public class UserAddressServiceImpl implements UserAddressService {

	@Autowired
	private UserAddressDAO userAddressDAO;
	
	public UserAddressServiceImpl() {
		System.out.println(">> userAddressServiceImpl() 객체 생성");
	}

	@Override
	public void updateAddress(UsersVO user) {
		System.out.println("dldkdkdjdkj");
		userAddressDAO.updateAddress(user);
	}

}
