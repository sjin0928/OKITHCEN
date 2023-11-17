package com.spring.biz.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductVO {
	private int productId;
	private String sellerId;
	private String brand;
	private String title;
	private String image;
	private int price;
	private int discountRate;
	private Date acceptDate;
	private Date updateDate;
	private String ratingAvg;
	private String content;
	private String approvalStatus;
	private String productStatus;
	private Date submitDate;
	private String optionCheck;
	private String origin;
	private Date manufacturingDate;
	private Date expirationDate;
	private String caution;
	private String notification;
	private String categoryName;
}
