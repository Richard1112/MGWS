package com.org.mgws.base.shiro.filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.web.filter.PathMatchingFilter;
import org.springframework.beans.factory.annotation.Autowired;

import com.org.mgws.base.shiro.Constants;
import com.org.mgws.base.shiro.service.AdminService;

/**
 * <p>User: x-wang
 */
public class SysUserFilter extends PathMatchingFilter {

    @Autowired
    private AdminService adminService;

    @Override
    protected boolean onPreHandle(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {

        String username = (String)SecurityUtils.getSubject().getPrincipal();
        request.setAttribute(Constants.CURRENT_USER, adminService.findOne(username));
        return true;
    }
}
