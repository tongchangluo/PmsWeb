package com.bdqn.pms.web.service.clea;

import java.util.List;

import com.bdqn.pms.web.po.Residence;

public interface IResidenceService {

	/**
	 * 查询所有住宅或房产名称
	 * @return
	 * @throws Exception
	 */
	public List<Residence> getRsdcName() throws Exception;
}
