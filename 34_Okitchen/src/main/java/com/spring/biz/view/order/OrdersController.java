package com.spring.biz.view.order;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.biz.cart.CartVO;
import com.spring.biz.orders.OrdersService;
import com.spring.biz.orders.OrdersVO;
import com.spring.biz.ordersDetail.OrderDetailVO;
import com.spring.biz.ordersDetail.OrdersDetailService;
import com.spring.biz.picked.PickedVO;
import com.spring.biz.user.UserService;
import com.spring.biz.user.UsersVO;

@Controller
@RequestMapping("/orders")
public class OrdersController {
	@Autowired
	@Qualifier("ordersService")
	private OrdersService ordersService;
	
	@Autowired
	private UserService userService;

	@Autowired
	private OrdersDetailService ordersDetailService;

	public OrdersController(OrdersService ordersService) {
		System.out.println(">> ordersController(ordersService) 객체 생성");
	}

	// 주문완료 페이지 보여주기
	@RequestMapping("/nowOrders.do")
	public String nowOrders(OrdersVO orderProduct, HttpSession session) {
		System.out.println(">> nowOrders() 실행");
		orderProduct = (OrdersVO) session.getAttribute("orderProduct");
		return "/cart/nowOrderShow";
	}

	// 주문 취소 버튼 눌렀을 때 로직
	@RequestMapping("/updateOrderStatus.do")
	public String updateOrderStatus(@RequestParam("orderId") String orderId) {
		System.out.println(">> updateOrderStatus()실행");

		OrdersVO order = new OrdersVO();
		System.out.println(">> order : " + order);
		order.setOrderId(orderId);
		order.setOrderStatus("cancel");

		ordersService.updateOrderStatus(order);
		return "/cart/orderDetail";
	}

	// orderDetail에 정보 넣기
	@RequestMapping("/orderDetail.do")
	public String orderDetail(HttpSession session) {
		System.out.println(">> orderDetail() 실행");
		OrderDetailVO orderDetails = new OrderDetailVO();

		OrdersVO getOrderId = (OrdersVO) session.getAttribute("orderProduct");
		ordersService.getOrderId(getOrderId);
		System.out.println(">> getOrderId " + getOrderId);

		UsersVO user = (UsersVO) session.getAttribute("loginUser");

		// orderId 먼저 세팅
		String orderId = getOrderId.getOrderId();
		System.out.println(">> orderId : " + orderId);

		// insert 로직 실행하기
		List<CartVO> cartList = (List<CartVO>) session.getAttribute("cartList");
		for (CartVO cartVO : cartList) {
			orderDetails.setOrderId(orderId);
			int productId = cartVO.getProductId();
			int quantity = cartVO.getQuantity();
			int productPrice = cartVO.getPrice();
			orderDetails.setProductId(productId);
			orderDetails.setQuantity(quantity);
			orderDetails.setProductPrice(productPrice);
			orderDetails.setUserId(user.getUserId());
			ordersDetailService.insertOrders(orderDetails);
			ordersDetailService.updateStock(orderDetails);
			ordersDetailService.deleteCartAfterPay(orderDetails);
		}

		System.out.println(">> cartList : " + cartList);
		System.out.println(">> orderDetails" + orderDetails);
		session.setAttribute("orderDetails", orderDetails);
		return "redirect:goOrderDetail.do?orderId=" + orderId;
	}

	// 마이페이지에서 주문상세 페이지 조회
	@RequestMapping("/goOrderDetail.do")
	public String goOrderDetail(@RequestParam("orderId") String orderId, Model model) {
		List<OrderDetailVO> oneOrderDetails = ordersDetailService.getOrderDetail(orderId);
		System.out.println(">> oneOrderDetails :" + oneOrderDetails);

		model.addAttribute("oneOrderDetails", oneOrderDetails);

		return "/cart/orderDetail";
	}

	// 주문내역 조회
	   @RequestMapping("/getMyOrders.do")
	   public String getMyOrders(HttpSession session) {
	      System.out.println(">> getMyOrders() 실행");
	      UsersVO user = (UsersVO) session.getAttribute("loginUser");

	      String userId = user.getUserId();
	      List<OrdersVO> orderList = ordersService.getMyOrders(userId);

	      System.out.println(">> orderList : " + orderList);
	      // 찜한 상품 갯수
	      List<PickedVO> pickedList = userService.getPickedList(user);
	      int pickedListCount = (pickedList != null) ? pickedList.size() : 0;
	      
	      session.setAttribute("pickedListCount", pickedListCount); // 찜한 상품 갯수

	      session.setAttribute("orderList", orderList);

	      return "/user/userMyPageMain";
	   }
}
