package com.org.mgws.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TInvestmentMasterDao;
import com.org.mgws.entity.TInvestmentMaster;

@Repository
public class TInvestmentMasterDaoImpl extends BaseDao implements
		TInvestmentMasterDao {

	@Override
	public int deleteByPrimaryKey(TInvestmentMaster record) {
		return delete("com.org.mgws.dao.TInvestmentMasterMapper.deleteByPrimaryKey", record);
	}

	@Override
	public int insert(TInvestmentMaster record) {
		return super.insert("com.org.mgws.dao.TInvestmentMasterMapper.insertSelective", record);
	}

	@Override
	public TInvestmentMaster selectByPrimaryKey(Long no) {
		return super.selectOne("com.org.mgws.dao.TInvestmentMasterMapper.selectByPrimaryKey", no);
	}

	@Override
	public int updateByPrimaryKey(TInvestmentMaster record) {
		return super.update("com.org.mgws.dao.TInvestmentMasterMapper.updateByPrimaryKeySelective", record);
	}

	@Override
	public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
		return selectPagination("com.org.mgws.dao.TInvestmentMasterMapper.selectAllByParam",
				"com.org.mgws.dao.TInvestmentMasterMapper.selectAllByParamCount", page);
	}
	@Override
	public PagingResult<Map<String, Object>> queryByPage2(Pagination page) {
		return selectPagination("tPurchaseRecordMapper.selectAllByParam", "tPurchaseRecordMapper.selectAllByParamCount",
				page);
	}

	@Override
	public List<Map<String, Object>> queryAll() {
		return select("com.org.mgws.dao.TInvestmentMasterMapper.selectAllByParam");
	}
}
