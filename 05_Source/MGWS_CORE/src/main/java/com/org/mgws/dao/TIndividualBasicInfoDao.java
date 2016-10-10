package com.org.mgws.dao;

import com.org.mgws.entity.TIndividualBasicInfo;

public interface TIndividualBasicInfoDao {
    /**
	 * 根据主键删除记录
	 */
    int deleteByPrimaryKey(Long no);

    /**
	 * 保存记录,不管记录里面的属性是否为空
	 */
    int insert(TIndividualBasicInfo record);

    /**
	 * 保存属性不为空的记录
	 */
    int insertSelective(TIndividualBasicInfo record);

    /**
	 * 根据主键查询记录
	 */
    TIndividualBasicInfo selectByPrimaryKey(Long no);

	TIndividualBasicInfo selectByCustomerNo(String customerNo);

    /**
	 * 根据主键更新属性不为空的记录
	 */
    int updateByPrimaryKeySelective(TIndividualBasicInfo record);

    /**
	 * 根据主键更新记录
	 */
    int updateByPrimaryKey(TIndividualBasicInfo record);
    
    /**
	 * 根据主键查询记录
	 */
    TIndividualBasicInfo selectBaseInfoByCustomerNo(String customerNo);
    
}