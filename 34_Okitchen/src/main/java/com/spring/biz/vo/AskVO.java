package com.spring.biz.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AskVO {
	private int askId;
	private String userId;
	private String askPrivate;
	private String askAnswered;
	private Date askDate;
	private String askCategory;
	private String askContent;
	private String askTitle;
}
