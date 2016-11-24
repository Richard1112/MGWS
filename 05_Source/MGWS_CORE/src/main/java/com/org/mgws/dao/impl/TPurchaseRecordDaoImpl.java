package com.org.mgws.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.dao.TPurchaseRecordDao;
import com.org.mgws.dto.PurchaseInfo;
import com.org.mgws.entity.TPurchaseRecord;

@Repository
public class TPurchaseRecordDaoImpl extends BaseDao implements
		TPurchaseRecordDao {

	@Override
	public int deleteByPrimaryKey(TPurchaseRecord record) {
		return delete("tPurchaseRecordMapper.deleteByPrimaryKey", record);
	}

	@Override
	public int insert(TPurchaseRecord record) {
		return super.insert("tPurchaseRecordMapper.insertSelective", record);
	}

	@Override
	public TPurchaseRecord selectByPrimaryKey(Long no) {
		return super.selectOne("tPurchaseRecordMapper.selectByPrimaryKey", no);
	}
	@Override
	public List<PurchaseInfo> selectByCustomerNo1(String customerNo) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("customerNo", customerNo);
		return super.select("tPurchaseRecordMapper.selectByCustomerNo", param);
	}

	@Override
	public List<PurchaseInfo> selectByCustomerNo(String customerNo) {
		return super.select("tPurchaseRecordMapper.checkByCustomerNo", customerNo);
	}

	@Override
	public int updateByPrimaryKey(TPurchaseRecord record) {
		return super.update("com.org.mgws.dao.TInvestmentValueMapper.updateByPrimaryKeySelective", record);
	}

}
