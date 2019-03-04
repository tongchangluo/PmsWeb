package com.bdqn.pms.web.service.clea;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.po.CleanPlan;
import com.bdqn.pms.web.po.CleanRecord;
import com.bdqn.pms.web.po.LanddevCompany;


public interface IClnrecordService {

	public int conutClnrecord(String clnplan_name,
							String clnplan_no,
							String clnplan_place,
							String clnrecord_cleaner)throws Exception;
	
	public List<CleanRecord> getcleanRecordByQuery(String clnplan_name,
													String clnplan_no,
													String clnplan_place,
													String clnrecord_cleaner,
													PageUtils page) throws Exception;
	
	public CleanPlan getClnplan(Integer clnplanId) throws Exception;
	
	public void delcleanRecord(Integer[] clnrecordIds) throws Exception;
	
	public void updatecleanRecord(CleanRecord cleanRecord) throws Exception;
	
	public List<LanddevCompany> getCompanyList() throws Exception;
	
	public void addClnRecord(CleanRecord cleanRecord) throws Exception;
	
	public List<CleanPlan> getClnplanListByldc(Integer ldcId) throws Exception;
	
	public CleanRecord getClnrecordById(Integer clnrecordId) throws Exception;
}
