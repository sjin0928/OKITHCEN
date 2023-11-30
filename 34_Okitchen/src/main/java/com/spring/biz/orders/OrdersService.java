package com.spring.biz.orders;

import java.util.List;

public interface OrdersService {
	void insertOrders(OrdersVO order);
	OrdersVO getOrderId(OrdersVO order);
	List<OrdersVO> getMyOrders(String userId);
	void updateOrderStatus(OrdersVO order);
}
