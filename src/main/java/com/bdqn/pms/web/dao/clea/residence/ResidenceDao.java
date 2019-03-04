package com.bdqn.pms.web.dao.clea.residence;

import java.util.List;

import com.bdqn.pms.web.po.Residence;

public interface ResidenceDao {

	/**
	 * 查询所有住宅或房产名称
	 * @return
	 * @throws Exception
	 */
	public List<Residence> getRsdcName() throws Exception;
}
