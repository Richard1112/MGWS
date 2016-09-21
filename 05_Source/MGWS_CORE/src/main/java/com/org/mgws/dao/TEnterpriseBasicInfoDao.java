package com.org.mgws.dao;

import com.org.mgws.entity.TEnterpriseBasicInfo;

public interface TEnterpriseBasicInfoDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TEnterpriseBasicInfo record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TEnterpriseBasicInfo record);

    /**
     * 根据主键查询记录
     */
    TEnterpriseBasicInfo selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TEnterpriseBasicInfo record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TEnterpriseBasicInfo record);
    
    /**
     * 根据主键查询记录
     */
    TEnterpriseBasicInfo selectBaseInfoByCustomerNo(String customerNo);
}