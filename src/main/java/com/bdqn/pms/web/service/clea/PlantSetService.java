package com.bdqn.pms.web.service.clea;

import java.util.List;
import java.util.Map;

import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.po.Plant;
import com.bdqn.pms.web.po.PlantSet;

public interface PlantSetService {

	/**
	 * 获取表的所有字段
	 * @return
	 */
	/*public List<String> getAllField();*/
	
	/**
	 * 获取所有植被设置信息
	 * @return
	 */
	public List<PlantSet> getAll(PageUtils page)throws Exception;
	
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
	public List<PlantSet> getBySearch(Map<String,Object> searchMap,PageUtils page)throws Exception;
	
	/**
	 *检查plantSetNo是否已存在，存在则抛异常。 
	 * @param pSetNo
	*/
	public int checkNo(String pSetNo)throws Exception;
	
	/**
	 * 添加绿化设置数据
	 * @param plantSet
	 */
	public void addPlantSet(PlantSet plantSet)throws Exception;
	
	/**
	 * 删除绿化设置数据
	 * @param PlantSetId
	 */
	public void delPlantSet(String ... plantSetNo)throws Exception;
	
	/**
	 * 更新植物设置信息
	 * @param plantSet
	 */
	public void updatePlantSet(PlantSet plantSet,List<Plant> oldPlantTypes)throws Exception;
	
	/**
	 * 获取当前查询条件下的总记录行数
	 * @param recordSearch
	 * @return
	 */
	public Long getTotalrecord(Map<String,Object> recordSearch) throws Exception;
	
	/**
	 * 通过公司id查找PlantSetList
	 */
	public List<PlantSet> getPsByChoice(Map<String,String> choice) throws Exception;

}
