package com.spring.biz.user;

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
	private String newPassword; // 비밀번호 변경 시 필요함 
	
	//----------
	//요청사항
	private String deliveryLocation;
	private String entryMethod;
	private String otherDeliveryLocation;
	private String entryMethodCallDetails;
	private String otherEntryMethodDetails;

}