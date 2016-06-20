package com.org.mgws.dao;

import java.util.List;
import java.util.Map;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.entity.TCourseInfo;

public interface TCourseInfoDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(TCourseInfo record);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TCourseInfo record);

    /**
     * 根据主键查询记录
     */
    TCourseInfo selectByPrimaryKey(Long no);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TCourseInfo record);
    
    /**
     * 获取所有的招聘信息
     */
    List<TCourseInfo> getAllTCourseInfo();
    
	PagingResult<Map<String, Object>> queryByPage(Pagination page);
	
}