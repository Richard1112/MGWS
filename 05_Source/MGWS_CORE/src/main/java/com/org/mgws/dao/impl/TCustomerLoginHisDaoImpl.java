package com.org.mgws.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.dao.TCustomerLoginHisDao;
import com.org.mgws.entity.TCustomerLoginHis;

@Repository
public class TCustomerLoginHisDaoImpl extends BaseDao implements
		TCustomerLoginHisDao {

	public int deleteByPrimaryKey(Long no) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insert(TCustomerLoginHis record) {
		return insert("com.org.mgws.dao.TCustomerLoginHisDao.insert", record);
	}

	public int insertSelective(TCustomerLoginHis record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public TCustomerLoginHis selectByPrimaryKey(Long no) {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateByPrimaryKeySelective(TCustomerLoginHis record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKey(TCustomerLoginHis record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
