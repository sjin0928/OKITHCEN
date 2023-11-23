package com.spring.biz.product;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductImageVO {
	private int imageId;
	private int productId;
	private String productPhoto;
}
