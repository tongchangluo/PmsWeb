package com.bdqn.pms.web.service.clea.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.dao.clea.clnplan.ClnplanDao;
import com.bdqn.pms.web.dao.clea.clnrecord.ClnrecordDao;
import com.bdqn.pms.web.po.CleanPlan;
import com.bdqn.pms.web.po.LanddevCompany;
import com.bdqn.pms.web.service.clea.IClnplanService;


@Service
public class ClnplanServiceImpl implements IClnplanService {

	@Resource(name="clnplanDao")
	private ClnplanDao clnplan;
	
	@Resource(name="clnrecordDao")
	private ClnrecordDao clnrecord;

	
	//安排set方法
	public void setLnplan(ClnplanDao lnplan) {
		this.clnplan = lnplan;
	}
	//记录set方法
	public void setClnrecord(ClnrecordDao clnrecord) {
		this.clnrecord = clnrecord;
	}


	/**
	 * 查询清洁安排总行数
	 */
	@Override
	public int conutClnplan(String clnplan_name,String clnplan_no,
			String clnplan_place,String clnplan_charge) throws Exception {
		return clnplan.conutClnplan(clnplan_name,clnplan_no,clnplan_place,clnplan_charge);
	}
	

	/**
	 * 查询安排列表
	 */
	@Override
	public List<CleanPlan> ClnplanListByQuery(String clnplan_name,String clnplan_no,
			String clnplan_place,String clnplan_charge,PageUtils page) throws Exception {
		
		List<CleanPlan> plans=clnplan.getClnplanListByQuery(clnplan_name, clnplan_no, clnplan_place, 
				clnplan_charge, page.getStartrow(), page.getPagesize());
		return plans;
	}


	@Override
	public boolean updateCleanPlan(CleanPlan cleanPlan) throws Exception {
		if(clnplan.isExist(cleanPlan.getClnplan_no(),cleanPlan.getClnplan_id())==0){
			clnplan.updateCleanPlan(cleanPlan);
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 根据编号查询出安排的详细信息
	 */
	public CleanPlan getClnplanByPlanNo(String clnplanNo)throws Exception{
		return clnplan.getClnplanByPlanNo(clnplanNo);
	}
	
	/**
	 * 1 查询安排是否已做记录,并把已做记录的安排编号数组返回
	 * 2 已做记录的安排不能删除
	 */	
	@Override
	public List<String> getClnplanByclnplanId(String[] clnplanNos) throws Exception {
		List<String> plan=clnrecord.getRecordByClnplanNo(clnplanNos);
		return plan;
	}
	public void delCleanplan(String[] clnplanNos) throws Exception{
		clnplan.delCleanplan(clnplanNos);
	}

	/**
	 * 查询所有的公司
	 */
	@Override
	public List<LanddevCompany> getCompanyList() throws Exception {
		/*return landdevCompany.getldcompany();*/
		return clnplan.getldcompany(); 
	}

	
	/**
	 * 1 新增记录前先检查安排编号是否重复
	 * 2 不重复才能新增
	 */
	@Override
	public boolean addCleanPlan(CleanPlan cleanplan) throws Exception {
		if(clnplan.isExist(cleanplan.getClnplan_no(),null)==0){
			clnplan.addCleanPlan(cleanplan);
			return true;
		}else{
			return false;
		}
	}
	

}
