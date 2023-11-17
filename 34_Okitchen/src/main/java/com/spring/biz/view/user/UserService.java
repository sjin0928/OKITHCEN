package com.spring.biz.view.user;

import com.spring.biz.vo.UsersVO;

public interface UserService {
	UsersVO checkDuplicateId(UsersVO vo); // 아이디 중복 확인
}
