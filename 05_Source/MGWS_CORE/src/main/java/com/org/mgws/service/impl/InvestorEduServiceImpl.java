package com.org.mgws.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TInvestorEduDao;
import com.org.mgws.entity.TInvestorEdu;
import com.org.mgws.service.BaseService;
import com.org.mgws.service.InvestorEduService;

@Service
public class InvestorEduServiceImpl extends BaseService implements InvestorEduService {

    @Resource
    TInvestorEduDao investorEduDao;
       
    @Override
    public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
        return investorEduDao.queryByPage(page);
    }

    @Override
    public int deleteByPrimaryKey(TInvestorEdu record) {
        return investorEduDao.deleteByPrimaryKey(record);
    }

    @Override
    public int insert(TInvestorEdu record) {
        return investorEduDao.insert(record);
    }

    @Override
    public TInvestorEdu selectByPrimaryKey(Long no) {
        return investorEduDao.selectByPrimaryKey(no);
    }

    @Override
    public int updateByPrimaryKey(TInvestorEdu record) {
        return investorEduDao.updateByPrimaryKey(record);
    }

    @Override
    public List<TInvestorEdu> getAllTInvestorEdu() {
        return investorEduDao.getAllTInvestorEdu();
    }
}
