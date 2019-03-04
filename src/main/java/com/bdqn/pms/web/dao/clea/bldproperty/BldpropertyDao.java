package com.bdqn.pms.web.dao.clea.bldproperty;

import org.apache.ibatis.annotations.Param;
import com.bdqn.pms.web.po.BldProperty;

public interface BldpropertyDao {

	/**
	 * 查询某一个楼盘属性信息
	 * @return
	 * @throws Exception
	 */
	public BldProperty getBldpropertyById(String id) throws Exception;
	
	/**
	 * 更新一条楼盘属性信息
	 * @return
	 * @throws Exception
	 */
	public int modifyBldproperty(BldProperty bldProperty) throws Exception;
	
	/**
	 * 增加一条楼盘属性信息
	 * @return
	 * @throws Exception
	 */
	public int addBldproperty(BldProperty bldProperty) throws Exception;
	
	/**
	 * 查询一条房产的化粪池、路灯信息
	 * @return
	 * @throws Exception
	 */
	public BldProperty getProperty(String rsdcId) throws Exception;
	
	/**
	 * 更新一条房产的化粪池、路灯信息
	 * @return
	 * @throws Exception
	 */
	public int updateProperty(BldProperty bldproperty) throws Exception;
	
	/**
	 * 增加一条房产的化粪池、路灯信息
	 * @return
	 * @throws Exception
	 */
	public int addProperty(BldProperty bldproperty) throws Exception;
}
