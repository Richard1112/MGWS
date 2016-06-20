package com.org.mgws.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.mgws.dao.TAssetCartDao;
import com.org.mgws.dao.TCourseInfoDao;
import com.org.mgws.dao.TRecruitmentInfoDao;
import com.org.mgws.entity.TAssetCart;
import com.org.mgws.entity.TCourseInfo;
import com.org.mgws.entity.TRecruitmentInfo;
import com.org.mgws.service.BaseService;
import com.org.mgws.service.MainService;

@Service
public class MainServiceImpl extends BaseService implements MainService {

	@Resource
	private TRecruitmentInfoDao tRecruitmentInfoDao;
	
	@Resource
	private TCourseInfoDao tCourseInfoDao;

	@Resource
	private TAssetCartDao tAssetCartDao;

	@Override
	public List<TRecruitmentInfo> getAllTRecruitmentInfo() throws Exception {
		return tRecruitmentInfoDao.getAllTRecruitmentInfoForPre();
	}

	@Override
	public List<TCourseInfo> getAllTCourseInfo() throws Exception {
		return tCourseInfoDao.getAllTCourseInfoForPre();
	}

	@Override
	public List<TAssetCart> getAllAssetCard() throws Exception {
		return tAssetCartDao.getAllTAssetCartForPre();
	}

}
