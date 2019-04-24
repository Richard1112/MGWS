package com.org.mgws.dao;

import java.util.List;
import java.util.Map;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.entity.TAnnouncementInfo;

public interface TAnnouncementInfoDao {
    int deleteByPrimaryKey(TAnnouncementInfo record);

    int insert(TAnnouncementInfo record);

    TAnnouncementInfo selectByPrimaryKey(Long no);

    int updateByPrimaryKey(TAnnouncementInfo record);
    
    List<TAnnouncementInfo> getAllTAnnouncementInfo();

    List<TAnnouncementInfo> getAllTAnnouncementInfoForPre();

    PagingResult<Map<String, Object>> queryByPage(Pagination page);
}