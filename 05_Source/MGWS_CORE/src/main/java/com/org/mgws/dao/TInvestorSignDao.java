package com.org.mgws.dao;

import java.util.List;
import java.util.Map;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.entity.TInvestorSign;

public interface TInvestorSignDao {
    int deleteByPrimaryKey(TInvestorSign record);

    int insert(TInvestorSign record);

    TInvestorSign selectByPrimaryKey(Long no);

    int updateByPrimaryKey(TInvestorSign record);
    
    List<TInvestorSign> getAllTInvestorSign();

    List<TInvestorSign> getAllTInvestorSignForPre();

    PagingResult<Map<String, Object>> queryByPage(Pagination page);
}