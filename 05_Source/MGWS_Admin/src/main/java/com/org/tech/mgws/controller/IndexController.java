package com.org.tech.mgws.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.mgws.base.shiro.bind.annotation.CurrentUser;
import com.org.mgws.entity.TAdminLoginInfo;

@Controller
public class IndexController {

	@RequestMapping("/index")
	public String index(@CurrentUser TAdminLoginInfo loginUser, HttpServletRequest req, Model model) {

		return "/index";
	}

	@RequestMapping("/welcome")
	public String welcome() {
		return "welcome";
	}
}
