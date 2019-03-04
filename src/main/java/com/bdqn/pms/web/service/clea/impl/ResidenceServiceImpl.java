package com.bdqn.pms.web.service.clea.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bdqn.pms.web.dao.clea.residence.ResidenceDao;
import com.bdqn.pms.web.po.Residence;
import com.bdqn.pms.web.service.clea.IResidenceService;

@Service("residenceService")
public class ResidenceServiceImpl implements IResidenceService {

	@Resource
	private ResidenceDao residenceDao;
	
	@Override
	public List<Residence> getRsdcName() throws Exception {
		// TODO Auto-generated method stub
		return residenceDao.getRsdcName();
	}

}
