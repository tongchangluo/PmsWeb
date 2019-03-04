package com.bdqn.pms.web.service.clea.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bdqn.pms.web.dao.clea.builder.BuilderDao;
import com.bdqn.pms.web.po.Builder;
import com.bdqn.pms.web.service.clea.IBuilderService;

@Service("builderService")
public class BuilderServiceImpl implements IBuilderService {

	@Resource
	private BuilderDao uilderDao;
	
	@Override
	public List<Builder> getbldName(String rsdcId) throws Exception {
		// TODO Auto-generated method stub
		return uilderDao.getbldName(rsdcId);
	}

}
