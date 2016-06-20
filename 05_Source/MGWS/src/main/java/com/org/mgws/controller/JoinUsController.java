package com.org.mgws.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.mgws.base.util.DateFormatUtils;
import com.org.mgws.contants.CommonConstants;
import com.org.mgws.dto.JobInfoDto;
import com.org.mgws.entity.TRecruitmentInfo;
import com.org.mgws.service.MainService;

@Controller
@RequestMapping("/joinus")
public class JoinUsController extends BaseController {
    
	@Resource
	private MainService mainService;
    /**
     * 加入我们
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "/init")
    public String init(Model model, HttpServletResponse response, HttpSession session) {
        try {
        	// 检索所有的招聘信息
        	List<TRecruitmentInfo> inviteInfo = mainService.getAllTRecruitmentInfo();
        	List<JobInfoDto> jobInfo = new ArrayList<JobInfoDto>();
        	for (TRecruitmentInfo info : inviteInfo) {
        		JobInfoDto dto = new JobInfoDto();
        		dto.setRecruitdetails(info.getRecruitdetails());
        		dto.setRecruitjobtitle(info.getRecruitjobtitle());
        		dto.setRecruitlocale(info.getRecruitlocale());
        		dto.setRecruitnumber(info.getRecruitnumber());
        		dto.setRecruitobject(info.getRecruitobject());
        		dto.setReleasedate(DateFormatUtils.getAbbreviationEngTimeByDate(info.getReleasedate()));
        		
        		jobInfo.add(dto);
        	}
        	model.addAttribute("inviteInfo", jobInfo);
            return "joinus";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
}
