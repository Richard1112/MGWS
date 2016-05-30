package com.org.mgws.controller.main;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.mgws.base.util.DateFormatUtils;
import com.org.mgws.contants.CommonConstants;
import com.org.mgws.controller.BaseController;

@Controller
@RequestMapping("/main")
public class MainController extends BaseController {

	/**
     * 进入首页
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "/init")
    public String init(Model model, HttpServletResponse response, HttpSession session) {
        try {
        	// 检索所有的招聘信息
        	
        	// 投资信息
        	model.addAttribute("msg_info", super.getPageMessage("MAIN_MSG_INFO"));
        	// 当前时间
        	model.addAttribute("curtime", DateFormatUtils.getAbbreviationEngTime());
            return "main";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
}
