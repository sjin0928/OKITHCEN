package com.spring.biz.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderDetailVO {
	private int orderDetailId;
	private int orderId;
	private int productId;
	private int quantity;
	private int productPrice;
}
