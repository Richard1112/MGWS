/**
 * 
 */
package com.org.mgws.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.util.CollectionUtils;
import org.springframework.stereotype.Service;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.base.util.DateFormatUtils;
import com.org.mgws.dao.TInvestmentValueDao;
import com.org.mgws.dao.TPurchaseRecordDao;
import com.org.mgws.dto.PurchaseInfo;
import com.org.mgws.entity.TInvestmentValue;
import com.org.mgws.service.BaseService;
import com.org.mgws.service.ProductService;

/**
 * @author x-wang
 *
 */
@Service
public class ProductServiceImpl extends BaseService implements ProductService {

	@Resource
	TPurchaseRecordDao tPurchaseRecordDao;
	@Resource
	TInvestmentValueDao tInvestmentValueDao;
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.org.mgws.service.ProductService#getProductsByCustomerNo(java.lang.
	 * String)
	 */
	@Override
	public List<PurchaseInfo> getProductsByCustomerNo(String customerNo) {
		return tPurchaseRecordDao.selectByCustomerNo(customerNo);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.org.mgws.service.ProductService#getProductValueById(java.lang.String)
	 */
	@Override
	public PagingResult<TInvestmentValue> getProductValueById(Pagination pagination) throws Exception {
		PagingResult<TInvestmentValue> itemList = tInvestmentValueDao.selectByProductId(pagination);
		if (!CollectionUtils.isEmpty(itemList.getResultList())) {
            for (TInvestmentValue tmp : itemList.getResultList()) {
            	tmp.setDate(DateFormatUtils.formatDate(tmp.getDate(), "3"));
            }
        }
		return itemList;
	}

}
