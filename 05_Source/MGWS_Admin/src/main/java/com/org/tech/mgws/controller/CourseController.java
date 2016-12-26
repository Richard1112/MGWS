package com.org.tech.mgws.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
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
import com.org.mgws.entity.TCourseInfo;
import com.org.mgws.service.CourseService;

@Controller
public class CourseController extends BaseController {

	@Resource
	CourseService courseService;

	@RequestMapping(value = "/courseInit")
	public String init() {
		return "/course";
	}
	
	@RequestMapping(value = "/courseAddInit")
	public String addInit(Model model) {
		model.addAttribute("tCourseInfo", new TCourseInfo());
		return "/courseEdit";
	}
	
	@RequestMapping(value = "/course", method = RequestMethod.GET)
	@ResponseBody
	public PagingResult<Map<String, Object>> getAllCourse(HttpServletRequest req, HttpServletResponse response)
			throws UnsupportedEncodingException {

		String courseName = req.getParameter("courseName");
		if (courseName != null) {
			courseName = URLDecoder.decode(courseName, "UTF-8");
		}
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
		param.put("courseName", courseName);
		param.put("releaseFlg", releaseFlg);
		param.put("releaseDateF", releaseDateF);
		param.put("releaseDateT", releaseDateT);

		pagination.setParams(param);
		// 查询信息
		PagingResult<Map<String, Object>> pagingResult = courseService.queryByPage(pagination);
		return pagingResult;
	}

	@RequestMapping(value = "/courseEdit", method = RequestMethod.POST)
	public String save(@CurrentUser TAdminLoginInfo loginUser, @ModelAttribute TCourseInfo tCourseInfo, Model model) {
		
		if (StringUtils.isEmpty(tCourseInfo.getCourseno())) {
			String courseno = "CO" + DateFormatUtils.getDateFormatStr(DateFormatUtils.PATTEN_YMD_NO_SEPRATE) + CommonUtils.getRandomNum(6);
			tCourseInfo.setCourseno(courseno);
			tCourseInfo.setAdduserkey(loginUser.getAdminno());
			tCourseInfo.setAddtimestamp(DateFormatUtils.getCurrentDate());
			tCourseInfo.setReleasedate(DateFormatUtils.getCurrentDate());
			tCourseInfo.setUpdpgmid("CourseController");
			tCourseInfo.setUpdtimestamp(DateFormatUtils.getCurrentDate());
			tCourseInfo.setUpduserkey(loginUser.getAdminno());
			tCourseInfo.setCoursepic(tCourseInfo.getCoursepic());
			courseService.insert(tCourseInfo);
		} else {
			tCourseInfo.setUpdpgmid("CourseController");
			tCourseInfo.setUpdtimestamp(DateFormatUtils.getCurrentDate());
			tCourseInfo.setUpduserkey(loginUser.getAdminno());
			courseService.updateByPrimaryKey(tCourseInfo);
			tCourseInfo.setCoursepic(tCourseInfo.getCoursepic());
		}
		
		model.addAttribute("init", 0);
		return "/course";
	}
	
	@RequestMapping(value = "/courseDelete", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> delete(HttpServletRequest req) {
		String no = req.getParameter("no");
		Map<String, Object> map = new HashMap<String, Object>();
		if (no != null && !"".equals(no)) {
			TCourseInfo tCourseInfo =courseService.selectByPrimaryKey(Long.parseLong(no));
			courseService.deleteByPrimaryKey(tCourseInfo);
			map.put("isSuccess", true);
		}
		return map;
	}
	
	@RequestMapping(value = "/course/{no}", method = RequestMethod.GET)
	public String updateInit(@PathVariable String no, Model model) {
		if (no != null && !"".equals(no)) {
			TCourseInfo tCourseInfo =courseService.selectByPrimaryKey(Long.parseLong(no));
			model.addAttribute("tCourseInfo", tCourseInfo);
		}
		return "/courseEdit";
	}
}
