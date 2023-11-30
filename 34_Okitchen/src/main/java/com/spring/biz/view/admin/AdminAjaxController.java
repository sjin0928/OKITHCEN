package com.spring.biz.view.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.biz.admin.AdminService;

@RestController
@RequestMapping("/admin")
public class AdminAjaxController {
	@Autowired
	private AdminService adminService;
}
