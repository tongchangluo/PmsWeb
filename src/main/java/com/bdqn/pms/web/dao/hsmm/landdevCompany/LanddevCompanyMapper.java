package com.bdqn.pms.web.dao.hsmm.landdevCompany;

import java.util.List;

import com.bdqn.pms.web.po.LanddevCompany;


public interface LanddevCompanyMapper {

	public List<LanddevCompany> getCompanyList() throws Exception;
	
	public LanddevCompany getCompanyById(Integer id) throws Exception;
}
