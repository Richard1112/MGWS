package com.org.mgws.dao;

import com.org.mgws.entity.TInvestmentValue;

public interface TInvestmentValueDao {
    int deleteByPrimaryKey(Long id);

    int insert(TInvestmentValue record);

    int insertSelective(TInvestmentValue record);

    TInvestmentValue selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TInvestmentValue record);

    int updateByPrimaryKey(TInvestmentValue record);
}