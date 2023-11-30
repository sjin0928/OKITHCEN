package com.spring.biz.orders.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.orders.OrdersService;
import com.spring.biz.orders.OrdersVO;

@Service("ordersService")
public class OrdersServiceImpl implements OrdersService {
	
	@Autowired
	private OrdersDAO ordersDAO;	

	public OrdersServiceImpl() {
		System.out.println(">> OrdersServiceImpl() 객체 생성");
	}

	@Override
	public void insertOrders(OrdersVO order) {
		ordersDAO.insertOrders(order);
	}

	@Override
	public OrdersVO getOrderId(OrdersVO order) {
		return ordersDAO.getOrderId(order);
	}

	@Override
	public List<OrdersVO> getMyOrders(String userId) {
		return ordersDAO.getMyOrders(userId);
	}

	@Override
	public void updateOrderStatus(OrdersVO order) {
		ordersDAO.updateOrderStatus(order);
	}

}
