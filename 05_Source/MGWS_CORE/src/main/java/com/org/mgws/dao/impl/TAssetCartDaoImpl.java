package com.org.mgws.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.org.mgws.base.dao.BaseDao;
import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TAssetCartDao;
import com.org.mgws.entity.TAssetCart;

@Repository
public class TAssetCartDaoImpl extends BaseDao implements
		TAssetCartDao {

	@Override
	public int deleteByPrimaryKey(TAssetCart record) {
		return delete("assetMapper.deleteByPrimaryKey", record);
	}

	@Override
	public int insert(TAssetCart record) {
		return super.insert("assetMapper.insertSelective", record);
	}

	@Override
	public TAssetCart selectByPrimaryKey(Long no) {
		return super.selectOne("assetMapper.selectByPrimaryKey", no);
	}

	@Override
	public int updateByPrimaryKey(TAssetCart record) {
		return super.update("assetMapper.updateByPrimaryKeySelective", record);
	}

	@Override
	public List<TAssetCart> getAllTAssetCart() {
		return select("assetMapper.getAllTAssetCart");
	}
	
	@Override
	public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
		return selectPagination("assetMapper.selectAllByParam", "assetMapper.selectAllByParamCount", page);
	}

	@Override
	public List<TAssetCart> getAllTAssetCartForPre() {
		return select("assetMapper.getAllTAssetCartForPre");
	}
}
