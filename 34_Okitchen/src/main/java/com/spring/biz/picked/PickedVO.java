package com.spring.biz.picked;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PickedVO {
	private int pickId;
	private String userId;
	private int productId;
}
