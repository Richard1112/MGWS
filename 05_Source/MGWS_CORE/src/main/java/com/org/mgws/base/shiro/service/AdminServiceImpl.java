/**
 * 
 */
package com.org.mgws.base.shiro.service;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.org.mgws.dao.TAdminLoginInfoDao;
import com.org.mgws.entity.TAdminLoginInfo;

/**
 * @author x-wang
 *
 */
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private TAdminLoginInfoDao adminDao;
    @Autowired
    private APasswordHelper passwordHelper;
	
	/* (non-Javadoc)
	 * @see com.org.mgws.base.shiro.service.AdminService#createAdmin(com.org.mgws.entity.TAdminLoginInfo)
	 */
	@Override
	public TAdminLoginInfo createAdmin(TAdminLoginInfo adminInfo) {
		//加密密码
        passwordHelper.encryptPassword(adminInfo);
        return adminDao.insert(adminInfo);
	}

	/* (non-Javadoc)
	 * @see com.org.mgws.base.shiro.service.AdminService#updateAdmin(com.org.mgws.entity.TAdminLoginInfo)
	 */
	@Override
	public TAdminLoginInfo updateAdmin(TAdminLoginInfo adminInfo) {
		return adminDao.updateByPrimaryKey(adminInfo);
	}

	/* (non-Javadoc)
	 * @see com.org.mgws.base.shiro.service.AdminService#deleteUser(java.lang.Long)
	 */
	@Override
	public void deleteUser(Long no) {
		adminDao.deleteByPrimaryKey(no);
	}

	/* (non-Javadoc)
	 * @see com.org.mgws.base.shiro.service.AdminService#changePassword(java.lang.Long, java.lang.String)
	 */
	@Override
	public void changePassword(String adminNo, String newPassword) {
		TAdminLoginInfo adminInfo = adminDao.findByAdminNo(adminNo);
		adminInfo.setLoginpass(newPassword);
		passwordHelper.encryptPassword(adminInfo);
		adminDao.updateByPrimaryKey(adminInfo);
	}

	/* (non-Javadoc)
	 * @see com.org.mgws.base.shiro.service.AdminService#findOne(java.lang.Long)
	 */
	@Override
	public TAdminLoginInfo findOne(String adminNo) {
		return adminDao.findByAdminNo(adminNo);
	}

	/* (non-Javadoc)
	 * @see com.org.mgws.base.shiro.service.AdminService#findAll()
	 */
	@Override
	public List<TAdminLoginInfo> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.org.mgws.base.shiro.service.AdminService#findByAdminNo(java.lang.String)
	 */
	@Override
	public TAdminLoginInfo findByAdminNo(String adminNo) {
		return adminDao.findByAdminNo(adminNo);
	}

	/* (non-Javadoc)
	 * @see com.org.mgws.base.shiro.service.AdminService#findRoles(java.lang.String)
	 */
	@Override
	public Set<String> findRoles(String adminNo) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.org.mgws.base.shiro.service.AdminService#findPermissions(java.lang.String)
	 */
	@Override
	public Set<String> findPermissions(String adminNo) {
		// TODO Auto-generated method stub
		return null;
	}

}
