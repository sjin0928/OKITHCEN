package com.spring.biz.seller;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SellerVO {
	private String sellerId;
	private String companyName;
	private String representative;
	private String customerCenter;
	private String customerEmail;
	private String registrationNum;
	private String sellerPassword;
	private String sellerType;
}
