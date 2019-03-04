package com.bdqn.pms.web.service.clea.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bdqn.pms.web.dao.clea.bldproperty.BldpropertyDao;
import com.bdqn.pms.web.po.BldProperty;
import com.bdqn.pms.web.service.clea.IBldPropertyService;

@Service("bldPropertyService")
public class BldPropertyServiceImpl implements IBldPropertyService {

	@Resource
	private BldpropertyDao bldpropertyDao;

	@Override
	public BldProperty getBldpropertyById(String id) throws Exception {
		// TODO Auto-generated method stub
		BldProperty bld = bldpropertyDao.getBldpropertyById(id);
		return bld;
	}

	@Override
	public boolean modifyBldproperty(BldProperty bldProperty) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		if(bldpropertyDao.modifyBldproperty(bldProperty) > 0){
			flag = true;
		}
		return flag;
	}

	@Override
	public boolean addBldproperty(BldProperty bldProperty) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		if(bldpropertyDao.addBldproperty(bldProperty) > 0){
			flag = true;
		}
		return flag;
	}

	@Override
	public BldProperty getProperty(String rsdcId) throws Exception {
		// TODO Auto-generated method stub
		return bldpropertyDao.getProperty(rsdcId);
	}

	@Override
	public boolean updateProperty(BldProperty bldproperty)
			throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		if(bldpropertyDao.updateProperty(bldproperty) > 0){
			flag = true;
		}
		return flag;
	}

	@Override
	public boolean addProperty(BldProperty bldproperty)
			throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		if(bldpropertyDao.addProperty(bldproperty) > 0){
			flag = true;
		}
		return flag;
	}

}
