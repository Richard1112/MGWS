/**
 * 
 */
package com.org.mgws.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.util.CollectionUtils;
import org.springframework.stereotype.Service;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.base.util.CommonUtils;
import com.org.mgws.base.util.DateFormatUtils;
import com.org.mgws.base.util.PasswordEncryptSalt;
import com.org.mgws.base.util.PasswordEncryptSaltUtils;
import com.org.mgws.dao.TCustomerLoginInfoDao;
import com.org.mgws.dao.TEnterpriseBasicInfoDao;
import com.org.mgws.dao.TIndividualBasicInfoDao;
import com.org.mgws.dto.LoginInfoDto;
import com.org.mgws.entity.TCustomerLoginInfo;
import com.org.mgws.entity.TEnterpriseBasicInfo;
import com.org.mgws.entity.TIndividualBasicInfo;
import com.org.mgws.service.FUserService;

/**
 * @author x-wang
 *
 */
@Service
public class FUserServiceImpl implements FUserService {
	@Resource
	TCustomerLoginInfoDao tCustomerLoginInfoDao;
	@Resource
	TEnterpriseBasicInfoDao tEnterpriseBasicInfoDao;
	@Resource
	TIndividualBasicInfoDao tIndividualBasicInfoDao;

	/* (non-Javadoc)
	 * @see com.org.mgws.service.FUserService#useLogin(com.org.mgws.dto.LoginInfoDto)
	 */
	@Override
	public TCustomerLoginInfo userLogin(LoginInfoDto loginInfoDto) {
		TCustomerLoginInfo loginInfo = new TCustomerLoginInfo();
		loginInfo.setLoginId(loginInfoDto.getUserId());
		TCustomerLoginInfo logined = tCustomerLoginInfoDao.selectByLoginId(loginInfo);
		if (logined != null) {
			boolean flg = PasswordEncryptSaltUtils.checkIsSame(loginInfoDto.getUserPassword(), logined.getSalt(),
					logined.getLoginPass());
			if (flg) {
				// 更新登陆状态
				logined.setLoginStatus("1");
				tCustomerLoginInfoDao.updateByPrimaryKeySelective(logined);
				return logined;
			} else {
				return null;
			}
		} else {
			return null;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.org.mgws.service.FUserService#useRegist(com.org.mgws.entity.
	 * TCustomerLoginInfo)
	 */
	@Override
	public int userRegist(TCustomerLoginInfo record) {
		PasswordEncryptSalt passwordEncryptSalt = PasswordEncryptSaltUtils.encryptPassword(record.getLoginPass());
		record.setLoginPass(passwordEncryptSalt.getNewPassword());
		record.setSalt(passwordEncryptSalt.getSalt());

		// 顾客编号
		String customerNo = "CS" + DateFormatUtils.getSystemTimeWidthFormat(DateFormatUtils.PATTEN_YMD_NO_SEPRATE)
				+ CommonUtils.getRandomNum(6);
		record.setCustomerNo(customerNo);

		return tCustomerLoginInfoDao.insertSelective(record);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.org.mgws.service.FUserService#getIndividualBasicInfo(java.lang.
	 * String)
	 */
	@Override
	public TIndividualBasicInfo getIndividualBasicInfo(String customerNo) {
		return tIndividualBasicInfoDao.selectByCustomerNo(customerNo);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.org.mgws.service.FUserService#getEnterpriseBasicInfo(java.lang.
	 * String)
	 */
	@Override
	public TEnterpriseBasicInfo getEnterpriseBasicInfo(String customerNo) {
		return tEnterpriseBasicInfoDao.selectByCustomerNo(customerNo);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.org.mgws.service.FUserService#getProductValueById(com.org.mgws.base.
	 * page.Pagination)
	 */
	@Override
	public PagingResult<Map<String, Object>> getAllCustomers(Pagination pagination) {
		PagingResult<Map<String, Object>> itemList = tCustomerLoginInfoDao.getAllCustomers(pagination);
		if (!CollectionUtils.isEmpty(itemList.getResultList())) {

		}
		return itemList;
	}

}
