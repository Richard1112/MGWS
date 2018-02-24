package com.org.mgws.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TOpenInfoDao;
import com.org.mgws.entity.TOpenInfo;
import com.org.mgws.service.BaseService;
import com.org.mgws.service.OpenInfoService;

@Service
public class OpenInfoServiceImpl extends BaseService implements OpenInfoService {

    @Resource
    TOpenInfoDao openInfoDao;
       
    @Override
    public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
        return openInfoDao.queryByPage(page);
    }

    @Override
    public int deleteByPrimaryKey(TOpenInfo record) {
        return openInfoDao.deleteByPrimaryKey(record);
    }

    @Override
    public int insert(TOpenInfo record) {
        return openInfoDao.insert(record);
    }

    @Override
    public TOpenInfo selectByPrimaryKey(Long no) {
        return openInfoDao.selectByPrimaryKey(no);
    }

    @Override
    public int updateByPrimaryKey(TOpenInfo record) {
        return openInfoDao.updateByPrimaryKey(record);
    }

    @Override
    public List<TOpenInfo> getAllTOpenInfo() {
        return openInfoDao.getAllTOpenInfo();
    }

}
