package com.spring.biz.ordersDetail.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.ordersDetail.OrderDetailVO;

@Repository
public class OrderDetailDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public OrderDetailDAO() {
		System.out.println(">> orderDetailDAO() 객체 생성");
	}

	// 상품 상세 테이블에 추가
	public void insertOrderDetail(OrderDetailVO orderDetail) {
		System.out.println(">> mybatis로 insertOrderDetail()실행");
		mybatis.insert("orderDetail.insertOrderDetail", orderDetail);
	}

	//주문 상세 내용 조회
	public List<OrderDetailVO> getOrderDetail(String orderId) {
		System.out.println(">> mybatis로 getOrderDetail() 실행");
		return mybatis.selectList("orderDetail.getOrderDetail", orderId);
	}
	
	//재고수량 -
	public void updateStock(OrderDetailVO orderDetail) {
		System.out.println(">> mybatis로 updateStock() 실행");
		mybatis.update("orderDetail.updateStock",orderDetail);
	}
	
	//카트에서 삭제 
	public void deleteCartAfterPay(OrderDetailVO orderDetail) {
		System.out.println(">> mybatis로 deleteCartAfterPay() 실행");
		mybatis.delete("orderDetail.deleteCartAfterPay",orderDetail);
	}
}
