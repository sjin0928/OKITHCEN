package com.spring.biz.community;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CommunityPickedVO {
	private int commPickId;
	private int communityId;
	private String userId;
	
	public CommunityPickedVO() {}

	public CommunityPickedVO(int commPickId, int communityId, String userId) {
		super();
		this.commPickId = commPickId;
		this.communityId = communityId;
		this.userId = userId;
	}
	
	
	
}
