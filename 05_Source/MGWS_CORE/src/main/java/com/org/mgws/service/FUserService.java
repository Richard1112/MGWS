/**
 * 
 */
package com.org.mgws.service;

import java.util.List;
import java.util.Map;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dto.LoginInfoDto;
import com.org.mgws.entity.TCustomerLoginInfo;
import com.org.mgws.entity.TEnterpriseBasicInfo;
import com.org.mgws.entity.TIndividualBasicInfo;

/**
 * @author x-wang
 *
 */
public interface FUserService {

	TCustomerLoginInfo userLogin(LoginInfoDto loginInfoDto);

	int userRegist(TCustomerLoginInfo record);

	TIndividualBasicInfo getIndividualBasicInfo(String customerNo);

	TEnterpriseBasicInfo getEnterpriseBasicInfo(String customerNo);

	PagingResult<Map<String, Object>> getAllCustomers(Pagination pagination);

	List<Map<String, Object>> getAllCustomers();
}
