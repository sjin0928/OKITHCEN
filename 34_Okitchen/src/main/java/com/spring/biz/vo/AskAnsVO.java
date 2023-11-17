package com.spring.biz.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AskAnsVO {
	private int askAnsId;
	private String askAnsContent;
	private Date askAnsDate;
	private int askId;
}
