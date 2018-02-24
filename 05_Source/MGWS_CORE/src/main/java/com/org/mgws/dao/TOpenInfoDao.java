package com.org.mgws.dao;

import java.util.List;
import java.util.Map;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.entity.TOpenInfo;

public interface TOpenInfoDao {
    int deleteByPrimaryKey(TOpenInfo record);

    int insert(TOpenInfo record);

    TOpenInfo selectByPrimaryKey(Long no);

    int updateByPrimaryKey(TOpenInfo record);
    
    List<TOpenInfo> getAllTOpenInfo();

    List<TOpenInfo> getAllTOpenInfoForPre();

    PagingResult<Map<String, Object>> queryByPage(Pagination page);
}