package com.spring.biz.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AddressVO {
	private int address_id;
	private int order_id;
	private String user_id;
	private String receiver;
	private String phonenumber;
	private String address;
}
