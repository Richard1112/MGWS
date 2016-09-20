package com.org.mgws.dao;

import com.org.mgws.entity.TCustomerLoginHis;

public interface TCustomerLoginHisDao {
    int deleteByPrimaryKey(Long no);

    int insert(TCustomerLoginHis record);

    int insertSelective(TCustomerLoginHis record);

    TCustomerLoginHis selectByPrimaryKey(Long no);

    int updateByPrimaryKeySelective(TCustomerLoginHis record);

    int updateByPrimaryKey(TCustomerLoginHis record);
}