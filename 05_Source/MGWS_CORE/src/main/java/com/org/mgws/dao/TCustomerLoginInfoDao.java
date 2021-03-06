package com.org.mgws.dao;

import java.util.List;
import java.util.Map;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.entity.TCustomerLoginInfo;

public interface TCustomerLoginInfoDao {
	/**
	 * 根据主键删除记录
	 */
    int deleteByPrimaryKey(Long no);

    /**
	 * 保存记录,不管记录里面的属性是否为空
	 */
    int insert(TCustomerLoginInfo record);

    /**
	 * 保存属性不为空的记录
	 */
    int insertSelective(TCustomerLoginInfo record);

    /**
	 * 根据主键查询记录
	 */
    TCustomerLoginInfo selectByPrimaryKey(Long no);

	TCustomerLoginInfo selectByLoginId(TCustomerLoginInfo record);

	public PagingResult<Map<String, Object>> getAllCustomers(Pagination pagination);

	public List<Map<String, Object>> getAllCustomers();

    /**
	 * 根据主键更新属性不为空的记录
	 */
    int updateByPrimaryKeySelective(TCustomerLoginInfo record);

    /**
	 * 根据主键更新记录
	 */
    int updateByPrimaryKey(TCustomerLoginInfo record);
    
    /**
	 * 检查用户输入的账户名和密码是否正确
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
    TCustomerLoginInfo userLogin(Map<String, String> map);
    
    /**
	 * 通过输入邮箱取得用户号
	 * 
	 * @param email
	 * @return
	 */
    TCustomerLoginInfo selectByEmail(String email);
    
    /**
	 * 通过客户号取得用户号
	 * 
	 * @param email
	 * @return
	 */
    TCustomerLoginInfo selectByCustomerNo(String customerNo);
    
    /**
	 * 检索数据
	 * 
	 * @param info
	 * @return
	 */
    TCustomerLoginInfo selectByParams(TCustomerLoginInfo info);
}