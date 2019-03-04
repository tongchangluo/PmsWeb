package com.bdqn.pms.web.dao.clea.clnplan;

import java.util.List;

import org.apache.ibatis.annotations.Param;


import com.bdqn.pms.web.po.CleanPlan;
import com.bdqn.pms.web.po.CleanRecord;
import com.bdqn.pms.web.po.LanddevCompany;


public interface ClnplanDao {
	
	/**
	 * 获得清洁安排总行数
	 * @return
	 * @throws Exception
	 */
	public int conutClnplan(@Param("clnplan_name")String clnplan_name,
							@Param("clnplan_no")String clnplan_no,
							@Param("clnplan_place")String clnplan_place,
							@Param("clnplan_charge")String clnplan_charge)throws Exception;
	
	
	
	/**
	 * 根据查询条件获得清洁安排
	 * 清洁项目名称、清洁项目编号、清洁地段、负责人
	 * @return
	 * @throws Exception
	 */
	public List<CleanPlan> getClnplanListByQuery(@Param("clnplan_name")String clnplan_name,
												@Param("clnplan_no")String clnplan_no,
												@Param("clnplan_place")String clnplan_place,
												@Param("clnplan_charge")String clnplan_charge,
												@Param("startRow")Integer startRow,
												@Param("pageSize")Integer pageSize) throws Exception;
	
	
	/**
	 * 查询编号是否已经存在：校验唯一性
	 * @param clnplan_no
	 * @return
	 * @throws Exception
	 */
	public int isExist(@Param("clnplan_no")String clnplan_no,@Param("clnplan_id")Integer clnplan_id)throws Exception;
	
	/**
	 * 根据所属公司编号获得清洁安排
	 */
	public List<CleanPlan> getClnplanListByldc(@Param("ldcId")Integer ldcId) throws Exception;
	
	/**
	 * 根据清洁安排id查询全部信息（记录新增时选择安排带出对应信息）
	 * @param clnplanId
	 * @return
	 * @throws Exception
	 */
	public CleanPlan getClnplan(@Param("clnplanId")Integer clnplanId) throws Exception;
	

	
	/**
	 * 修改清洁安排
	 * @param cleanPlan
	 * @throws Exception
	 */
	public void updateCleanPlan(CleanPlan cleanPlan) throws Exception;
	
	
	public CleanPlan getClnplanByPlanNo(@Param("clnplanNo")String clnplanNo)throws Exception;
	
	/**
	 * 删除清洁安排
	 * @param clnplan_id
	 * @throws Exception
	 */
	public void delCleanplan(String[] clnplanNos) throws Exception;
	
	/**
	 * 查询公司
	 * @return
	 * @throws Exception
	 */
	public List<LanddevCompany> getldcompany()throws Exception;
	
	/**
	 * 新增清洁安排
	 * @param cleanplan
	 * @throws Exception
	 */
	public void addCleanPlan(CleanPlan cleanplan) throws Exception;
	
}
