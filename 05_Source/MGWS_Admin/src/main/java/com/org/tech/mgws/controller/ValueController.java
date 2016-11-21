/**
 * 
 */
package com.org.tech.mgws.controller;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.entity.TInvestmentValue;
import com.org.mgws.service.ProductService;

/**
 * @author x-wang
 *
 */

@Controller
public class ValueController extends BaseController {

	@Resource
	ProductService productService;

	@RequestMapping(value = "/valueInit")
	public String init() {
		return "/valueList";
	}

	@RequestMapping(value = "/value", method = RequestMethod.GET)
	@ResponseBody
	public PagingResult<Map<String, Object>> getAllValue(HttpServletRequest req, HttpServletResponse response) {

		String productName = req.getParameter("productName");
		String dateF = req.getParameter("dateF");
		String dateT = req.getParameter("dateT");
		Pagination pagination = new Pagination();
		Map<Object, Object> param = new HashMap<Object, Object>();
		// 取得当前页数,注意这是jqgrid自身的参数
		String page = req.getParameter("page");
		// 取得每页显示行数，,注意这是jqgrid自身的参数
		String rows = req.getParameter("rows");
		pagination.setPage(Integer.parseInt(page));
		pagination.setSize(Integer.parseInt(rows));

		param.put("productName", productName);
		param.put("dateFrom", dateF);
		param.put("dateTo", dateT);

		pagination.setParams(param);
		// 查询信息
		PagingResult<Map<String, Object>> pagingResult = productService.getProductValue(pagination);
		return pagingResult;
	}

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getAllCustomer(HttpServletRequest req, HttpServletResponse response)
			throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();

		// 查询信息
		List<Map<String, Object>> pagingResult = productService.getAllProducts();
		map.put("resultList", pagingResult);
		return map;
	}
	@RequestMapping(value = "/valueEdit", method = RequestMethod.POST)
	@ResponseBody
	public void save(HttpServletRequest req) {
		String oper = req.getParameter("oper");
		String id = req.getParameter("id");
		String netValue = req.getParameter("netValue");
		String productId = req.getParameter("productName");
		String date = req.getParameter("date");
		if ("del".equals(oper)) {
			productService.deleteProductValue(id);
		} else {
			TInvestmentValue record = new TInvestmentValue();
			record.setNetValue(new BigDecimal(netValue));
			record.setProductId(productId != null ? Long.parseLong(productId) : 0);
			record.setDate(date.replace("/", ""));
			productService.updateProductValue(id, record);
		}
	}
}
