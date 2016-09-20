package com.org.mgws.dao;

import com.org.mgws.entity.TEnterpriseBasicInfo;

public interface TEnterpriseBasicInfoDao {
    int deleteByPrimaryKey(Long no);

    int insert(TEnterpriseBasicInfo record);

    int insertSelective(TEnterpriseBasicInfo record);

    TEnterpriseBasicInfo selectByPrimaryKey(Long no);

    int updateByPrimaryKeySelective(TEnterpriseBasicInfo record);

    int updateByPrimaryKey(TEnterpriseBasicInfo record);
}