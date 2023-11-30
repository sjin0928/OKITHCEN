package com.spring.biz.product;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RegisterProdVO {
	
	//1. ProductVO
	private int productId;
	private String sellerId;
	private String brand; //브랜드명 
	private String title; //상품명
	private int price;
	private int discountedPrice; //할인된 가격
	private int discountRate;
	private Date acceptDate;
	private String ratingAvg;
	private String content;
	private String approvalStatus; //승인여부(Y/N)
	private String productStatus; //상품상태(전시/비전시/판매종료/품절)
	private Date submitDate; //신청일
	private String optionCheck; //옵션여부
	private String origin; //원산지
	private Date manufacturingDate; //제조일자
	private Date expirationDate; //유통기한
	private String caution; //주의사항
	private String notification; //안내사항
	private String categoryName; //카테고리명
	private int stock; //기본상품의 재고
	
	//2. OptionsVO
	private int optionId;
	private String optionName; //옵션명 = 옵션의 상품명 (옵션이 없는 경우 null로)
	private int optionStock; //재고
	private int optionPrice; //옵션 상품의 가격
	
	//3. ProductImageVO
	private int imageId;
	
	//파일
	private MultipartFile imageFile; //대표이미지
	private List<MultipartFile> productPhotoFile; //상세이미지(여러장)

	private String image; //DB에 저장되는 대표이미지
	private String productPhoto; //DB에 저장되는 상세이미지
	
	//페이징 처리를 위한 ROWNUM
	private int rnum;

	//상품의 리뷰 개수
	private String reviewCnt;
	
}
