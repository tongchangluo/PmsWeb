package com.bdqn.pms.web.po;

public class LanddevCompany {

	private Integer ldcId;		//公司编号(UUID)
	private String ldcName;		//公司名
	private String ldcPid;		//父公司编号
	
	public LanddevCompany(){
		
	}
	
	public Integer getLdcId() {
		return ldcId;
	}
	public void setLdcId(Integer ldcId) {
		this.ldcId = ldcId;
	}
	public String getLdcName() {
		return ldcName;
	}
	public void setLdcName(String ldcName) {
		this.ldcName = ldcName;
	}
	public String getLdcPid() {
		return ldcPid;
	}
	public void setLdcPid(String ldcPid) {
		this.ldcPid = ldcPid;
	}
	
	
}
