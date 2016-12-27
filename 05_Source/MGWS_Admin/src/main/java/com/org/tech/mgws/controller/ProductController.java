/**
 * 
 */
package com.org.tech.mgws.controller;

import java.net.URLDecoder;
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
import com.org.mgws.entity.TPurchaseRecord;
import com.org.mgws.service.FUserService;
import com.org.mgws.service.ProductService;

/**
 * @author x-wang
 *
 */

@Controller
public class ProductController extends BaseController {

	@Resource
	ProductService productService;
	@Resource
	FUserService fUserService;

	@RequestMapping(value = "/productInit")
	public String init() {
		return "/productsList";
	}

	@RequestMapping(value = "/productTadeInit")
	public String tradeInit() {
		return "/productsTrade";
	}

	@RequestMapping(value = "/productCt", method = RequestMethod.GET)
	@ResponseBody
	public PagingResult<Map<String, Object>> getAllCustomerPro(HttpServletRequest req, HttpServletResponse response)
			throws Exception {

		String customerName = req.getParameter("customerName");
		if (customerName != null) {
			customerName = URLDecoder.decode(customerName, "UTF-8");
		}
		Pagination pagination = new Pagination();
		Map<Object, Object> param = new HashMap<Object, Object>();
		// 取得当前页数,注意这是jqgrid自身的参数
		String page = req.getParameter("page");
		// 取得每页显示行数，,注意这是jqgrid自身的参数
		String rows = req.getParameter("rows");
		pagination.setPage(Integer.parseInt(page));
		pagination.setSize(Integer.parseInt(rows));

		param.put("customerNo", customerName);

		pagination.setParams(param);
		// 查询信息
		PagingResult<Map<String, Object>> pagingResult = productService.getAllCustomerProducts(pagination);
		return pagingResult;
	}

	@RequestMapping(value = "/selectValue", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getSelectValue(HttpServletRequest req, HttpServletResponse response) throws Exception {

		String division = req.getParameter("division");
		Map<String, Object> map = new HashMap<String, Object>();
		// 查询信息
		if ("1".equals(division)) {
			List<Map<String, Object>> selects = productService.getAllProducts();
			map.put("selects", selects);
		} else {
			List<Map<String, Object>> selects = fUserService.getAllCustomers();
			map.put("selects", selects);
		}
		return map;
	}

	@RequestMapping(value = "/productCtEdit", method = RequestMethod.POST)
	@ResponseBody
	public void saveCt(HttpServletRequest req) {
		String oper = req.getParameter("oper");

		if ("del".equals(oper)) {
			String id = req.getParameter("id");
			productService.deletePurchase(id);
		} else {
			String productId = req.getParameter("productName");
			String customerNo = req.getParameter("customerNo");
			String dateFrom = req.getParameter("dateFrom");
			String dateTo = req.getParameter("dateTo");
			TPurchaseRecord record = new TPurchaseRecord();
			record.setCustomerNo(customerNo);
			record.setProductId(Long.parseLong(productId));
			boolean flg = productService.checkProductValue(record);
			if (flg) {
				record.setDateFrom(dateFrom.replace("/", ""));
				record.setDateTo(dateTo.replace("/", ""));
				productService.saveProductValue(record);
			} else {

			}
		}

	}

	@RequestMapping(value = "/saveCheck", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> saveCheck(HttpServletRequest req) {
		String oper = req.getParameter("oper");
		Map<String, Object> map = new HashMap<String, Object>();
		if ("del".equals(oper)) {

		} else {
			String productId = req.getParameter("productName");
			String customerNo = req.getParameter("customerNo");
			TPurchaseRecord record = new TPurchaseRecord();
			record.setCustomerNo(customerNo);
			record.setProductId(Long.parseLong(productId));
			boolean flg = productService.checkProductValue(record);
			if (flg) {
				map.put("saveFlg", true);
			} else {
				map.put("saveFlg", false);
			}
		}
		return map;
	}

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	@ResponseBody
	public PagingResult<Map<String, Object>> getAllCustomer(HttpServletRequest req, HttpServletResponse response)
			throws Exception {

		String productName = req.getParameter("productName");
		if (productName != null) {
			productName = URLDecoder.decode(productName, "UTF-8");
		}
		Pagination pagination = new Pagination();
		Map<Object, Object> param = new HashMap<Object, Object>();
		// 取得当前页数,注意这是jqgrid自身的参数
		String page = req.getParameter("page");
		// 取得每页显示行数，,注意这是jqgrid自身的参数
		String rows = req.getParameter("rows");
		pagination.setPage(Integer.parseInt(page));
		pagination.setSize(Integer.parseInt(rows));

		param.put("productName", productName);

		pagination.setParams(param);
		// 查询信息
		PagingResult<Map<String, Object>> pagingResult = productService.getAllProducts(pagination);
		return pagingResult;
	}

	@RequestMapping(value = "/productEdit", method = RequestMethod.POST)
	@ResponseBody
	public void save(HttpServletRequest req) {
		String oper = req.getParameter("oper");
		String productId = req.getParameter("id");
		String productName = req.getParameter("productName");
		if ("del".equals(oper)) {
			productService.deleteProduct(productId);
		} else {
			productService.updateProduct(productId, productName);
		}
	}

}
