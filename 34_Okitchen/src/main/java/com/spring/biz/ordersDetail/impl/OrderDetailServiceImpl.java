package com.spring.biz.ordersDetail.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.ordersDetail.OrderDetailVO;
import com.spring.biz.ordersDetail.OrdersDetailService;

@Service("orderDetailService")
public class OrderDetailServiceImpl implements OrdersDetailService{
	
	@Autowired
	private OrderDetailDAO orderDetailDAO;
	
	public OrderDetailServiceImpl() {
		System.out.println(">> orderDetailServiceImpl() 객체 생성");
	}

	//주문 상세 정보 담기
	@Override
	public void insertOrders(OrderDetailVO orderDetail) {
		System.out.println(">> serviceImpl ()_ insertOrders 실행 ");
		orderDetailDAO.insertOrderDetail(orderDetail);
	}

	//주문 상세 내용 조회
	@Override
	public List<OrderDetailVO> getOrderDetail(String orderId) {
		System.out.println(">> getOrderDetail() 실행");
		return orderDetailDAO.getOrderDetail(orderId);
	}

	//재고 수량 -
	@Override
	public void updateStock(OrderDetailVO orderDetail) {
		System.out.println(">> updateStock() 실행");
		orderDetailDAO.updateStock(orderDetail);
	}

	//카트에서 삭제
	@Override
	public void deleteCartAfterPay(OrderDetailVO orderDetail) {
		System.out.println(">> deleteCartAfterPay() 실행");
		orderDetailDAO.deleteCartAfterPay(orderDetail);
	}
	
}
