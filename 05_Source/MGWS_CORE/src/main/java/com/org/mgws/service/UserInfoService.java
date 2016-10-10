/**
 * 
 */
package com.org.mgws.service;

import com.org.mgws.dto.UserBasicInfo;

/**
 * @author x-wang
 *
 */
public interface UserInfoService {

	public UserBasicInfo getBasicInfo(String customerNo, String division);

	public void updateBasicInfo(UserBasicInfo userBasicInfo);
}
