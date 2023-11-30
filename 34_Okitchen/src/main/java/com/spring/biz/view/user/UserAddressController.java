package com.spring.biz.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.biz.user.UserAddressService;
import com.spring.biz.user.UsersVO;

@Controller
@RequestMapping("/userAddress")
public class UserAddressController {
	
	private UserAddressService userAddressService;
	
	@Autowired
	public UserAddressController(UserAddressService userAddressService) {
		System.out.println(">>UserAddressController(userAddressService) 객체 생성");
		this.userAddressService = userAddressService;
	}
	
	 // 배송지 변경 페이지 열기
    @RequestMapping("/getUserAddress.do")
    public String getUserAddressPage(HttpSession session, Model model) {
    	System.out.println("session : " + session);
        UsersVO user = (UsersVO) session.getAttribute("loginUser");
        System.out.println(">> getUserAddres.do() 실행");
        System.out.println("user :" + user);
        model.addAttribute("user", user);
        return "/cart/updateAddress";
    }

	//updateRequest jsp로 단순 페이지 이동
	@GetMapping("/getUser.do")
	public String getUser(UsersVO user) {
		System.out.println("user : " + user);
		return "/cart/updateRequest";
	}
	
	//orderForm으로 이동
	@RequestMapping("/reOrderForm.do")
	public String reOrderForm(HttpSession session, Model model) {
		 UsersVO formData = (UsersVO) session.getAttribute("formData");
		 System.out.println("formData: " + formData);
		 model.addAttribute("formData", formData);
		 return "redirect:/cart/goOrderForm.do";
	}
}
