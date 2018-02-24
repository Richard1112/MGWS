package com.org.mgws.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TOpenInfoDao;
import com.org.mgws.entity.TOpenInfo;

@Repository
public class TOpenInfoDaoImpl extends BaseDao implements TOpenInfoDao {

    @Override
    public int deleteByPrimaryKey(TOpenInfo record) {
        return delete("TOpenInfoMapper.deleteByPrimaryKey", record);
    }

    @Override
    public int insert(TOpenInfo record) {
        return insert("TOpenInfoMapper.insertSelective", record);
    }

    @Override
    public TOpenInfo selectByPrimaryKey(Long no) {
        return selectOne("TOpenInfoMapper.selectByPrimaryKey", no);
    }

    @Override
    public int updateByPrimaryKey(TOpenInfo record) {
        return update("TOpenInfoMapper.updateByPrimaryKeySelective", record);
    }

    @Override
    public List<TOpenInfo> getAllTOpenInfo() {
        return select("TOpenInfoMapper.getAllTOpenInfo");
    }

    @Override
    public List<TOpenInfo> getAllTOpenInfoForPre() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
        return selectPagination("TOpenInfoMapper.selectAllByParam", "TOpenInfoMapper.selectAllByParamCount", page);
    }

}
