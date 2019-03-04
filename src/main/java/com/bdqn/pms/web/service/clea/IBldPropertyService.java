package com.bdqn.pms.web.service.clea;

import com.bdqn.pms.web.po.BldProperty;

public interface IBldPropertyService {

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
	public boolean modifyBldproperty(BldProperty bldProperty) throws Exception;
	
	/**
	 * 增加一条楼盘属性信息
	 * @return
	 * @throws Exception
	 */
	public boolean addBldproperty(BldProperty bldProperty) throws Exception;
	
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
	public boolean updateProperty(BldProperty bldProperty) throws Exception;
	
	/**
	 * 增加一条房产的化粪池、路灯信息
	 * @return
	 * @throws Exception
	 */
	public boolean addProperty(BldProperty bldProperty) throws Exception;

}
