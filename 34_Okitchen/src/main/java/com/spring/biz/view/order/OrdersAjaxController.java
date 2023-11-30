package com.spring.biz.view.order;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.spring.biz.orders.OrdersService;
import com.spring.biz.orders.OrdersVO;
import com.spring.biz.user.UsersVO;

@RestController
public class OrdersAjaxController {

	private OrdersService ordersService;
	
	public OrdersAjaxController(OrdersService ordersService) {
		System.out.println(">> OrdersAjaxController(ordersService)객체 생성");
		this.ordersService = ordersService;
	}
	
	@RequestMapping("/cart/orderFinish.do")
	@ResponseBody
	public int insertOrders(@RequestBody OrdersVO orders, HttpSession session) {
		System.out.println(">> insertOrders()실행");
		System.out.println(">> orders :" + orders);
		
		UsersVO user =  (UsersVO) session.getAttribute("loginUser");
		
		//set!!! orders ---- 
		OrdersVO orderProduct = new OrdersVO();
		orderProduct.setOrderId(orders.getOrderId());
		orderProduct.setOrderStatus(orders.getOrderStatus());
		orderProduct.setMemo(orders.getMemo());
		orderProduct.setTotalCnt(orders.getTotalCnt());
		orderProduct.setTotalPrice(orders.getTotalPrice());

		orderProduct.setUserId(user.getUserId());
		
		//주문 정보 저장
		ordersService.insertOrders(orderProduct);
		
		System.out.println(">> orderProduct :" + orderProduct);
		session.setAttribute("orderProduct", orderProduct);
		
		return 1;
	}
	
}
