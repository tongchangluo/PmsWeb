package com.bdqn.pms.web.service.clea;

import java.util.List;

import com.bdqn.pms.web.po.Builder;

public interface IBuilderService {

	/**
	 * 查询房产下所有楼盘
	 * @return
	 * @throws Exception
	 */
	public List<Builder> getbldName(String rsdcId)throws Exception;
}
