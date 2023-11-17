package com.spring.biz.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class InquiryAnsVO {
	private int ansId;
	private String ansContent;
	private Date ansDate;
	private int inqId;
}
