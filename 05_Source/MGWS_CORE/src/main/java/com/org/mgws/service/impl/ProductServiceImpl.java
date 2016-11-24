/**
 * 
 */
package com.org.mgws.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.util.CollectionUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.base.util.DateFormatUtils;
import com.org.mgws.dao.TInvestmentMasterDao;
import com.org.mgws.dao.TInvestmentValueDao;
import com.org.mgws.dao.TPurchaseRecordDao;
import com.org.mgws.dto.PurchaseInfo;
import com.org.mgws.entity.TInvestmentMaster;
import com.org.mgws.entity.TInvestmentValue;
import com.org.mgws.entity.TPurchaseRecord;
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
	@Resource
	TInvestmentMasterDao tInvestmentMasterDao;
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.org.mgws.service.ProductService#getProductsByCustomerNo(java.lang.
	 * String)
	 */
	@Override
	public List<PurchaseInfo> getProductsByCustomerNo(String customerNo) {
		return tPurchaseRecordDao.selectByCustomerNo1(customerNo);
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

	@Override
	public PagingResult<Map<String, Object>> getProductValue(Pagination pagination) {
		return tInvestmentValueDao.selectProductsValue(pagination);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.org.mgws.service.ProductService#getAllProducts(com.org.mgws.base.page
	 * .Pagination)
	 */
	@Override
	public PagingResult<Map<String, Object>> getAllProducts(Pagination pagination) throws Exception {
		return tInvestmentMasterDao.queryByPage(pagination);
	}

	@Override
	public PagingResult<Map<String, Object>> getAllCustomerProducts(Pagination pagination) throws Exception {
		return tInvestmentMasterDao.queryByPage2(pagination);
	}
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.org.mgws.service.ProductService#getAllProducts(com.org.mgws.base.page
	 * .Pagination)
	 */
	@Override
	public List<Map<String, Object>> getAllProducts() throws Exception {
		return tInvestmentMasterDao.queryAll();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.org.mgws.service.ProductService#updateProduct(java.lang.String,
	 * java.lang.String)
	 */
	@Override
	public void updateProduct(String productId, String productName) {
		if (StringUtils.isEmpty(productId)) {
			TInvestmentMaster record = new TInvestmentMaster();
			record.setProductName(productName);
			tInvestmentMasterDao.insert(record);
		} else {
			TInvestmentMaster record = tInvestmentMasterDao.selectByPrimaryKey(Long.valueOf(productId));
			record.setProductName(productName);
			tInvestmentMasterDao.updateByPrimaryKey(record);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.org.mgws.service.ProductService#deleteProduct(java.lang.String)
	 */
	@Override
	public void deleteProduct(String productId) {
		TInvestmentMaster record = tInvestmentMasterDao.selectByPrimaryKey(Long.valueOf(productId));
		tInvestmentMasterDao.deleteByPrimaryKey(record);
	}

	@Override
	public void deleteProductValue(String id) {
		TInvestmentValue record = tInvestmentValueDao.selectByPrimaryKey(Long.valueOf(id));
		tInvestmentValueDao.deleteByPrimaryKey(record);
	}

	@Override
	public void updateProductValue(String id, TInvestmentValue record) {
		if (StringUtils.isEmpty(id)) {
			tInvestmentValueDao.insert(record);
		} else {
			TInvestmentValue record1 = tInvestmentValueDao.selectByPrimaryKey(Long.valueOf(id));
			record1.setNetValue(record.getNetValue());
			tInvestmentValueDao.updateByPrimaryKey(record1);
		}
	}

	@Override
	public void saveProductValue(TPurchaseRecord record) {
		tPurchaseRecordDao.insert(record);
	}

	@Override
	public boolean checkProductValue(TPurchaseRecord record) {
		List<PurchaseInfo> purchaseInfoList = tPurchaseRecordDao.selectByCustomerNo(record.getCustomerNo());
		if (purchaseInfoList != null) {
			boolean flg = true;
			for (PurchaseInfo tmp : purchaseInfoList) {
				if (record.getProductId() == tmp.getProductId()) {
					flg = false;
					break;
				}
			}
			return flg;
		} else {
			return true;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.org.mgws.service.ProductService#deletePurchase(com.org.mgws.entity.
	 * TPurchaseRecord)
	 */
	@Override
	public void deletePurchase(String id) {
		TPurchaseRecord record = new TPurchaseRecord();
		record.setId(Long.parseLong(id));
		tPurchaseRecordDao.deleteByPrimaryKey(record);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.org.mgws.service.ProductService#uploadProductValue(com.org.mgws.
	 * entity.TInvestmentValue)
	 */
	@Override
	public void uploadProductValue(List<TInvestmentValue> record) {
		if (record != null) {
			for (TInvestmentValue tmp : record) {
				TInvestmentValue tb = tInvestmentValueDao.checkByProductIdAndDate(tmp.getProductId().toString(),
						tmp.getDate());
				if (tb != null && tb.getNetValue() != null) {
					tb.setNetValue(tmp.getNetValue());
					tInvestmentValueDao.updateByPrimaryKey(tb);
				} else {
					tInvestmentValueDao.insert(tmp);
				}
			}
		}
	}

}
