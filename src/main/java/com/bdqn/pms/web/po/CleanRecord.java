package com.bdqn.pms.web.po;

import java.sql.Date;
import java.sql.Timestamp;

public class CleanRecord {

	private Integer clnrecord_id;			//清洁记录id
	private CleanPlan cleanPlan;			//清洁项目
	private String clnrecord_cleaner;		//清洁人
	private Date clnrecord_date;		//清洁时间
	private String clnrecord_situation;		//清洁情况
	private String clnrecord_remark;		//备注
	private Integer clnrecord_del;			//是否删除（0显示；1隐藏）
	private LanddevCompany landdevCompany;	//植被所属公司
	private Timestamp clnrecord_addDate;    //数据添加时间
	
	public CleanRecord(){
		
	}
	
	public Integer getClnrecord_id() {
		return clnrecord_id;
	}
	public void setClnrecord_id(Integer clnrecord_id) {
		this.clnrecord_id = clnrecord_id;
	}

	public CleanPlan getCleanPlan() {
		return cleanPlan;
	}

	public void setCleanPlan(CleanPlan cleanPlan) {
		this.cleanPlan = cleanPlan;
	}

	public String getClnrecord_cleaner() {
		return clnrecord_cleaner;
	}
	public void setClnrecord_cleaner(String clnrecord_cleaner) {
		this.clnrecord_cleaner = clnrecord_cleaner;
	}
	public Date getClnrecord_date() {
		return clnrecord_date;
	}
	public String getClnrecord_situation() {
		return clnrecord_situation;
	}
	public void setClnrecord_situation(String clnrecord_situation) {
		this.clnrecord_situation = clnrecord_situation;
	}
	public String getClnrecord_remark() {
		return clnrecord_remark;
	}
	public void setClnrecord_remark(String clnrecord_remark) {
		this.clnrecord_remark = clnrecord_remark;
	}
	public Integer getClnrecord_del() {
		return clnrecord_del;
	}
	public void setClnrecord_del(Integer clnrecord_del) {
		this.clnrecord_del = clnrecord_del;
	}

	public LanddevCompany getLanddevCompany() {
		return landdevCompany;
	}

	public void setLanddevCompany(LanddevCompany landdevCompany) {
		this.landdevCompany = landdevCompany;
	}

	public Timestamp getClnrecord_addDate() {
		return clnrecord_addDate;
	}

	public void setClnrecord_addDate(Timestamp clnrecord_addDate) {
		this.clnrecord_addDate = clnrecord_addDate;
	}

	public void setClnrecord_date(Date clnrecord_date) {
		this.clnrecord_date = clnrecord_date;
	}


	
}
