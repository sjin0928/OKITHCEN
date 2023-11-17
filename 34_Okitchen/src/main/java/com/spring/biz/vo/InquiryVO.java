package com.spring.biz.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class InquiryVO {
	private int inqId;
	private String userId;
	private int productId;
	private String inqPrivate;
	private String inqAnswered;
	private Date inqDate;
	private String  inqCategory;
	private String inqContent;
	private String inqTitle;
}
