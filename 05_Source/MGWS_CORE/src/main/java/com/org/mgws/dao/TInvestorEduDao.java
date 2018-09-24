package com.org.mgws.dao;

import java.util.List;
import java.util.Map;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.entity.TInvestorEdu;

public interface TInvestorEduDao {
    int deleteByPrimaryKey(TInvestorEdu record);

    int insert(TInvestorEdu record);

    TInvestorEdu selectByPrimaryKey(Long no);

    int updateByPrimaryKey(TInvestorEdu record);
    
    List<TInvestorEdu> getAllTInvestorEdu();

    List<TInvestorEdu> getAllTInvestorEduForPre();

    PagingResult<Map<String, Object>> queryByPage(Pagination page);
}