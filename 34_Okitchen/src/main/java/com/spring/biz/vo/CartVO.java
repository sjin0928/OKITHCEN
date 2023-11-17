package com.spring.biz.vo;

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
	private int quantity;
	private int productPrice;
}
