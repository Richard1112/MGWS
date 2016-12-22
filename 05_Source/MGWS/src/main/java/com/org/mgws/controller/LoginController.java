package com.org.mgws.controller;

import java.sql.Timestamp;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.mgws.base.common.CommonValidate;
import com.org.mgws.contants.CommonConstants;
import com.org.mgws.dto.LoginInfoDto;
import com.org.mgws.entity.TCustomerLoginInfo;
import com.org.mgws.entity.TEnterpriseBasicInfo;
import com.org.mgws.entity.TIndividualBasicInfo;
import com.org.mgws.service.FUserService;

/**
 * 登录
 * 
 * @author x-wang
 */
@Controller
@RequestMapping("/Login")
public class LoginController extends BaseController {

	@Resource
	FUserService fUserService;
	
	@RequestMapping("/loginInit")
	public String loginInit(Model model) {

		model.addAttribute("loginInfoDto", new LoginInfoDto());
		return "login";
	}

	@RequestMapping("/logOut")
	public String logOut(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/main/init";
	}
	
	/**
	 * 用户登录
	 * 
	 * @param request
	 *            页面请求
	 * @param loginBean
	 *            用户登录用Bean
	 * @param model
	 *            页面对象
	 * @param errors
	 *            错误信息
	 * @return 跳转id
	 */
	@RequestMapping("/UserLogin")
	public String userLogin(HttpServletRequest request, @ModelAttribute LoginInfoDto loginBean, Model model,
			Errors errors) {
		try {
			HttpSession session = request.getSession();
			// String code = (String) session.getAttribute("kapatchCode");
			// 用户名非空
			
			if (CommonValidate.nullCheck(loginBean.getUserId())) {
			errors.rejectValue("userId", "E00001"); }
			
			// 密码非空
			if (CommonValidate.nullCheck(loginBean.getUserPassword()))
			{ errors.rejectValue("userPassword", "E00002"); }
			
			// 验证码非空
			/*
			 * if (CommonValidate.nullCheck(loginBean.getPartaCode())) {
			 * errors.rejectValue("partaCode", "E00003"); } else { if
			 * (!code.toLowerCase().equals(loginBean.getPartaCode().toLowerCase(
			 * ))) { errors.rejectValue("partaCode", "E00004"); } }
			 */

			model.addAttribute("isLogin", 0);
			// check出错，返回登录画面
			if (errors.hasErrors()) {
				loginBean.setPartaCode("");
				model.addAttribute("loginInfoDto", loginBean);
				return "login";
			}

			TCustomerLoginInfo userBean = fUserService.userLogin(loginBean);
			if (userBean != null && userBean.getLoginId() != null) {
				// session做成
				session.setAttribute("user_Key", userBean.getNo());
				session.setAttribute("user_Id", userBean.getLoginId());
				session.setAttribute("user_customerNo", userBean.getCustomerNo());
				session.setAttribute("user_Division", userBean.getDivision());
				session.setAttribute("user_applicationFlg", userBean);
				String division = userBean.getDivision();
				model.addAttribute("division", division);
				// 0：个人；1：企业
				// 获取基本信息
				if ("0".equals(division)) {
					TIndividualBasicInfo tIndividualBasicInfo = fUserService
							.getIndividualBasicInfo(userBean.getCustomerNo());
					if (tIndividualBasicInfo != null) {
						session.setAttribute("nick_name",
								tIndividualBasicInfo.getCnSurName() + tIndividualBasicInfo.getCnGivenName());
						model.addAttribute("nick_name",
								tIndividualBasicInfo.getCnSurName() + tIndividualBasicInfo.getCnGivenName());
					}
				} else {
					TEnterpriseBasicInfo tEnterpriseBasicInfo = fUserService
							.getEnterpriseBasicInfo(userBean.getCustomerNo());
					if (tEnterpriseBasicInfo != null) {
						session.setAttribute("company_name", tEnterpriseBasicInfo.getCnName());
						model.addAttribute("company_name", tEnterpriseBasicInfo.getCnName());
					}
				}
				model.addAttribute("loginInfoDto", userBean);

				return "redirect:/products/init";
			} else {
				// 用户名不存在或密码错误
				errors.rejectValue("userId", "E00005");
				model.addAttribute("loginInfoDto", loginBean);
				return "login";
			}

		} catch (Exception e) {
			logger.error(e.getMessage());
			model.addAttribute("loginInfoDto", loginBean);
			return "login";
		}
	}

	@RequestMapping(value = "/registInit")
	public String registInit(Model model, @ModelAttribute LoginInfoDto loginBean) {
		return "regist";
	}
	@RequestMapping(value = "/regist")
	public String regist(Model model, @ModelAttribute LoginInfoDto loginBean, Errors errors) {
		try {
			TCustomerLoginInfo record = new TCustomerLoginInfo();

			if ("0".equals(loginBean.getDivision())) {
				if (!CommonValidate.phoneCheck(loginBean.getUserId())) {
					errors.rejectValue("userId", "E00008");
				}
				record.setLoginId(loginBean.getUserId());
			} else {
				if (CommonValidate.mailCheck(loginBean.getUserIdForCo())) {
					errors.rejectValue("userIdForCo", "E00007");
				}
				record.setLoginId(loginBean.getUserIdForCo());
			}
			record.setLoginPass(loginBean.getUserPassword());
			record.setDivision(loginBean.getDivision());
			record.setLoginStatus("0");
			record.setCanLogin("0");
			record.setDeleteFlg("0");
			record.setAddtimestamp(new Timestamp(System.currentTimeMillis()));
			fUserService.userRegist(record);
			return "login";
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
			return CommonConstants.ERROR_PAGE;
		}
	}
}
