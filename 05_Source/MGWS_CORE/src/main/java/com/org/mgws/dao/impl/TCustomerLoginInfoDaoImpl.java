/**
 * 
 */
package com.org.mgws.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TCustomerLoginInfoDao;
import com.org.mgws.entity.TCustomerLoginInfo;

/**
 * @author R
 *
 */
@Repository
public class TCustomerLoginInfoDaoImpl extends BaseDao implements TCustomerLoginInfoDao {

    @Override
	public int deleteByPrimaryKey(Long no) {
		return update("customerLoginInfoMapper.deleteByPrimaryKey", no);
    }

    @Override
	public int insert(TCustomerLoginInfo record) {

        return 0;
    }

    @Override
	public int insertSelective(TCustomerLoginInfo record) {
		return insert("customerLoginInfoMapper.insertSelective", record);
    }

    @Override
	public TCustomerLoginInfo selectByPrimaryKey(Long no) {

        return null;
    }

	@Override
	public TCustomerLoginInfo selectByLoginId(TCustomerLoginInfo record) {
		return selectOne("customerLoginInfoMapper.selectByLoginId", record);
	}

	@Override
	public PagingResult<Map<String, Object>> getAllCustomers(Pagination pagination) {
		return super.selectPagination("customerLoginInfoMapper.selectAllCustomer",
				"customerLoginInfoMapper.selectAllCustomerCount", pagination);
	}

	@Override
	public List<Map<String, Object>> getAllCustomers() {
		return super.select("customerLoginInfoMapper.selectAllCustomer");
	}
    @Override
	public int updateByPrimaryKeySelective(TCustomerLoginInfo record) {
		return update("customerLoginInfoMapper.updateByPrimaryKeySelective", record);
    }

    @Override
	public int updateByPrimaryKey(TCustomerLoginInfo record) {
		return update("customerLoginInfoMapper.updateByPrimaryKey", record);
    }

    @Override
	public TCustomerLoginInfo userLogin(Map<String, String> map) {
		return selectOne("customerLoginInfoMapper.checkLoginSuccess", map);
    }

    @Override
	public TCustomerLoginInfo selectByEmail(String email) {
		return selectOne("customerLoginInfoMapper.selectByEmail", email);
    }

    @Override
	public TCustomerLoginInfo selectByCustomerNo(String customerNo) {
		return selectOne("customerLoginInfoMapper.selectByCustomerNo", customerNo);
    }

    @Override
    public TCustomerLoginInfo selectByParams(TCustomerLoginInfo info) {
		return selectOne("customerLoginInfoMapper.selectByParams", info);
    }
}
