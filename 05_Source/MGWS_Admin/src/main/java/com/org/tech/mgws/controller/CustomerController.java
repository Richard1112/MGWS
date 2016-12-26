/**
 * 
 */
package com.org.tech.mgws.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
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
import com.org.mgws.service.FUserService;

/**
 * @author x-wang
 *
 */

@Controller
public class CustomerController extends BaseController {

	@Resource
	FUserService fUserService;

	@RequestMapping(value = "/customerInit")
	public String init() {
		return "/customerList";
	}

	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	@ResponseBody
	public PagingResult<Map<String, Object>> getAllCustomer(HttpServletRequest req, HttpServletResponse response)
			throws UnsupportedEncodingException {

		String customerName = req.getParameter("customerName");
		if (customerName != null) {
			customerName = URLDecoder.decode(customerName, "UTF-8");
		}
		String customerType = req.getParameter("customerType");
		Pagination pagination = new Pagination();
		Map<Object, Object> param = new HashMap<Object, Object>();
		// 取得当前页数,注意这是jqgrid自身的参数
		String page = req.getParameter("page");
		// 取得每页显示行数，,注意这是jqgrid自身的参数
		String rows = req.getParameter("rows");
		pagination.setPage(Integer.parseInt(page));
		pagination.setSize(Integer.parseInt(rows));

		param.put("customerName", customerName);
		param.put("customerType", customerType);

		pagination.setParams(param);
		// 查询信息
		PagingResult<Map<String, Object>> pagingResult = fUserService.getAllCustomers(pagination);
		return pagingResult;
	}
}
