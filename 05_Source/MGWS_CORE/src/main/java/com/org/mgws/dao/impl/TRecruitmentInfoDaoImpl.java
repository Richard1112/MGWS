package com.org.mgws.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.dao.TRecruitmentInfoDao;
import com.org.mgws.entity.TRecruitmentInfo;

@Repository
public class TRecruitmentInfoDaoImpl extends BaseDao implements
		TRecruitmentInfoDao {

	@Override
	public int deleteByPrimaryKey(Long no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(TRecruitmentInfo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(TRecruitmentInfo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public TRecruitmentInfo selectByPrimaryKey(Long no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(TRecruitmentInfo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(TRecruitmentInfo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(TRecruitmentInfo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<TRecruitmentInfo> getAllTRecruitmentInfo() {
		return select("com.org.mgws.dao.TRecruitmentInfoDao.getAllTRecruitmentInfo");
	}

}
