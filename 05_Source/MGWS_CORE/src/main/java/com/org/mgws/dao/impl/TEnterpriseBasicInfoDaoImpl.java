package com.org.mgws.dao.impl;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.dao.TEnterpriseBasicInfoDao;
import com.org.mgws.entity.TEnterpriseBasicInfo;

@Repository
public class TEnterpriseBasicInfoDaoImpl extends BaseDao implements TEnterpriseBasicInfoDao {

    public int deleteByPrimaryKey(Long no) {
        return update("com.org.mgws.dao.TEnterpriseBasicInfoDao.deleteByPrimaryKey", no);
    }

    public int insert(TEnterpriseBasicInfo record) {
        // TODO Auto-generated method stub
        return 0;
    }

    public int insertSelective(TEnterpriseBasicInfo record) {
        return insert("com.org.mgws.dao.TEnterpriseBasicInfoDao.insertSelective", record);
    }

    public TEnterpriseBasicInfo selectByPrimaryKey(Long no) {
        // TODO Auto-generated method stub
        return null;
    }

    public int updateByPrimaryKeySelective(TEnterpriseBasicInfo record) {
        return update("com.org.mgws.dao.TEnterpriseBasicInfoDao.updateByPrimaryKeySelective", record);
    }

    public int updateByPrimaryKey(TEnterpriseBasicInfo record) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public TEnterpriseBasicInfo selectBaseInfoByCustomerNo(String customerNo) {
        return selectOne("com.org.mgws.dao.TEnterpriseBasicInfoDao.selectEnterpriseBasicInfoByCustomerNo", customerNo);
    }

}
