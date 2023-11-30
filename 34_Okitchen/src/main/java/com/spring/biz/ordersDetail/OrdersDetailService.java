package com.spring.biz.ordersDetail;

import java.util.List;

public interface OrdersDetailService {
	void insertOrders(OrderDetailVO orderDetail);
	List<OrderDetailVO> getOrderDetail(String orderId);
	void updateStock(OrderDetailVO orderDetail);
	void deleteCartAfterPay(OrderDetailVO orderDetail);
}
