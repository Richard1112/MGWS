package com.org.mgws.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.mgws.dao.TRecruitmentInfoDao;
import com.org.mgws.entity.TRecruitmentInfo;
import com.org.mgws.service.BaseService;
import com.org.mgws.service.MainService;

@Service
public class MainServiceImpl extends BaseService implements MainService {

	@Resource
	private TRecruitmentInfoDao tRecruitmentInfoDao;
	@Override
	public List<TRecruitmentInfo> getAllTRecruitmentInfo() throws Exception {
		return tRecruitmentInfoDao.getAllTRecruitmentInfo();
	}

}
