package com.org.mgws.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TCourseInfoDao;
import com.org.mgws.entity.TCourseInfo;

@Repository
public class TCourseInfoDaoImpl extends BaseDao implements
		TCourseInfoDao {

	@Override
	public int deleteByPrimaryKey(TCourseInfo record) {
		return delete("courseMapper.deleteByPrimaryKey", record);
	}

	@Override
	public int insert(TCourseInfo record) {
		return super.insert("courseMapper.insertSelective", record);
	}

	@Override
	public TCourseInfo selectByPrimaryKey(Long no) {
		return super.selectOne("courseMapper.selectByPrimaryKey", no);
	}

	@Override
	public int updateByPrimaryKey(TCourseInfo record) {
		return super.update("courseMapper.updateByPrimaryKeySelective", record);
	}

	@Override
	public List<TCourseInfo> getAllTCourseInfo() {
		return select("courseMapper.getAllTRecruitmentInfo");
	}
	
	@Override
	public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
		return selectPagination("courseMapper.selectAllByParam", "courseMapper.selectAllByParamCount", page);
	}
}
