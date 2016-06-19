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
import com.org.mgws.entity.TAssetCart;
import com.org.mgws.service.AssetCartService;

@Controller
public class AssetCartController extends BaseController {

	@Resource
	AssetCartService assetCartService;

	@RequestMapping(value = "/assetCartInit")
	public String init() {
		return "/assetCart";
	}
	
	@RequestMapping(value = "/assetCartAddInit")
	public String addInit(Model model) {
		model.addAttribute("tAssetCart", new TAssetCart());
		return "/assetCartEdit";
	}
	
	@RequestMapping(value = "/assetCart", method = RequestMethod.GET)
	@ResponseBody
	public PagingResult<Map<String, Object>> getAllCourse(HttpServletRequest req, HttpServletResponse response) {
		String assetName = req.getParameter("assetName");
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
		param.put("assetName", assetName);
		param.put("releaseFlg", releaseFlg);
		param.put("releaseDateF", releaseDateF);
		param.put("releaseDateT", releaseDateT);

		pagination.setParams(param);
		// 查询信息
		PagingResult<Map<String, Object>> pagingResult = assetCartService.queryByPage(pagination);
		return pagingResult;
	}

	@RequestMapping(value = "/assetCartEdit", method = RequestMethod.POST)
	public String save(@CurrentUser TAdminLoginInfo loginUser, @ModelAttribute TAssetCart tAssetCartInfo, Model model) {
		
		if (StringUtils.isEmpty(tAssetCartInfo.getPartnerno())) {
			String AssetCartno = "PA" + DateFormatUtils.getDateFormatStr(DateFormatUtils.PATTEN_YMD_NO_SEPRATE) + CommonUtils.getRandomNum(6);
			tAssetCartInfo.setPartnerno(AssetCartno);
			tAssetCartInfo.setAdduserkey(loginUser.getAdminno());
			tAssetCartInfo.setAddtimestamp(DateFormatUtils.getCurrentDate());
			tAssetCartInfo.setReleasedate(DateFormatUtils.getCurrentDate());
			tAssetCartInfo.setUpdpgmid("AssetCartController");
			tAssetCartInfo.setUpdtimestamp(DateFormatUtils.getCurrentDate());
			tAssetCartInfo.setUpduserkey(loginUser.getAdminno());
			assetCartService.insert(tAssetCartInfo);
		} else {
			tAssetCartInfo.setUpdpgmid("AssetCartController");
			tAssetCartInfo.setUpdtimestamp(DateFormatUtils.getCurrentDate());
			tAssetCartInfo.setUpduserkey(loginUser.getAdminno());
			assetCartService.updateByPrimaryKey(tAssetCartInfo);
		}
		
		model.addAttribute("init", 0);
		return "/assetCart";
	}
	
	@RequestMapping(value = "/assetCartDelete", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> delete(HttpServletRequest req) {
		String no = req.getParameter("no");
		Map<String, Object> map = new HashMap<String, Object>();
		if (no != null && !"".equals(no)) {
			TAssetCart tAssetCartInfo =assetCartService.selectByPrimaryKey(Long.parseLong(no));
			assetCartService.deleteByPrimaryKey(tAssetCartInfo);
			map.put("isSuccess", true);
		}
		return map;
	}
	
	@RequestMapping(value = "/assetCart/{no}", method = RequestMethod.GET)
	public String updateInit(@PathVariable String no, Model model) {
		if (no != null && !"".equals(no)) {
			TAssetCart tAssetCartInfo =assetCartService.selectByPrimaryKey(Long.parseLong(no));
			model.addAttribute("tAssetCart", tAssetCartInfo);
		}
		return "/assetCartEdit";
	}
}
