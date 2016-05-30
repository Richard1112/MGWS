package com.org.mgws.controller.main;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.mgws.base.util.DateFormatUtils;
import com.org.mgws.contants.CommonConstants;
import com.org.mgws.controller.BaseController;
import com.org.mgws.entity.TRecruitmentInfo;
import com.org.mgws.service.MainService;

@Controller
@RequestMapping("/main")
public class MainController extends BaseController {

	@Resource
	private MainService mainService;
	
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
        	List<TRecruitmentInfo> inviteInfo = mainService.getAllTRecruitmentInfo();
        	model.addAttribute("inviteInfo", inviteInfo);
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
