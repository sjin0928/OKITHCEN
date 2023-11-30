package com.spring.biz.review;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

public class ReviewVO {
	private int reviewId;
	private int orderId;
	private int rating;
	private String reviewImage;
	private String reviewContent;
	private Date reviewDate;
	private String userId;
	private String userName;
	private String brand;
	private String title;
	private String optionName;
	private String cPage2;
	private String startPage;
	private String endPage;
	private String totPage;
	private String productId;
	private int orderDetailId;
	
	
	
	public int getOrderDetailId() {
		return orderDetailId;
	}
	public void setOrderDetailId(int orderDetailId) {
		this.orderDetailId = orderDetailId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	//파일업로드
	private MultipartFile uploadFile;
	
	
	
	public String getcPage2() {
		return cPage2;
	}
	public void setcPage2(String cPage2) {
		this.cPage2 = cPage2;
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
	public String getTotPage() {
		return totPage;
	}
	public void setTotPage(String totPage) {
		this.totPage = totPage;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getReviewId() {
		return reviewId;
	}
	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getReviewImage() {
		return reviewImage;
	}
	public void setReviewImage(String reviewImage) {
		this.reviewImage = reviewImage;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	
	@Override
	public String toString() {
		return "ReviewVO [reviewId=" + reviewId + ", orderId=" + orderId + ", rating=" + rating + ", reviewImage="
				+ reviewImage + ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + ", userId=" + userId
				+ ", userName=" + userName + ", brand=" + brand + ", title=" + title + ", optionName=" + optionName
				+ ", cPage2=" + cPage2 + ", startPage=" + startPage + ", endPage=" + endPage + ", totPage=" + totPage
				+ ", productId=" + productId + ", orderDetailId=" + orderDetailId + ", uploadFile=" + uploadFile + "]";
	}
	
	// 파일업로드 ----------
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	
	
}
