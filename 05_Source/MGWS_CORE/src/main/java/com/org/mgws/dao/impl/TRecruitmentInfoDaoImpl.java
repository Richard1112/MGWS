package com.org.mgws.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TRecruitmentInfoDao;
import com.org.mgws.entity.TRecruitmentInfo;

@Repository
public class TRecruitmentInfoDaoImpl extends BaseDao implements
		TRecruitmentInfoDao {

	@Override
	public int deleteByPrimaryKey(TRecruitmentInfo record) {
		return delete("recruitmentMapper.deleteByPrimaryKey", record);
	}

	@Override
	public int insert(TRecruitmentInfo record) {
		return super.insert("recruitmentMapper.insertSelective", record);
	}

	@Override
	public TRecruitmentInfo selectByPrimaryKey(Long no) {
		return super.selectOne("recruitmentMapper.selectByPrimaryKey", no);
	}

	@Override
	public int updateByPrimaryKey(TRecruitmentInfo record) {
		return super.update("recruitmentMapper.updateByPrimaryKeySelective", record);
	}

	@Override
	public List<TRecruitmentInfo> getAllTRecruitmentInfo() {
		return select("recruitmentMapper.getAllTRecruitmentInfo");
	}
	
	@Override
	public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
		return selectPagination("recruitmentMapper.selectAllByParam", "recruitmentMapper.selectAllByParamCount", page);
	}
}
