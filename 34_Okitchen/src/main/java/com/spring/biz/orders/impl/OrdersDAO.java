package com.spring.biz.orders.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.orders.OrdersVO;

@Repository
public class OrdersDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public OrdersDAO() {
		System.out.println(">> OrderDAO() 객체 생성");
	}
	
	//order table insert
	public void insertOrders(OrdersVO order) {
		mybatis.insert("orders.insertOrder", order);
	}
	
	//방금 orderId 조회
	public OrdersVO getOrderId(OrdersVO order) {
		return mybatis.selectOne("orders.orderIdSelect", order);
	}
	
	//주문내역 조회(mypage)
	public List<OrdersVO> getMyOrders(String userId) {
		System.out.println(">> mybatis로 주문내역 조회");
		return mybatis.selectList("orders.selectAllMyOrders",userId);
	}
	
	//주문취소(상태변경)
	public void updateOrderStatus(OrdersVO order) {
		System.out.println(">> mybatis로 주문상태 변경");
		mybatis.update("orders.updateOrderStatus", order);
	}
}
