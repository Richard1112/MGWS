package com.org.mgws.dao;

import com.org.mgws.entity.TAdminBasicInfo;

public interface TAdminBasicInfoDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TAdminBasicInfo record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TAdminBasicInfo record);

    /**
     * 根据主键查询记录
     */
    TAdminBasicInfo selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TAdminBasicInfo record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TAdminBasicInfo record);
}