package com.spring.biz.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewVO {
	private int reviewId;
	private int orderId;
	private int rating;
	private String reviewImage;
	private String reviewContent;
	private Date reviewDate;
}
