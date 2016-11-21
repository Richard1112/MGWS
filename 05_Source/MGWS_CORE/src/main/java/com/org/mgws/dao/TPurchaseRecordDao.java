package com.org.mgws.dao;

import java.util.List;

import com.org.mgws.dto.PurchaseInfo;
import com.org.mgws.entity.TPurchaseRecord;

public interface TPurchaseRecordDao {
	/**
	 * 根据主键删除记录
	 */
	int deleteByPrimaryKey(TPurchaseRecord record);

	/**
	 * 保存记录,不管记录里面的属性是否为空
	 */
	int insert(TPurchaseRecord record);

	/**
	 * 根据主键查询记录
	 */
	TPurchaseRecord selectByPrimaryKey(Long no);

	List<PurchaseInfo> selectByCustomerNo1(String customerNo);
	List<PurchaseInfo> selectByCustomerNo(String customerNo);
	
	/**
	 * 根据主键更新记录
	 */
	int updateByPrimaryKey(TPurchaseRecord record);
}