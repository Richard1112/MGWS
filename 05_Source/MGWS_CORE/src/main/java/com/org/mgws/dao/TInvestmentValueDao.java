package com.org.mgws.dao;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.entity.TInvestmentValue;

public interface TInvestmentValueDao {
	/**
	 * 根据主键删除记录
	 */
	int deleteByPrimaryKey(TInvestmentValue record);

	/**
	 * 保存记录,不管记录里面的属性是否为空
	 */
	int insert(TInvestmentValue record);

	/**
	 * 根据主键查询记录
	 */
	TInvestmentValue selectByPrimaryKey(Long no);

	/**
	 * 根据主键更新记录
	 */
	int updateByPrimaryKey(TInvestmentValue record);

	PagingResult<TInvestmentValue> selectByProductId(Pagination pagination);

	//List<TInvestmentValue> getAllTInvestmentValue();

	//List<TInvestmentValue> getAllTInvestmentValueForPre();

	//PagingResult<Map<String, Object>> queryByPage(Pagination page);

}