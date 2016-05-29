/**
 * 
 */
package com.org.mgws.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.stereotype.Repository;

import com.org.mgws.dao.TAdminLoginInfoDao;
import com.org.mgws.entity.TAdminLoginInfo;

/**
 * @author x-wang
 *
 */
@Repository
public class TAdminLoginInfoDaoImpl implements TAdminLoginInfoDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.org.mgws.dao.TAdminLoginInfoDao#deleteByPrimaryKey(java.lang.Long)
	 */
	@Override
	public int deleteByPrimaryKey(Long no) {
		String sql = "delete from t_admin_login_info where no=?";
		jdbcTemplate.update(sql, no);
		return 0;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.org.mgws.dao.TAdminLoginInfoDao#insert(com.org.mgws.entity.
	 * TAdminLoginInfo)
	 */
	@Override
	public TAdminLoginInfo insert(final TAdminLoginInfo record) {
		final String sql = "insert into t_admin_login_info(adminno, loginpass, salt, loginstatus, deleteflg) values(?,?,?,?,?)";

		GeneratedKeyHolder keyHolder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
				PreparedStatement psst = connection.prepareStatement(sql, new String[] { "id" });
				int count = 1;
				psst.setString(count++, record.getAdminno());
				psst.setString(count++, record.getLoginpass());
				psst.setString(count++, record.getSalt());
				psst.setString(count++, record.getLoginstatus());
				psst.setString(count++, record.getDeleteflg());
				return psst;
			}
		}, keyHolder);
		record.setNo(keyHolder.getKey().longValue());
		return record;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.org.mgws.dao.TAdminLoginInfoDao#insertSelective(com.org.mgws.entity.
	 * TAdminLoginInfo)
	 */
	@Override
	public int insertSelective(TAdminLoginInfo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.org.mgws.dao.TAdminLoginInfoDao#selectByPrimaryKey(java.lang.Long)
	 */
	@Override
	public TAdminLoginInfo selectByPrimaryKey(Long no) {
		String sql = "select no, adminno, loginpass, salt, loginstatus, deleteflg from t_admin_login_info where no=?";
		List<TAdminLoginInfo> adminList = jdbcTemplate.query(sql, new BeanPropertyRowMapper(TAdminLoginInfo.class), no);
		if (adminList.size() == 0) {
			return null;
		}
		return adminList.get(0);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.org.mgws.dao.TAdminLoginInfoDao#updateByPrimaryKeySelective(com.org.
	 * mgws.entity.TAdminLoginInfo)
	 */
	@Override
	public int updateByPrimaryKeySelective(TAdminLoginInfo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.org.mgws.dao.TAdminLoginInfoDao#updateByPrimaryKey(com.org.mgws.
	 * entity.TAdminLoginInfo)
	 */
	@Override
	public TAdminLoginInfo updateByPrimaryKey(TAdminLoginInfo record) {
		String sql = "update t_admin_login_info set adminno=?,loginpass=?, salt=?, loginstatus=?, deleteflg=? where no=?";
		jdbcTemplate.update(sql, record.getAdminno(), record.getLoginpass(), record.getSalt(), record.getLoginstatus(),
				record.getDeleteflg(), record.getNo());
		return record;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.org.mgws.dao.TAdminLoginInfoDao#findByAdminNo(java.lang.String)
	 */
	@Override
	public TAdminLoginInfo findByAdminNo(String adminNo) {
		String sql = "select no, adminno, loginpass, salt, loginstatus, deleteflg from t_admin_login_info where adminno=?";
		List<TAdminLoginInfo> adminList = jdbcTemplate.query(sql, new BeanPropertyRowMapper(TAdminLoginInfo.class),
				adminNo);
		if (adminList.size() == 0) {
			return null;
		}
		return adminList.get(0);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.org.mgws.dao.TAdminLoginInfoDao#findByAdminNo(java.lang.String)
	 */
	@Override
	public List<TAdminLoginInfo> findAll() {
		String sql = "select no, adminno, loginpass, salt, loginstatus, deleteflg from t_admin_login_info";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper(TAdminLoginInfo.class));
	}
}
