package com.org.mgws.dao;

import com.org.mgws.entity.TPurchaseRecord;

public interface TPurchaseRecordDao {
    int deleteByPrimaryKey(Long id);

    int insert(TPurchaseRecord record);

    int insertSelective(TPurchaseRecord record);

    TPurchaseRecord selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TPurchaseRecord record);

    int updateByPrimaryKey(TPurchaseRecord record);
}