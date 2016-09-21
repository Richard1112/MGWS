package com.org.mgws.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TPurchaseRecordDao;
import com.org.mgws.entity.TPurchaseRecord;

@Repository
public class TPurchaseRecordDaoImpl extends BaseDao implements
		TPurchaseRecordDao {

	@Override
	public int deleteByPrimaryKey(TPurchaseRecord record) {
		return delete("com.org.mgws.dao.TInvestmentValueMapper.deleteByPrimaryKey", record);
	}

	@Override
	public int insert(TPurchaseRecord record) {
		return super.insert("com.org.mgws.dao.TInvestmentValueMapper.insertSelective", record);
	}

	@Override
	public TPurchaseRecord selectByPrimaryKey(Long no) {
		return super.selectOne("com.org.mgws.dao.TInvestmentValueMapper.selectByPrimaryKey", no);
	}

	@Override
	public int updateByPrimaryKey(TPurchaseRecord record) {
		return super.update("com.org.mgws.dao.TInvestmentValueMapper.updateByPrimaryKeySelective", record);
	}

}
