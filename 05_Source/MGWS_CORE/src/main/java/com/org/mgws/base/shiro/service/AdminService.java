/**
 * 
 */
package com.org.mgws.base.shiro.service;

import java.util.List;
import java.util.Set;

import com.org.mgws.base.shiro.entity.User;
import com.org.mgws.entity.TAdminLoginInfo;

/**
 * @author x-wang
 *
 */
public interface AdminService {
    /**
     * 创建用户
     * @param user
     */
    public TAdminLoginInfo createAdmin(TAdminLoginInfo adminInfo);

    public TAdminLoginInfo updateAdmin(TAdminLoginInfo adminInfo);

    public void deleteUser(Long no);

    /**
     * 修改密码
     * @param userId
     * @param newPassword
     */
    public void changePassword(String adminNo, String newPassword);


    TAdminLoginInfo findOne(String adminNo);

    List<TAdminLoginInfo> findAll();

    /**
     * 根据用户名查找用户
     * @param username
     * @return
     */
    public TAdminLoginInfo findByAdminNo(String adminNo);

    /**
     * 根据用户名查找其角色
     * @param username
     * @return
     */
    public Set<String> findRoles(String adminNo);

    /**
     * 根据用户名查找其权限
     * @param username
     * @return
     */
    public Set<String> findPermissions(String adminNo);

}
