package com.org.mgws.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TCourseInfoDao;
import com.org.mgws.entity.TCourseInfo;
import com.org.mgws.service.CourseService;

@Service
public class CourseServiceImpl implements CourseService {
	
	@Resource
	TCourseInfoDao recruitmentDao;

	@Override
	public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
		return recruitmentDao.queryByPage(page);
	}

	@Override
	public int deleteByPrimaryKey(TCourseInfo record) {
		return recruitmentDao.deleteByPrimaryKey(record);
	}

	@Override
	public int insert(TCourseInfo record) {
		return recruitmentDao.insert(record);
	}

	@Override
	public TCourseInfo selectByPrimaryKey(Long no) {
		return recruitmentDao.selectByPrimaryKey(no);
	}

	@Override
	public int updateByPrimaryKey(TCourseInfo record) {
		return recruitmentDao.updateByPrimaryKey(record);
	}

	@Override
	public List<TCourseInfo> getAllTCourseInfo() {
		return recruitmentDao.getAllTCourseInfo();
	}

}
