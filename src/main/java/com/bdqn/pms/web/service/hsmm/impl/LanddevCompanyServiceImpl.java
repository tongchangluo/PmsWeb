package com.bdqn.pms.web.service.hsmm.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bdqn.pms.web.dao.hsmm.landdevCompany.LanddevCompanyMapper;
import com.bdqn.pms.web.po.LanddevCompany;
import com.bdqn.pms.web.service.hsmm.LanddevCompanyService;

@Service
public class LanddevCompanyServiceImpl implements LanddevCompanyService {

	@Resource
	private LanddevCompanyMapper landdevCompanyMapper;
	
	@Override
	public List<LanddevCompany> getCompanyList() throws Exception{
		
		return landdevCompanyMapper.getCompanyList();
	}

	@Override
	public LanddevCompany getCompanyById(Integer id) throws Exception {
		
		return landdevCompanyMapper.getCompanyById(id);
	}

}
