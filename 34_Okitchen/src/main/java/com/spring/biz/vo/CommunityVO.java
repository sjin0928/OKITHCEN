package com.spring.biz.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CommunityVO {
	private int communityId;
	private String userId;
	private String commContent;
	private String commTitle;
	private int commHit;
	private Date commDate;
}
