package com.spring.biz.board;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

public class NoticeVO {
	private int noticeId;
	private String userId;
	private Date noticeDate;
	private String noticeContent;
	private String noticeTitle;
	private String cPage;
	private String startPage;
	private String endPage;
	private Double totPage;
	
	
	
	public Double getTotPage() {
		return totPage;
	}
	public void setTotPage(Double totPage) {
		this.totPage = totPage;
	}
	public String getcPage() {
		return cPage;
	}
	public void setcPage(String cPage) {
		this.cPage = cPage;
	}
	public String getStartPage() {
		return startPage;
	}
	public void setStartPage(String startPage) {
		this.startPage = startPage;
	}
	public String getEndPage() {
		return endPage;
	}
	public void setEndPage(String endPage) {
		this.endPage = endPage;
	}
	public int getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [noticeId=" + noticeId + ", userId=" + userId + ", noticeDate=" + noticeDate
				+ ", noticeContent=" + noticeContent + ", noticeTitle=" + noticeTitle + ", cPage=" + cPage
				+ ", startPage=" + startPage + ", endPage=" + endPage + ", totPage=" + totPage + "]";
	}

	
}
