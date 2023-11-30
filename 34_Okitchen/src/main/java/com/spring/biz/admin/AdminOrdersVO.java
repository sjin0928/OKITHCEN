package com.spring.biz.admin;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminOrdersVO {
	private String orderId;
	private String userId;
	private String orderStatus;
	private Date orderDate;
	private String memo;
	private int totalCnt;
	private int totalPrice;
	

	
	//------------------------------ 주문 날짜&배송상태 검색 조건 ----------------------
	
	//---- 날짜 옵션 선택(selectOrderDATE)
	private String allDate; 
	private String toDay;
	private String thisMonth;
	private String thisYear;
	private String insertSearchDate;
	
	//---- 시작&끝 날짜
	private Date startDate;
	private Date endDate;
	
	//---- 배송상태 옵션 선택(selectOrderStatus)
	private String allShipping;
	private String paid;
	private String beDelivery;
	private String afDelivery;
	private String cpDelivery;
	
	
	//---- 유저검색 키워드  
	private String searchUserId;
	//---- 검색조건 처리용 
	private String selectOrderDate;
	private String selectOrderStatus;
	
	//---- 주문 총 갯수
	private int totalNum;
	
	//----  매출 총 금액(당일, 이번달, 올해)
	private int totalAmountToday;
	private int totalAmountMonth;
	private int totalAmountYear;
	
	// selectOrderDate;
	
	//-----
	
	
}
