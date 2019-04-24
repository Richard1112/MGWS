package com.org.mgws.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TAnnouncementInfoDao;
import com.org.mgws.entity.TAnnouncementInfo;
import com.org.mgws.service.BaseService;
import com.org.mgws.service.AnnouncementInfoService;

@Service
public class AnnouncementnfoServiceImpl extends BaseService implements AnnouncementInfoService {

    @Resource
    TAnnouncementInfoDao AnnouncementInfoDao;
       
    @Override
    public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
        return AnnouncementInfoDao.queryByPage(page);
    }

    @Override
    public int deleteByPrimaryKey(TAnnouncementInfo record) {
        return AnnouncementInfoDao.deleteByPrimaryKey(record);
    }

    @Override
    public int insert(TAnnouncementInfo record) {
        return AnnouncementInfoDao.insert(record);
    }

    @Override
    public TAnnouncementInfo selectByPrimaryKey(Long no) {
        return AnnouncementInfoDao.selectByPrimaryKey(no);
    }

    @Override
    public int updateByPrimaryKey(TAnnouncementInfo record) {
        return AnnouncementInfoDao.updateByPrimaryKey(record);
    }

    @Override
    public List<TAnnouncementInfo> getAllTAnnouncementInfo() {
        return AnnouncementInfoDao.getAllTAnnouncementInfo();
    }

}
