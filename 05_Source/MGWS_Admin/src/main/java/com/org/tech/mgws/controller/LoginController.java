package com.org.tech.mgws.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping(value = "/login")
	public String showLoginForm(HttpServletRequest req, HttpServletResponse response, Model model) {
		String exceptionClassName = (String) req.getAttribute("shiroLoginFailure");
		String error = null;
		if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
			error = "用户名/密码错误";
		} else if (IncorrectCredentialsException.class.getName().equals(exceptionClassName)) {
			error = "用户名/密码错误";
		} else if ("jCaptcha.error".equals(exceptionClassName)) {
			error = "验证码错误";
		} else {
			error = "用户名/密码错误";
		}
		model.addAttribute("error", error);
		return "login";
	}

}
