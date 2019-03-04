package com.bdqn.pms.web.dao.clea.clnrecord;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bdqn.pms.web.po.CleanPlan;
import com.bdqn.pms.web.po.CleanRecord;


public interface ClnrecordDao {

	public int conutClnrecord(@Param("clnplan_name")String clnplan_name,
							@Param("clnplan_no")String clnplan_no,
							@Param("clnplan_place")String clnplan_place,
							@Param("clnrecord_cleaner")String clnrecord_cleaner) throws Exception;
	/**
	 * 根据查询条件查询清洁记录
	 * @param clnplan_name
	 * @param clnplan_no
	 * @param clnplan_place
	 * @param clnrecord_cleaner
	 * @param currentPageNo
	 * @param pageSize
	 * @return
	 * @throws Exception
	 */
	public List<CleanRecord> getcleanRecordByQuery(@Param("clnplan_name")String clnplan_name,
													@Param("clnplan_no")String clnplan_no,
													@Param("clnplan_place")String clnplan_place,
													@Param("clnrecord_cleaner")String clnrecord_cleaner,
													@Param("startRow")Integer startRow,
													@Param("pageSize")Integer pageSize) throws Exception;
	
	/**
	 * 计算安排下有多少条记录
	 * 删除安排时判断安排是否已经存在记录
	 * @param clnplanId
	 * @return
	 * @throws Exception
	 */
	public List<String> getRecordByClnplanNo(String[] clnplanNos) throws Exception;
	
	
	/**
	 * 删除记录
	 * @param clnrecord_id
	 * @throws Exception
	 */
	public void delcleanRecord(Integer[] clnrecordIds) throws Exception;
	
	/**
	 * 更新记录
	 * @param cleanRecord
	 * @throws Exception
	 */
	public void updatecleanRecord(CleanRecord cleanRecord) throws Exception;
	/*
	 * 根据id查询出相应信息，修改页面显示
	 */
	public CleanRecord getClnrecordById(Integer clnrecordId) throws Exception;

	/**
	 * 查询公司列表
	 * @return
	 * @throws Exception
	 */
/*	public List<LanddevCompany> getCompanyList() throws Exception;*/
	
	/**
	 * 新增记录
	 * @param cleanRecord
	 * @throws Exception
	 */
	public void addClnRecord(CleanRecord cleanRecord) throws Exception;
	
	
}
