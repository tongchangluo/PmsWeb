package com.bdqn.pms.web.service.clea.impl;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.management.RuntimeErrorException;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.dao.clea.plant.PlantDao;
import com.bdqn.pms.web.dao.clea.plantcheck.PlantCheckDao;
import com.bdqn.pms.web.dao.clea.plantset.PlantSetDao;
import com.bdqn.pms.web.po.Plant;
import com.bdqn.pms.web.po.PlantCheck;
import com.bdqn.pms.web.po.PlantSet;
import com.bdqn.pms.web.service.clea.PlantSetService;

@Service("plantSetService")

public class PlantSetServiceImpl implements PlantSetService{

	@Resource
	private PlantSetDao plantSetDao;
	@Resource
	private PlantDao plantDao;
	
	@Resource
	private PlantCheckDao plantCheckDao;
	
	@Override
	public List<PlantSet> getAll(PageUtils page) throws Exception{
		
		return plantSetDao.getAll(page);
	}

	@Override
	public PlantSet getByNo(String pSetNo) throws Exception{
		return plantSetDao.getByNo(pSetNo);
	}

	@Override
	public List<PlantSet> getBySearch(Map<String,Object> searchMap,PageUtils page) throws Exception{
		return plantSetDao.getBySearch(searchMap,page);
	}

	@Override
	public int checkNo(String pSetNo) throws Exception{
		return plantSetDao.checkNo(pSetNo);
	
	}

	@Override
	public void addPlantSet(PlantSet plantSet) throws Exception{
		if(plantSetDao.addPlantSet(plantSet)<1){
			throw new RuntimeErrorException(new Error("出错啦"));
		}else{
			if(plantSet.getPlantset_types().size()>0){
				if(plantDao.setUsed(plantSet.getPlantset_types())<1){
					throw new RuntimeErrorException(new Error("出错啦"));
				}
			}
		}
	}

	@Override
	public void delPlantSet(String ... plantSetNo) throws Exception{
		if(plantSetDao.delPlantSet(plantSetNo)<1){
			throw new RuntimeErrorException(new Error(""));
		}else{
			plantCheckDao.delPcByPlantSet(plantSetNo);
		}
	}

	@Override
	public void updatePlantSet(PlantSet plantSet,List<Plant> oldPlantTypes) throws Exception{
		//判断原有的plantset_types和更改后的plantset_types的区别  2018-11-13 17:48
		List<Plant> newPlantTypes = plantSet.getPlantset_types();
		if(plantSetDao.updatePlantSet(plantSet)<1){
			throw new RuntimeErrorException(new Error(""));
		}else{
			if(newPlantTypes==null&&oldPlantTypes==null){
				
			}else{
				List<Integer> oldId = new ArrayList<>();
				List<Integer> newId = new ArrayList<>();
				List<Integer> oldIdCopy = new ArrayList<>();
				Long beforeTime = System.currentTimeMillis();
				if(oldPlantTypes!=null){
					for(Plant oldPlant:oldPlantTypes){
						oldId.add(oldPlant.getPlant_id());
					}
				}
				if(newPlantTypes!=null){
					for(Plant newPlant:newPlantTypes){
						newId.add(newPlant.getPlant_id());
					}
				}
				/*plantDao.modifyPlantUsed(oldId, newId);
				System.out.println("耗时："+(System.currentTimeMillis()-beforeTime));*/
					oldIdCopy.addAll(oldId);
					oldId.removeAll(newId);
					oldIdCopy.removeAll(oldId);
					newId.removeAll(oldIdCopy);
				if(oldId.size()>0||newId.size()>0){
					plantDao.modifyPlantUsed(oldId, newId);
//					System.out.println("耗时："+(System.currentTimeMillis()-beforeTime));
				}
			}
		}
	}

	@Override
	public Long getTotalrecord(Map<String, Object> recordSearch) throws Exception{
		return plantSetDao.getTotalrecord(recordSearch);
	}

	@Override
	public List<PlantSet> getPsByChoice(Map<String,String> choice) throws Exception{
		
		return plantSetDao.getPsByChoice(choice);
	}

	
}
