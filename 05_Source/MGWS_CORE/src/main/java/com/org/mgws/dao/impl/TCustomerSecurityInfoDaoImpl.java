package com.org.mgws.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.dao.TCustomerSecurityInfoDao;
import com.org.mgws.entity.TCustomerSecurityInfo;

@Repository
public class TCustomerSecurityInfoDaoImpl extends BaseDao implements TCustomerSecurityInfoDao {

    @Override
    public int deleteByPrimaryKey(Long no) {
        return update("com.org.mgws.dao.TCustomerSecurityInfoDao.deleteByPrimaryKey", no);
    }

    @Override
    public int insert(TCustomerSecurityInfo record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(TCustomerSecurityInfo record) {
        return insert("com.org.mgws.dao.TCustomerSecurityInfoDao.insertSelective", record);
    }

    @Override
    public TCustomerSecurityInfo selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TCustomerSecurityInfo record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TCustomerSecurityInfo record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TCustomerSecurityInfo selectByCustomerNo(String customerno) {
        return selectOne("com.org.mgws.dao.TCustomerSecurityInfoDao.selectByCustomerNo", customerno);
    }

    @Override
    public TCustomerSecurityInfo selectByParam(TCustomerSecurityInfo param) {
        return selectOne("com.org.mgws.dao.TCustomerSecurityInfoDao.selectByParam", param);
    }

}
