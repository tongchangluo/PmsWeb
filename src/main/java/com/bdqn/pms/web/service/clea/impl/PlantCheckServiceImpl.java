package com.bdqn.pms.web.service.clea.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.management.RuntimeErrorException;

import org.springframework.stereotype.Service;

import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.dao.clea.plantcheck.PlantCheckDao;
import com.bdqn.pms.web.po.PlantCheck;
import com.bdqn.pms.web.service.clea.PlantCheckService;

@Service("plantCheckService")
public class PlantCheckServiceImpl implements PlantCheckService {

	@Resource
	private PlantCheckDao plantCheckDao;
	@Override
	public List<PlantCheck> getAll() throws Exception{
		
		return plantCheckDao.getAll();
	}

	@Override
	public List<PlantCheck> getBySearch(Map<String,Object> searchMap,PageUtils page) throws Exception{
		
		return plantCheckDao.getBySearch(searchMap,page);
	}

	@Override
	public void addPlantCheck(PlantCheck plantCheck) throws Exception{
		if(plantCheckDao.addPlantCheck(plantCheck)<1){
			throw new RuntimeErrorException(new Error(""));

		};
	}

	@Override
	public void updatePlantCheck(PlantCheck plantCheck) throws Exception{
		if(plantCheckDao.updatePlantCheck(plantCheck)<1){
			throw new RuntimeErrorException(new Error(""));

		};
	}

	@Override
	public void delPlantCheck(Integer[] id) throws Exception{
		if(plantCheckDao.delPlantCheck(id)<1){
			throw new RuntimeErrorException(new Error(""));
		};
	}

	@Override
	public Long getTotalrecord(Map<String, Object> recordSearch) throws Exception{
		// TODO Auto-generated method stub
		return plantCheckDao.getTotalrecord(recordSearch);
	}

	@Override
	public PlantCheck getById(Integer plantck_id) throws Exception{
		
		return plantCheckDao.getById(plantck_id);
	}

}
