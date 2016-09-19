package com.org.mgws.dao;

import com.org.mgws.entity.TInvestmentMaster;

public interface TInvestmentMasterDao {
    int deleteByPrimaryKey(Long id);

    int insert(TInvestmentMaster record);

    int insertSelective(TInvestmentMaster record);

    TInvestmentMaster selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TInvestmentMaster record);

    int updateByPrimaryKey(TInvestmentMaster record);
}