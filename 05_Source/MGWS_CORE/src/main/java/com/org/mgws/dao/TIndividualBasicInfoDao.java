package com.org.mgws.dao;

import com.org.mgws.entity.TIndividualBasicInfo;

public interface TIndividualBasicInfoDao {
    int deleteByPrimaryKey(Long no);

    int insert(TIndividualBasicInfo record);

    int insertSelective(TIndividualBasicInfo record);

    TIndividualBasicInfo selectByPrimaryKey(Long no);

    int updateByPrimaryKeySelective(TIndividualBasicInfo record);

    int updateByPrimaryKey(TIndividualBasicInfo record);
}