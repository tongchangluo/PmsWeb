package com.bdqn.pms.web.dao.clea.builder;

import java.util.List;

import com.bdqn.pms.web.po.Builder;

public interface BuilderDao {

	/**
	 * 查询房产下所有楼盘
	 * @return
	 * @throws Exception
	 */
	public List<Builder> getbldName(String rsdcId)throws Exception;
}
