package com.org.mgws.dao;

import com.org.mgws.entity.TAdminLoginHis;

public interface TAdminLoginHisDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TAdminLoginHis record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TAdminLoginHis record);

    /**
     * 根据主键查询记录
     */
    TAdminLoginHis selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TAdminLoginHis record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TAdminLoginHis record);
}