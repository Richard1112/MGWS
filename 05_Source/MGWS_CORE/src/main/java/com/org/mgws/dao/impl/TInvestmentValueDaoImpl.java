package com.org.mgws.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TInvestmentValueDao;
import com.org.mgws.entity.TInvestmentValue;
import com.org.mgws.entity.TPurchaseRecord;

@Repository
public class TInvestmentValueDaoImpl extends BaseDao implements
		TInvestmentValueDao {

	@Override
	public int deleteByPrimaryKey(TInvestmentValue record) {
		return delete("tInvestmentValueMapper.deleteByPrimaryKey", record);
	}

	@Override
	public int insert(TInvestmentValue record) {
		return super.insert("tInvestmentValueMapper.insertSelective", record);
	}

	@Override
	public TInvestmentValue selectByPrimaryKey(Long no) {
		return super.selectOne("tInvestmentValueMapper.selectByPrimaryKey", no);
	}
	@Override
	public PagingResult<TInvestmentValue> selectByProductId(Pagination pagination) {
		return super.selectPagination("tInvestmentValueMapper.selectByProductId", pagination);
	}
	@Override
	public PagingResult<Map<String, Object>> selectProductsValue(Pagination pagination) {
		return super.selectPagination("tInvestmentValueMapper.selectProductsValue", pagination);
	}

	@Override
	public int updateByPrimaryKey(TInvestmentValue record) {
		return super.update("tInvestmentValueMapper.updateByPrimaryKeySelective", record);
	}

//	@Override
//	public List<TInvestmentValue> getAllTInvestmentValue() {
//		return select("com.org.mgws.dao.TInvestmentValueMapper.getAllTRecruitmentInfo");
//	}
//	
	@Override
	public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
		return selectPagination("com.org.mgws.dao.TInvestmentMasterMapper.selectAllByParam",
				"com.org.mgws.dao.TInvestmentMasterMapper.selectAllByParamCount", page);
	}
	//
//	@Override
	// public List<TInvestmentValue> getAllTInvestmentValueForPre() {
	// return
	// select("com.org.mgws.dao.TInvestmentValueMapper.getAllTInvestmentValueForPre");
//	}

	@Override
	public TPurchaseRecord getTInvestmentValue(String customerNo) {
		return super.selectOne("tPurchaseRecordMapper.selectAllByParam", customerNo);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.org.mgws.dao.TInvestmentValueDao#checkByProductIdAndDate(java.lang.
	 * String, java.lang.String)
	 */
	@Override
	public TInvestmentValue checkByProductIdAndDate(String productId, String date) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("productId", productId);
		param.put("dateFrom", date);
		param.put("dateTo", date);
		return super.selectOne("tInvestmentValueMapper.selectByProductId2", param);
	}

}
