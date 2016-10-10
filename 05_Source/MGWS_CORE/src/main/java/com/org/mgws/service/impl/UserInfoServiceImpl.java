/**
 * 
 */
package com.org.mgws.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.mgws.dao.TEnterpriseBasicInfoDao;
import com.org.mgws.dao.TIndividualBasicInfoDao;
import com.org.mgws.dto.UserBasicInfo;
import com.org.mgws.entity.TEnterpriseBasicInfo;
import com.org.mgws.entity.TIndividualBasicInfo;
import com.org.mgws.service.BaseService;
import com.org.mgws.service.UserInfoService;

/**
 * @author x-wang
 *
 */
@Service
public class UserInfoServiceImpl extends BaseService implements UserInfoService {

	@Resource
	TIndividualBasicInfoDao tIndividualBasicInfoDao;
	@Resource
	TEnterpriseBasicInfoDao tEnterpriseBasicInfoDao;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.org.mgws.service.UserInfoService#getBasicInfo(java.lang.String)
	 */
	@Override
	public UserBasicInfo getBasicInfo(String customerNo, String division) {
		UserBasicInfo userBasicInfo = new UserBasicInfo();
		if ("0".equals(division)) {
			TIndividualBasicInfo tIndividualBasicInfo = tIndividualBasicInfoDao.selectByCustomerNo(customerNo);
			userBasicInfo.setId(tIndividualBasicInfo.getNo());
			userBasicInfo.setCustomerNo(tIndividualBasicInfo.getCustomerNo());
			userBasicInfo.setCnSurName(tIndividualBasicInfo.getCnSurName());
			userBasicInfo.setCnGivenName(tIndividualBasicInfo.getCnGivenName());
			userBasicInfo.setSex(tIndividualBasicInfo.getSex());
		} else {
			TEnterpriseBasicInfo tEnterpriseBasicInfo = tEnterpriseBasicInfoDao.selectByCustomerNo(customerNo);
			userBasicInfo.setCnName(tEnterpriseBasicInfo.getCnName());
			userBasicInfo.setCustomerNo(tEnterpriseBasicInfo.getCustomerNo());
			userBasicInfo.setId(tEnterpriseBasicInfo.getNo());
		}
		return userBasicInfo;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.org.mgws.service.UserInfoService#updateBasicInfo(com.org.mgws.dto.
	 * UserBasicInfo)
	 */
	@Override
	public void updateBasicInfo(UserBasicInfo userBasicInfo) {
		if ("0".equals(userBasicInfo.getDivision())) {
			TIndividualBasicInfo tIndividualBasicInfo = new TIndividualBasicInfo();
			tIndividualBasicInfo.setNo(userBasicInfo.getId());
			tIndividualBasicInfo.setCustomerNo(userBasicInfo.getCustomerNo());
			tIndividualBasicInfo.setCnSurName(userBasicInfo.getCnSurName());
			tIndividualBasicInfo.setCnGivenName(userBasicInfo.getCnGivenName());
			tIndividualBasicInfo.setSex(userBasicInfo.getSex());
			tIndividualBasicInfoDao.updateByPrimaryKeySelective(tIndividualBasicInfo);
		} else {
			TEnterpriseBasicInfo tEnterpriseBasicInfo = new TEnterpriseBasicInfo();
			tEnterpriseBasicInfo.setCnName(userBasicInfo.getCnName());
			tEnterpriseBasicInfo.setNo(userBasicInfo.getId());
			tEnterpriseBasicInfo.setCustomerNo(userBasicInfo.getCustomerNo());
			tEnterpriseBasicInfoDao.updateByPrimaryKeySelective(tEnterpriseBasicInfo);
		}
	}

}
