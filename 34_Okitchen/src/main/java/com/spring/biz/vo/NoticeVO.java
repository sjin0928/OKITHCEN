package com.spring.biz.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeVO {
	private int noticeId;
	private String userId;
	private Date noticeDate;
	private String noticeContent;
	private String noticeTitle;
}
