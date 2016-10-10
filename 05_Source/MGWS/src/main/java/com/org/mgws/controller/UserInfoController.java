/**
 * 
 */
package com.org.mgws.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.mgws.base.common.MyMap;
import com.org.mgws.contants.CommonConstants;
import com.org.mgws.dto.UserBasicInfo;
import com.org.mgws.service.UserInfoService;

/**
 * @author x-wang
 *
 */
@Controller
@RequestMapping("/basic")
public class UserInfoController extends BaseController {

	@Resource
	UserInfoService userInfoService;

	@RequestMapping(value = "/init")
	public String init(Model model, HttpServletResponse response, HttpSession session) {
		try {
			String division = (String) session.getAttribute("user_Division");
			String customerNo = (String) session.getAttribute("user_customerNo");
			String loginId = (String) session.getAttribute("user_Id");
			UserBasicInfo userBasicInfo = userInfoService.getBasicInfo(customerNo, division);
			userBasicInfo.setDivision(division);
			userBasicInfo.setLoginId(loginId);
			List<MyMap> sexList = new ArrayList<MyMap>();
			MyMap myMap = new MyMap();
			myMap.setKey("0");
			myMap.setValue("男");
			MyMap myMap1 = new MyMap();
			myMap1.setKey("1");
			myMap1.setValue("女");
			sexList.add(myMap);
			sexList.add(myMap1);
			model.addAttribute("sexList", sexList);
			model.addAttribute("division", division);
			model.addAttribute("userBasicInfo", userBasicInfo);
			return "userInfo";
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
			return CommonConstants.ERROR_PAGE;
		}
	}

	@RequestMapping(value = "/update")
	public String update(Model model, @ModelAttribute UserBasicInfo userBasicInfo, HttpSession session) {
		try {
			userInfoService.updateBasicInfo(userBasicInfo);
			List<MyMap> sexList = new ArrayList<MyMap>();
			MyMap myMap = new MyMap();
			myMap.setKey("0");
			myMap.setValue("男");
			MyMap myMap1 = new MyMap();
			myMap1.setKey("1");
			myMap1.setValue("女");
			sexList.add(myMap);
			sexList.add(myMap1);
			model.addAttribute("sexList", sexList);
			model.addAttribute("division", userBasicInfo.getDivision());
			model.addAttribute("userBasicInfo", userBasicInfo);
			return "userInfo";
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
			return CommonConstants.ERROR_PAGE;
		}
	}
}
