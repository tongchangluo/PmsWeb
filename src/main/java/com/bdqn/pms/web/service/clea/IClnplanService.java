package com.bdqn.pms.web.service.clea;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.po.CleanPlan;
import com.bdqn.pms.web.po.LanddevCompany;


public interface IClnplanService {

	public int conutClnplan(String clnplan_name,String clnplan_no,
			String clnplan_place,String clnplan_charge)throws Exception;
	
	
	public List<CleanPlan> ClnplanListByQuery(String clnplan_name,String clnplan_no,
			String clnplan_place,String clnplan_charge,PageUtils page) throws Exception;
	
	
	public boolean updateCleanPlan(CleanPlan cleanPlan) throws Exception;
	
	public List<String> getClnplanByclnplanId(String[] clnplanNos) throws Exception;
	
	public void delCleanplan(String[] clnplanNos) throws Exception;
	
	public List<LanddevCompany> getCompanyList() throws Exception;
	
	public boolean addCleanPlan(CleanPlan cleanplan) throws Exception;
	
	public CleanPlan getClnplanByPlanNo(String clnplanNo)throws Exception;
}
