package com.org.mgws.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TInvestorSignDao;
import com.org.mgws.entity.TInvestorSign;
import com.org.mgws.service.BaseService;
import com.org.mgws.service.InvestorSignService;

@Service
public class InvestorSignServiceImpl extends BaseService implements InvestorSignService {

    @Resource
    TInvestorSignDao investorSignDao;
       
    @Override
    public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
        return investorSignDao.queryByPage(page);
    }

    @Override
    public int deleteByPrimaryKey(TInvestorSign record) {
        return investorSignDao.deleteByPrimaryKey(record);
    }

    @Override
    public int insert(TInvestorSign record) {
        return investorSignDao.insert(record);
    }

    @Override
    public TInvestorSign selectByPrimaryKey(Long no) {
        return investorSignDao.selectByPrimaryKey(no);
    }

    @Override
    public int updateByPrimaryKey(TInvestorSign record) {
        return investorSignDao.updateByPrimaryKey(record);
    }

    @Override
    public List<TInvestorSign> getAllTInvestorSign() {
        return investorSignDao.getAllTInvestorSign();
    }

}
