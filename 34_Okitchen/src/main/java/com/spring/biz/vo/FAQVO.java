package com.spring.biz.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FAQVO {
	private int faqId;
	private String userId;
	private Date faqDate;
	private String faqContent;
	private String faqTitle;
	private String faqCategory;
}
