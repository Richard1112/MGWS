package com.org.mgws.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TRecruitmentInfoDao;
import com.org.mgws.entity.TRecruitmentInfo;
import com.org.mgws.service.RecruitmentService;

@Service
public class RecruitmentServiceImpl implements RecruitmentService {
	
	@Resource
	TRecruitmentInfoDao recruitmentDao;

	@Override
	public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
		return recruitmentDao.queryByPage(page);
	}

	@Override
	public int deleteByPrimaryKey(TRecruitmentInfo record) {
		return recruitmentDao.deleteByPrimaryKey(record);
	}

	@Override
	public int insert(TRecruitmentInfo record) {
		return recruitmentDao.insert(record);
	}

	@Override
	public TRecruitmentInfo selectByPrimaryKey(Long no) {
		return recruitmentDao.selectByPrimaryKey(no);
	}

	@Override
	public int updateByPrimaryKey(TRecruitmentInfo record) {
		return recruitmentDao.updateByPrimaryKey(record);
	}

	@Override
	public List<TRecruitmentInfo> getAllTRecruitmentInfo() {
		return recruitmentDao.getAllTRecruitmentInfo();
	}

}
