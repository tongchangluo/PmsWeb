package com.bdqn.pms.web.service.clea.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.dao.clea.clnplan.ClnplanDao;
import com.bdqn.pms.web.dao.clea.clnrecord.ClnrecordDao;
import com.bdqn.pms.web.po.CleanPlan;
import com.bdqn.pms.web.po.CleanRecord;
import com.bdqn.pms.web.po.LanddevCompany;
import com.bdqn.pms.web.service.clea.IClnrecordService;


@Service
public class ClnresordServiceImpl implements IClnrecordService {
	
	@Resource
	private ClnrecordDao clnrecord;
	@Resource
	private ClnplanDao clnplan;

	
	//记录的set方法
	public void setClnrecord(ClnrecordDao clnrecord) {
		this.clnrecord = clnrecord;
	}
	
	//安排的set方法
	public void setClnplan(ClnplanDao clnplan) {
		this.clnplan = clnplan;
	}
	


	public int conutClnrecord(String clnplan_name,
			String clnplan_no,
			String clnplan_place,
			String clnrecord_cleaner)throws Exception{
				return clnrecord.conutClnrecord(clnplan_name, clnplan_no, clnplan_place, clnrecord_cleaner);
	}

	@Override
	public List<CleanRecord> getcleanRecordByQuery(String clnplan_name,
			String clnplan_no, String clnplan_place, String clnrecord_cleaner,
			PageUtils page) throws Exception {
		return clnrecord.getcleanRecordByQuery(clnplan_name, clnplan_no, 
				clnplan_place, clnrecord_cleaner, page.getStartrow(), page.getPagesize());
	}

	public CleanPlan getClnplan(Integer clnplanId) throws Exception{
		return clnplan.getClnplan(clnplanId);
	}
	
	@Override
	public void delcleanRecord(Integer[] clnrecordIds)
			throws Exception {
		clnrecord.delcleanRecord(clnrecordIds);
	}

	@Override
	public void updatecleanRecord(CleanRecord cleanRecord) throws Exception {
		clnrecord.updatecleanRecord(cleanRecord);
	}

	@Override
	public List<LanddevCompany> getCompanyList() throws Exception {
		return clnplan.getldcompany();
	}

	@Override
	public void addClnRecord(CleanRecord cleanRecord) throws Exception {
		clnrecord.addClnRecord(cleanRecord);
	}

	@Override
	public List<CleanPlan> getClnplanListByldc(Integer ldcId) throws Exception {
		return clnplan.getClnplanListByldc(ldcId);
	}

	@Override
	public CleanRecord getClnrecordById(Integer clnrecordId) throws Exception{
		return clnrecord.getClnrecordById(clnrecordId);
	}
}
