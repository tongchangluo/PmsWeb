package com.bdqn.pms.web.service.hsmm;

import java.util.List;

import com.bdqn.pms.web.po.LanddevCompany;


public interface LanddevCompanyService {

	public List<LanddevCompany> getCompanyList() throws Exception;
	
	public LanddevCompany getCompanyById(Integer id) throws Exception;
	
}
