package com.org.mgws.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TAnnouncementInfoDao;
import com.org.mgws.entity.TAnnouncementInfo;

@Repository
public class TAnnouncementInfoDaoImpl extends BaseDao implements TAnnouncementInfoDao {

    @Override
    public int deleteByPrimaryKey(TAnnouncementInfo record) {
        return delete("TAnnouncementInfoMapper.deleteByPrimaryKey", record);
    }

    @Override
    public int insert(TAnnouncementInfo record) {
        return insert("TAnnouncementInfoMapper.insertSelective", record);
    }

    @Override
    public TAnnouncementInfo selectByPrimaryKey(Long no) {
        return selectOne("TAnnouncementInfoMapper.selectByPrimaryKey", no);
    }

    @Override
    public int updateByPrimaryKey(TAnnouncementInfo record) {
        return update("TAnnouncementInfoMapper.updateByPrimaryKeySelective", record);
    }

    @Override
    public List<TAnnouncementInfo> getAllTAnnouncementInfo() {
        return select("TAnnouncementInfoMapper.getAllTAnnouncementInfo");
    }

    @Override
    public List<TAnnouncementInfo> getAllTAnnouncementInfoForPre() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
        return selectPagination("TAnnouncementInfoMapper.selectAllByParam", "TAnnouncementInfoMapper.selectAllByParamCount", page);
    }

}
