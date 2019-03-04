package com.bdqn.pms.web.dao.clea.plantcheck;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.po.PlantCheck;


public interface PlantCheckDao {

	/**
	 * 获取所有绿化检查记录
	 * @return
	 */
	public List<PlantCheck> getAll()throws Exception;
	
	/**
	 * 获取条件搜索的绿化检查记录
	 * @param plantCheck
	 * @return
	 */
	public List<PlantCheck> getBySearch(@Param("searchMap") Map<String,Object> searchMap,@Param("page")PageUtils page)throws Exception;
	
	/**
	 * 添加绿化检查记录
	 * @param plantCheck
	 */
	public int addPlantCheck(PlantCheck plantCheck)throws Exception;
	
	/**
	 * 更新检查记录
	 * @param plantCheck
	 */
	public int updatePlantCheck(PlantCheck plantCheck)throws Exception;
	
	/**
	 * 删除绿化检查记录
	 * @param id
	 */
	public int delPlantCheck(@Param("idList") Integer[] id)throws Exception;
	
	/**
	 * 获取当前查询条件下的总记录行数
	 * @param recordSearch
	 * @return
	 */
	public Long getTotalrecord(@Param("searchMap") Map<String,Object> recordSearch);
	
	/**
	 * 根据id获取plancheck记录
	 * @param plantck_id
	 * @return
	 */
	public PlantCheck getById(Integer plantck_id);
	
	/**
	 * 删除绿化检查记录
	 * @param id
	 */
	public int delPcByPlantSet(@Param("noList") String[] plantset_no)throws Exception;
	
}
