package com.spring.biz.ordersDetail;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderDetailVO {
	private int orderDetailId;
	private String orderId;
	private int quantity;
	private int productPrice;
	private int productId;
	private int optionId;
	private String reviewStatus;
	private String userId;
	
	private String title;
	private String image;
	private String price;
	private String discountRate;
	private int stock;
	
}
