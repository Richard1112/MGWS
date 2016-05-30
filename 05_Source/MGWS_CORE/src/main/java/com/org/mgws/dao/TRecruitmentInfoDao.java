package com.org.mgws.dao;

import java.util.List;

import com.org.mgws.entity.TRecruitmentInfo;

public interface TRecruitmentInfoDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TRecruitmentInfo record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TRecruitmentInfo record);

    /**
     * 根据主键查询记录
     */
    TRecruitmentInfo selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TRecruitmentInfo record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKeyWithBLOBs(TRecruitmentInfo record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TRecruitmentInfo record);
    
    /**
     * 获取所有的招聘信息
     */
    List<TRecruitmentInfo> getAllTRecruitmentInfo();
}