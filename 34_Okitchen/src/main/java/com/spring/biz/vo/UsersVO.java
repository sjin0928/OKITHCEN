package com.spring.biz.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UsersVO {
	private String userId;
	private String userName;
	private String userPassword;
	private String userEmail;
	private String userBirth;
	private String userStatus;
	private Date userDate;
	private String userGender;
	private String userAddress;
	private String userPhonenum;
	
	//--------------------------
	private String userPasswordConfirm; // 비밀번호 확인용 (DB에 insert X)
	// 주소와 상세주소를 하나의 문자열로 만들어 userAddress로 만들어야 함 
	// userAddress = address + subAddress
	private String address; // 주소
	private String subAddress;  // 상세주소
	// 생년월일을 하나의 문자열로 만들어 userBirth로 만들어야 함 
	// userBirth = birthYear + birthMonth + birthDay
	private String birthYear;
	private String birthMonth;
	private String birthDay;
}