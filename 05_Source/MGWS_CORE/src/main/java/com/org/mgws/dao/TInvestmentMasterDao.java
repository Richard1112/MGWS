package com.org.mgws.dao;

import com.org.mgws.entity.TInvestmentMaster;
import com.org.mgws.entity.TInvestmentMaster;

public interface TInvestmentMasterDao {
	/**
	 * 根据主键删除记录
	 */
	int deleteByPrimaryKey(TInvestmentMaster record);

	/**
	 * 保存记录,不管记录里面的属性是否为空
	 */
	int insert(TInvestmentMaster record);

	/**
	 * 根据主键查询记录
	 */
	TInvestmentMaster selectByPrimaryKey(Long no);

	/**
	 * 根据主键更新记录
	 */
	int updateByPrimaryKey(TInvestmentMaster record);
}