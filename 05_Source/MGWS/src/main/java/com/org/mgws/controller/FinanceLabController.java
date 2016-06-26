package com.org.mgws.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.mgws.contants.CommonConstants;
import com.org.mgws.entity.TCourseInfo;
import com.org.mgws.service.MainService;

@Controller
@RequestMapping("/financelab")
public class FinanceLabController extends BaseController {
    
	@Resource
	private MainService mainService;
    /**
     * 金融实验室
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "/init")
    public String init(Model model, HttpServletResponse response, HttpSession session) {
        try {
        	List<TCourseInfo> courseList = mainService.getAllTCourseInfo();
        	model.addAttribute("courseList", courseList);
        	model.addAttribute("picpath", super.getApplicationMessage("PIC_PATH"));
            return "financelab";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
}
