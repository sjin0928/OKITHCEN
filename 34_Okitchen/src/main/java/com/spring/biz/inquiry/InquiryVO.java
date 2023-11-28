package com.spring.biz.inquiry;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

public class InquiryVO {
	private int inqId;
	private String userId;
	private int productId;
	private String inqPrivate;
	private String inqAnswered;
	private Date inqDate;
	private String  inqCategory;
	private String inqContent;
	private String inqTitle;
	private String userName;
	private String title;
	private String image;
	private String brand;
	private String cPage;
	private String startPage;
	private String endPage;
	private Double totPage;
	
	
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
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
	public Double getTotPage() {
		return totPage;
	}
	public void setTotPage(Double totPage) {
		this.totPage = totPage;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getInqId() {
		return inqId;
	}
	public void setInqId(int inqId) {
		this.inqId = inqId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getInqPrivate() {
		return inqPrivate;
	}
	public void setInqPrivate(String inqPrivate) {
		this.inqPrivate = inqPrivate;
	}
	public String getInqAnswered() {
		return inqAnswered;
	}
	public void setInqAnswered(String inqAnswered) {
		this.inqAnswered = inqAnswered;
	}
	public Date getInqDate() {
		return inqDate;
	}
	public void setInqDate(Date inqDate) {
		this.inqDate = inqDate;
	}
	public String getInqCategory() {
		return inqCategory;
	}
	public void setInqCategory(String inqCategory) {
		this.inqCategory = inqCategory;
	}
	public String getInqContent() {
		return inqContent;
	}
	public void setInqContent(String inqContent) {
		this.inqContent = inqContent;
	}
	public String getInqTitle() {
		return inqTitle;
	}
	public void setInqTitle(String inqTitle) {
		this.inqTitle = inqTitle;
	}
	@Override
	public String toString() {
		return "InquiryVO [inqId=" + inqId + ", userId=" + userId + ", productId=" + productId + ", inqPrivate="
				+ inqPrivate + ", inqAnswered=" + inqAnswered + ", inqDate=" + inqDate + ", inqCategory=" + inqCategory
				+ ", inqContent=" + inqContent + ", inqTitle=" + inqTitle + ", userName=" + userName + ", title="
				+ title + ", image=" + image + ", brand=" + brand + ", cPage=" + cPage + ", startPage=" + startPage
				+ ", endPage=" + endPage + ", totPage=" + totPage + "]";
	}
	public String getcPage() {
		return cPage;
	}
	public void setcPage(String cPage) {
		this.cPage = cPage;
	}
	
	
}
