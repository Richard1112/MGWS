package com.org.mgws.dao;

import com.org.mgws.entity.TSysRole;

public interface TSysRoleDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long id);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TSysRole record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TSysRole record);

    /**
     * 根据主键查询记录
     */
    TSysRole selectByPrimaryKey(Long id);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TSysRole record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TSysRole record);
}