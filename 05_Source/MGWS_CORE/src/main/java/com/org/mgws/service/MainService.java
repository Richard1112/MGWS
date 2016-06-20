package com.org.mgws.service;

import java.util.List;

import com.org.mgws.entity.TAssetCart;
import com.org.mgws.entity.TCourseInfo;
import com.org.mgws.entity.TRecruitmentInfo;


/**
 * 所有服务的调用service
 * 
 * @author linliuan
 */
public interface MainService {

    public List<TRecruitmentInfo> getAllTRecruitmentInfo() throws Exception;
    
    public List<TCourseInfo> getAllTCourseInfo() throws Exception;

	public List<TAssetCart> getAllAssetCard() throws Exception;
}
