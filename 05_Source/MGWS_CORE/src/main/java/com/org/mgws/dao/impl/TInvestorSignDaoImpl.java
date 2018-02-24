package com.org.mgws.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TInvestorSignDao;
import com.org.mgws.entity.TInvestorSign;

@Repository
public class TInvestorSignDaoImpl extends BaseDao implements TInvestorSignDao {

    @Override
    public int deleteByPrimaryKey(TInvestorSign record) {
        return delete("TInvestorSignMapper.deleteByPrimaryKey", record);
    }

    @Override
    public int insert(TInvestorSign record) {
        return insert("TInvestorSignMapper.insertSelective", record);
    }

    @Override
    public TInvestorSign selectByPrimaryKey(Long no) {
        return selectOne("TInvestorSignMapper.selectByPrimaryKey", no);
    }

    @Override
    public int updateByPrimaryKey(TInvestorSign record) {
        return update("TInvestorSignMapper.updateByPrimaryKeySelective", record);
    }

    @Override
    public List<TInvestorSign> getAllTInvestorSign() {
        return select("TInvestorSignMapper.getAllTInvestorSign");
    }

    @Override
    public List<TInvestorSign> getAllTInvestorSignForPre() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
        return selectPagination("TInvestorSignMapper.selectAllByParam", "TInvestorSignMapper.selectAllByParamCount", page);
    }

}
