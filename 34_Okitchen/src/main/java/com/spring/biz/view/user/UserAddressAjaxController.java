package com.spring.biz.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.spring.biz.user.UserAddressService;
import com.spring.biz.user.UsersVO;

@RestController
public class UserAddressAjaxController {
	private UserAddressService userAddressService;

	@Autowired
	public UserAddressAjaxController(UserAddressService userAddressService) {
		System.out.println(">> useraddressAjaxController(userAddressService) 객체생성 ");
		this.userAddressService = userAddressService;
	}

	// 요청 사항 저장
	@RequestMapping("/userAddress/saveRequest.do")
	@ResponseBody
	public String saveRequest(@ModelAttribute UsersVO formData, HttpSession session) {
		System.out.println(formData);
		session.setAttribute("formData", formData);
		return "success";
	}

	// 배송지 변경
	@RequestMapping("/userAddress/addressChange.do")
	@ResponseBody
	public int addressChange(@RequestBody UsersVO userAddress, HttpSession session) {

		UsersVO user = (UsersVO) session.getAttribute("loginUser");
		System.out.println(">> addressChange UserVO: " + user);

		user.setUserAddress(userAddress.getUserAddress());

		userAddressService.updateAddress(user);
		return 1;
	}
}
