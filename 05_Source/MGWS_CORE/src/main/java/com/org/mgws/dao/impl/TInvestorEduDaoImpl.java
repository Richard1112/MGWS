package com.org.mgws.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TInvestorEduDao;
import com.org.mgws.entity.TInvestorEdu;

@Repository
public class TInvestorEduDaoImpl extends BaseDao implements TInvestorEduDao {

    @Override
    public int deleteByPrimaryKey(TInvestorEdu record) {
        return delete("TInvestorEduMapper.deleteByPrimaryKey", record);
    }

    @Override
    public int insert(TInvestorEdu record) {
        return insert("TInvestorEduMapper.insertSelective", record);
    }

    @Override
    public TInvestorEdu selectByPrimaryKey(Long no) {
        return selectOne("TInvestorEduMapper.selectByPrimaryKey", no);
    }

    @Override
    public int updateByPrimaryKey(TInvestorEdu record) {
        return update("TInvestorEduMapper.updateByPrimaryKeySelective", record);
    }

    @Override
    public List<TInvestorEdu> getAllTInvestorEdu() {
        return select("TInvestorEduMapper.getAllTInvestorEdu");
    }

    @Override
    public List<TInvestorEdu> getAllTInvestorEduForPre() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
        return selectPagination("TInvestorEduMapper.selectAllByParam", "TInvestorEduMapper.selectAllByParamCount", page);
    }

}
