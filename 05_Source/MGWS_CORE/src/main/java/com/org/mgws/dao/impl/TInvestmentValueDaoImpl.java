package com.org.mgws.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TInvestmentValueDao;
import com.org.mgws.entity.TInvestmentValue;

@Repository
public class TInvestmentValueDaoImpl extends BaseDao implements
		TInvestmentValueDao {

	@Override
	public int deleteByPrimaryKey(TInvestmentValue record) {
		return delete("com.org.mgws.dao.TInvestmentValueMapper.deleteByPrimaryKey", record);
	}

	@Override
	public int insert(TInvestmentValue record) {
		return super.insert("com.org.mgws.dao.TInvestmentValueMapper.insertSelective", record);
	}

	@Override
	public TInvestmentValue selectByPrimaryKey(Long no) {
		return super.selectOne("com.org.mgws.dao.TInvestmentValueMapper.selectByPrimaryKey", no);
	}
	@Override
	public PagingResult<TInvestmentValue> selectByProductId(Pagination pagination) {
		return super.selectPagination("tInvestmentValueMapper.selectByProductId", pagination);
	}

	@Override
	public int updateByPrimaryKey(TInvestmentValue record) {
		return super.update("com.org.mgws.dao.TInvestmentValueMapper.updateByPrimaryKeySelective", record);
	}

//	@Override
//	public List<TInvestmentValue> getAllTInvestmentValue() {
//		return select("com.org.mgws.dao.TInvestmentValueMapper.getAllTRecruitmentInfo");
//	}
//	
//	@Override
//	public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
//		return selectPagination("com.org.mgws.dao.TInvestmentValueMapper.selectAllByParam", "com.org.mgws.dao.TInvestmentValueMapper.selectAllByParamCount", page);
//	}
//
//	@Override
//	public List<TInvestmentValue> getAllTInvestmentValueForPre() {
//		return select("com.org.mgws.dao.TInvestmentValueMapper.getAllTInvestmentValueForPre");
//	}

}
