package com.org.mgws.dao;

import java.util.List;
import java.util.Map;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
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

	PagingResult<Map<String, Object>> queryByPage(Pagination page);

	PagingResult<Map<String, Object>> queryByPage2(Pagination page);

	List<Map<String, Object>> queryAll();
}