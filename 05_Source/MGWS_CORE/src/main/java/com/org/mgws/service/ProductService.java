/**
 * 
 */
package com.org.mgws.service;

import java.util.List;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dto.PurchaseInfo;
import com.org.mgws.entity.TInvestmentValue;

/**
 * @author x-wang
 *
 */
public interface ProductService {

	/**
	 * 根据客户编号获取产品列表
	 * 
	 * @param customerNo
	 *            客户编号
	 * @return List<ProductInfo> 产品列表
	 */
	List<PurchaseInfo> getProductsByCustomerNo(String customerNo);

	/**
	 * 根据产品id获取净值
	 * 
	 * @param productId
	 *            产品id
	 * @return TInvestmentValue 净值
	 */
	PagingResult<TInvestmentValue> getProductValueById(Pagination pagination) throws Exception;
}
