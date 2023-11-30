package com.spring.biz.cart;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartVO {
	private int cartId;
	private int productId;
	private String userId;
	private int quantity; //
	
	private String title;
	private int price; //
	private String image;
	private String brand;
	private int discountRate; //
	private String origin;
	
	private int totalAmount;
	private int productPrice;
	private int discountedPrice;
}
