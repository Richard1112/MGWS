package com.org.mgws.dao;

import com.org.mgws.entity.TCustomerSecurityInfo;

public interface TCustomerSecurityInfoDao {
    int deleteByPrimaryKey(Long no);

    int insert(TCustomerSecurityInfo record);

    int insertSelective(TCustomerSecurityInfo record);

    TCustomerSecurityInfo selectByPrimaryKey(Long no);

    int updateByPrimaryKeySelective(TCustomerSecurityInfo record);

    int updateByPrimaryKey(TCustomerSecurityInfo record);
}