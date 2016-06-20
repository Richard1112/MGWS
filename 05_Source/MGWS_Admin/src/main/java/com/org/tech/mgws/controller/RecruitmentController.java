package com.org.tech.mgws.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.base.shiro.bind.annotation.CurrentUser;
import com.org.mgws.base.util.CommonUtils;
import com.org.mgws.base.util.DateFormatUtils;
import com.org.mgws.entity.TAdminLoginInfo;
import com.org.mgws.entity.TRecruitmentInfo;
import com.org.mgws.service.RecruitmentService;

@Controller
public class RecruitmentController extends BaseController {

	@Resource
	RecruitmentService recruitmentService;
	
	@RequestMapping(value = "/recruitmentInit")
	public String init() {
		return "/recruitment";
	}
	
	@RequestMapping(value = "/recruitmentAddInit")
	public String addInit(Model model) {
		model.addAttribute("tRecruitmentInfo", new TRecruitmentInfo());
		return "/recruitmentEdit";
	}

	@RequestMapping(value = "/recruitment", method = RequestMethod.GET)
	@ResponseBody
	public PagingResult<Map<String, Object>> getAllRecruitment(HttpServletRequest req, HttpServletResponse response) {

		String recruitjobtitle = req.getParameter("recruitjobtitle");
		String releaseFlg = req.getParameter("releaseFlg");
		String releaseDateF = req.getParameter("releaseDateF");
		String releaseDateT = req.getParameter("releaseDateT");
		Pagination pagination = new Pagination();
		Map<Object, Object> param = new HashMap<Object, Object>();
		// 取得当前页数,注意这是jqgrid自身的参数
		String page = req.getParameter("page");
		// 取得每页显示行数，,注意这是jqgrid自身的参数
		String rows = req.getParameter("rows");
		pagination.setPage(Integer.parseInt(page));
		pagination.setSize(Integer.parseInt(rows));
		param.put("recruitjobtitle", recruitjobtitle);
		param.put("releaseFlg", releaseFlg);
		param.put("releaseDateF", releaseDateF);
		param.put("releaseDateT", releaseDateT);

		pagination.setParams(param);
		// 查询信息
		PagingResult<Map<String, Object>> pagingResult = recruitmentService.queryByPage(pagination);
		return pagingResult;
	}

	@RequestMapping(value = "/recruitmentEdit", method = RequestMethod.POST)
	public String save(HttpServletRequest req,@CurrentUser TAdminLoginInfo loginUser,@ModelAttribute TRecruitmentInfo tRecruitmentInfo, Model model) {
		
		if (StringUtils.isEmpty(tRecruitmentInfo.getRecruitno())) {
			String recruitNo = "RE" + DateFormatUtils.getDateFormatStr(DateFormatUtils.PATTEN_YMD_NO_SEPRATE) + CommonUtils.getRandomNum(6);
			tRecruitmentInfo.setRecruitno(recruitNo);
			tRecruitmentInfo.setAdduserkey(loginUser.getAdminno());
			tRecruitmentInfo.setAddtimestamp(DateFormatUtils.getCurrentDate());
			tRecruitmentInfo.setReleasedate(DateFormatUtils.getCurrentDate());
			tRecruitmentInfo.setUpdpgmid("RecruitmentController");
			tRecruitmentInfo.setUpdtimestamp(DateFormatUtils.getCurrentDate());
			tRecruitmentInfo.setUpduserkey(loginUser.getAdminno());
			recruitmentService.insert(tRecruitmentInfo);
		} else {
			tRecruitmentInfo.setUpdpgmid("RecruitmentController");
			tRecruitmentInfo.setUpdtimestamp(DateFormatUtils.getCurrentDate());
			tRecruitmentInfo.setUpduserkey(loginUser.getAdminno());
			recruitmentService.updateByPrimaryKey(tRecruitmentInfo);
		}
		
		model.addAttribute("init", 0);
		return "/recruitment";
	}
	
	@RequestMapping(value = "/recruitmentDelete", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> delete(HttpServletRequest req) {
		String no = req.getParameter("no");
		Map<String, Object> map = new HashMap<String, Object>();
		if (no != null && !"".equals(no)) {
			TRecruitmentInfo tRecruitmentInfo =recruitmentService.selectByPrimaryKey(Long.parseLong(no));
			recruitmentService.deleteByPrimaryKey(tRecruitmentInfo);
			map.put("isSuccess", true);
		}
		return map;
	}
	
	@RequestMapping(value = "/recruitment/{no}", method = RequestMethod.GET)
	public String updateInit(@PathVariable String no, Model model) {
		if (no != null && !"".equals(no)) {
			TRecruitmentInfo tRecruitmentInfo =recruitmentService.selectByPrimaryKey(Long.parseLong(no));
			model.addAttribute("tRecruitmentInfo", tRecruitmentInfo);
		}
		return "/recruitmentEdit";
	}
}
