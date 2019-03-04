package com.bdqn.pms.web.po;


import java.sql.Date;
import java.sql.Timestamp;

public class CleanPlan {

	private Integer clnplan_id;				//清洁项目id
	private String clnplan_no;				//清洁项目编号
	private String clnplan_name;			//清洁项目名称
	private String clnplan_place;			//清洁清洁地段
	private String clnplan_charge;			//清洁负责人
	private Date clnplan_date;			//清洁时间
	private Integer clnplan_del;			//是否删除（0显示；1隐藏）
	private LanddevCompany landdevCompany;	//植被所属公司
	private String clnplan_remark;			//清洁备注
	private String clnplan_summary;			//清洁内容
	private Timestamp clnplan_addDate;      //数据添加时间
	
	
	
	public CleanPlan(){
		
	}
	
	
	public Integer getClnplan_id() {
		return clnplan_id;
	}
	public void setClnplan_id(Integer clnplan_id) {
		this.clnplan_id = clnplan_id;
	}
	public String getClnplan_no() {
		return clnplan_no;
	}
	public void setClnplan_no(String clnplan_no) {
		this.clnplan_no = clnplan_no;
	}
	public String getClnplan_name() {
		return clnplan_name;
	}
	public void setClnplan_name(String clnplan_name) {
		this.clnplan_name = clnplan_name;
	}
	public String getClnplan_place() {
		return clnplan_place;
	}
	public void setClnplan_place(String clnplan_place) {
		this.clnplan_place = clnplan_place;
	}
	public String getClnplan_charge() {
		return clnplan_charge;
	}
	public void setClnplan_charge(String clnplan_charge) {
		this.clnplan_charge = clnplan_charge;
	}
	public Date getClnplan_date() {
		return clnplan_date;
	}

	public Integer getClnplan_del() {
		return clnplan_del;
	}
	public void setClnplan_del(Integer clnplan_del) {
		this.clnplan_del = clnplan_del;
	}
	
	public LanddevCompany getLanddevCompany() {
		return landdevCompany;
	}


	public void setLanddevCompany(LanddevCompany landdevCompany) {
		this.landdevCompany = landdevCompany;
	}


	public String getClnplan_remark() {
		return clnplan_remark;
	}
	public void setClnplan_remark(String clnplan_remark) {
		this.clnplan_remark = clnplan_remark;
	}
	public String getClnplan_summary() {
		return clnplan_summary;
	}
	public void setClnplan_summary(String clnplan_summary) {
		this.clnplan_summary = clnplan_summary;
	}


	public Timestamp getClnplan_addDate() {
		return clnplan_addDate;
	}


	public void setClnplan_addDate(Timestamp clnplan_addDate) {
		this.clnplan_addDate = clnplan_addDate;
	}


	public void setClnplan_date(Date clnplan_date) {
		this.clnplan_date = clnplan_date;
	}
	
	
}
