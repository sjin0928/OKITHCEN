package com.spring.biz.product;

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
	private String title; //상품명
	private String image;
	private int price;
	private int discountRate;
	private Date acceptDate;
	private Date updateDate;
	private String ratingAvg;
	private String content;
	private String approvalStatus; //승인여부(Y/N)
	private String productStatus; //상품상태(전시/비전시/판매종료/품절)
	private Date submitDate; //신청일
	private String optionCheck; //옵션여부
	private String origin; //원산지
	private Date manufacturingDate; //제조일자
	private Date expirationDate; //유통기한
	private String caution; //주의사항
	private String notification; //안내사항
	private String categoryName; //카테고리명
	private int discountedPrice; //할인된 가격
	private int orderDetailId;
	private Date orderDate;
}
