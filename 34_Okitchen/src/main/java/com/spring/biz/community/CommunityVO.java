package com.spring.biz.community;

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
	private int commHit;
	private Date commDate;
	private String commImage;
	private int productId;
	private String commContent;
	private String title;
	
	public CommunityVO() {}

	public CommunityVO(int communityId, String userId, int commHit, Date commDate, String commImage, int productId,
			String commContent, String title) {
		super();
		this.communityId = communityId;
		this.userId = userId;
		this.commHit = commHit;
		this.commDate = commDate;
		this.commImage = commImage;
		this.productId = productId;
		this.commContent = commContent;
		this.title = title;
		
	}
	
	
}
