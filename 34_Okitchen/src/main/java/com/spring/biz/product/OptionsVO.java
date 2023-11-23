package com.spring.biz.product;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OptionsVO {
	private int optionId;
	private int productId;
	private String optionName;
	private int price;
	private int optionStock;
}
