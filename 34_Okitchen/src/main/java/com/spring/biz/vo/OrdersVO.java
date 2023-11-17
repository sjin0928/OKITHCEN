package com.spring.biz.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrdersVO {
	private int orderId;
	private String userId;
	private String orderStatus;
	private Date orderDate;
	private String memo;
	private int totalCnt;
	private int totalPrice;
	private int delieveryPrice;
}
