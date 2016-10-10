package com.org.mgws.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.contants.CommonConstants;
import com.org.mgws.dto.LoginInfoDto;
import com.org.mgws.dto.PurchaseInfo;
import com.org.mgws.entity.TInvestmentValue;
import com.org.mgws.service.ProductService;

@Controller
@RequestMapping("/products")
public class ProductsController extends BaseController {

	@Resource
	ProductService productService;

	/**
	 * 产品查询
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/init")
	public String init(Model model, HttpServletResponse response, HttpSession session) {
		try {
			if (StringUtils.isEmpty(session.getAttribute("user_customerNo"))) {
				LoginInfoDto loginInfoDto = new LoginInfoDto();
				model.addAttribute("loginInfoDto", loginInfoDto);
				return "redirect:/Login/loginInit";
			} else {
				String customerNo = (String) session.getAttribute("user_customerNo");
				List<PurchaseInfo> productsList = productService.getProductsByCustomerNo(customerNo);
				model.addAttribute("productsList", productsList);
				return "products";
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
			return CommonConstants.ERROR_PAGE;
		}
	}

	@RequestMapping(value = "/getProductValue")
	@ResponseBody
	public Map<String, Object> getProductValue(HttpServletRequest request, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String productId = request.getParameter("productId");
			String pageNo = request.getParameter("pageNo");
			String dateFrom = request.getParameter("dateFrom");
			String dateTo = request.getParameter("dateTo");

			Pagination pagination = new Pagination(Integer.valueOf(pageNo));
			Map<Object, Object> params = new HashMap<Object, Object>();
			params.put("productId", productId);
			params.put("dateFrom", dateFrom);
			params.put("dateTo", dateTo);

			pagination.setParams(params);

			PagingResult<TInvestmentValue> valueList = productService.getProductValueById(pagination);
			if (valueList != null && valueList.getPageSize() > 0) {
				map.put("isException", true);
				map.put("tInvestmentValue", valueList.getResultList());
				map.put("pageInfo", valueList);
				map.put("pageList", valueList.getPageList());
			} else {
				map.put("isException", false);
			}
		} catch (Exception e) {
			map.put("isException", false);
		}
		return map;
	}
}
