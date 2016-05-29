package com.org.mgws.dao;

import com.org.mgws.entity.TCourseInfo;

public interface TCourseInfoDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TCourseInfo record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TCourseInfo record);

    /**
     * 根据主键查询记录
     */
    TCourseInfo selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TCourseInfo record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKeyWithBLOBs(TCourseInfo record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TCourseInfo record);
}