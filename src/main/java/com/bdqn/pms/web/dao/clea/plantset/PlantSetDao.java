package com.bdqn.pms.web.dao.clea.plantset;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.po.Plant;
import com.bdqn.pms.web.po.PlantSet;


public interface PlantSetDao {

	/**
	 * 获取表的所有字段
	 * @return
	 */
	/*public List<String> getAllField();*/
	
	/**
	 * 获取所有植被设置信息
	 * @return
	 */
	public List<PlantSet> getAll(@Param("page") PageUtils page)throws Exception;
	
	/**
	 * 查询指定No的植被设置信息
	 * @param pSetNo
	 * @return
	 */
	public PlantSet getByNo(String pSetNo)throws Exception;
	/**
	 * 搜索指定的植被设置数据
	 * @param plantSet
	 * @return
	 */
	public List<PlantSet> getBySearch(@Param("searchMap") Map<String,Object> searchMap,@Param("page") PageUtils page)throws Exception;
	
	/**
	 *检查plantSetNo是否已存在，存在则抛异常。 
	 * @param pSetNo
	*/
	public int checkNo(String pSetNo)throws Exception;
	
	/**
	 * 添加绿化设置数据
	 * @param plantSet
	 */
	public int addPlantSet(PlantSet plantSet)throws Exception;
	
	/**
	 * 删除绿化设置数据
	 * @param PlantSetId
	 */
	public int delPlantSet(@Param("plantSetNo")String ... plantSetNo)throws Exception;
	
	/**
	 * 更新植物设置信息
	 * @param plantSet
	 */
	public int updatePlantSet(PlantSet plantSet)throws Exception;
	
	/**
	 * 获取当前查询条件下的总记录行数
	 * @param recordSearch
	 * @return
	 */
	public Long getTotalrecord(@Param("searchMap") Map<String,Object> recordSearch) throws Exception;

	/**
	 * 通过公司id查找PlantSetList
	 */
	public List<PlantSet> getPsByChoice(@Param("choiceMap") Map<String,String> choice) throws Exception;
	
	
}
