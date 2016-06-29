package com.org.mgws.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.mgws.contants.CommonConstants;
import com.org.mgws.dto.CourseInfoDto;
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
        	List<CourseInfoDto> courseDtoList = new ArrayList<CourseInfoDto>();
        	for (TCourseInfo tCourseInfo : courseList) {
        		CourseInfoDto dto = new CourseInfoDto();
        		dto.setCoursedetails(tCourseInfo.getCoursedetails());
        		dto.setCoursename(tCourseInfo.getCoursename());
        		String pic = tCourseInfo.getCoursepic();
        		List<String> picList = new ArrayList<String>();
        		if (StringUtils.isNotEmpty(pic)) {
        			String[] arr = pic.split(",");
        			for (String str : arr) {
        				picList.add(str);
        			}
        		}
        		dto.setCoursepic(picList);
        		courseDtoList.add(dto);
        	}
        	
        	model.addAttribute("courseList", courseDtoList);
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
