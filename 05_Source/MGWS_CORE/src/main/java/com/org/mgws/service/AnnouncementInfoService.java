package com.org.mgws.service;

import java.util.List;
import java.util.Map;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.entity.TAnnouncementInfo;

public interface AnnouncementInfoService {
    
    PagingResult<Map<String, Object>> queryByPage(Pagination page);
    
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(TAnnouncementInfo record);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TAnnouncementInfo record);

    /**
     * 根据主键查询记录
     */
    TAnnouncementInfo selectByPrimaryKey(Long no);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TAnnouncementInfo record);
    
    /**
     * 获取所有的信息
     */
    List<TAnnouncementInfo> getAllTAnnouncementInfo();
}
