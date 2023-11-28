package com.spring.biz.inquiry;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class InquiryAnsVO {
	private int ansId;
	private String ansContent;
	private Date ansDate;
	private int inqId;
	
	public int getAnsId() {
		return ansId;
	}
	public void setAnsId(int ansId) {
		this.ansId = ansId;
	}
	public String getAnsContent() {
		return ansContent;
	}
	public void setAnsContent(String ansContent) {
		this.ansContent = ansContent;
	}
	public Date getAnsDate() {
		return ansDate;
	}
	public void setAnsDate(Date ansDate) {
		this.ansDate = ansDate;
	}
	public int getInqId() {
		return inqId;
	}
	public void setInqId(int inqId) {
		this.inqId = inqId;
	}
	@Override
	public String toString() {
		return "InquiryAnsVO [ansId=" + ansId + ", ansContent=" + ansContent + ", ansDate=" + ansDate + ", inqId="
				+ inqId + "]";
	}
	
	
}
