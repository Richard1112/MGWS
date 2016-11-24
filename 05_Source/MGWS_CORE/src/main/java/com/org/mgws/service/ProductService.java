/**
 * 
 */
package com.org.mgws.service;

import java.util.List;
import java.util.Map;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dto.PurchaseInfo;
import com.org.mgws.entity.TInvestmentValue;
import com.org.mgws.entity.TPurchaseRecord;

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

	/**
	 * 根据产品
	 * 
	 * @return PagingResult<Map<String, Object>> 产品信息
	 */
	PagingResult<Map<String, Object>> getAllProducts(Pagination pagination) throws Exception;

	PagingResult<Map<String, Object>> getAllCustomerProducts(Pagination pagination) throws Exception;

	List<Map<String, Object>> getAllProducts() throws Exception;

	void updateProduct(String productId, String productName);

	void deleteProduct(String productId);

	PagingResult<Map<String, Object>> getProductValue(Pagination pagination);

	void deleteProductValue(String id);

	void updateProductValue(String id, TInvestmentValue record);

	void saveProductValue(TPurchaseRecord record);

	boolean checkProductValue(TPurchaseRecord record);

	void deletePurchase(String id);

	void uploadProductValue(List<TInvestmentValue> record);
}
