package com.org.mgws.dao;

import com.org.mgws.entity.TCustomerLoginInfo;

public interface TCustomerLoginInfoDao {
    int deleteByPrimaryKey(Long no);

    int insert(TCustomerLoginInfo record);

    int insertSelective(TCustomerLoginInfo record);

    TCustomerLoginInfo selectByPrimaryKey(Long no);

    int updateByPrimaryKeySelective(TCustomerLoginInfo record);

    int updateByPrimaryKey(TCustomerLoginInfo record);
}