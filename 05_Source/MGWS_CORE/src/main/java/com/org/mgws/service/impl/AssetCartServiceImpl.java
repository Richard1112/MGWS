package com.org.mgws.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.dao.TAssetCartDao;
import com.org.mgws.entity.TAssetCart;
import com.org.mgws.service.AssetCartService;

@Service
public class AssetCartServiceImpl implements AssetCartService {
	
	@Resource
	TAssetCartDao assetCartDao;

	@Override
	public PagingResult<Map<String, Object>> queryByPage(Pagination page) {
		return assetCartDao.queryByPage(page);
	}

	@Override
	public int deleteByPrimaryKey(TAssetCart record) {
		return assetCartDao.deleteByPrimaryKey(record);
	}

	@Override
	public int insert(TAssetCart record) {
		return assetCartDao.insert(record);
	}

	@Override
	public TAssetCart selectByPrimaryKey(Long no) {
		return assetCartDao.selectByPrimaryKey(no);
	}

	@Override
	public int updateByPrimaryKey(TAssetCart record) {
		return assetCartDao.updateByPrimaryKey(record);
	}

	@Override
	public List<TAssetCart> getAllTAssetCart() {
		return assetCartDao.getAllTAssetCart();
	}

}
