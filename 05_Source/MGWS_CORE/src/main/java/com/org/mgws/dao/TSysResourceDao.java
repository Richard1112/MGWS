package com.org.mgws.dao;

import com.org.mgws.entity.TSysResource;

public interface TSysResourceDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long id);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TSysResource record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TSysResource record);

    /**
     * 根据主键查询记录
     */
    TSysResource selectByPrimaryKey(Long id);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TSysResource record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TSysResource record);
}