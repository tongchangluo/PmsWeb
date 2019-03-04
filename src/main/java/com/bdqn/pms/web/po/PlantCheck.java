package com.bdqn.pms.web.po;

import java.sql.Date;
import java.sql.Timestamp;


public class PlantCheck {

	private Integer plantck_id;				//绿化检查id
	private	PlantSet plantSet;	//检查区域名称
	private Date plantck_date;			//绿化检查时间
	private String plantck_rummager;		//绿化检查人
	private String plantck_summary;			//绿化检查情况
	private String plantck_situation;		//绿化处理情况
	private Integer plantck_del;			//是否删除（0显示；1隐藏）
	private LanddevCompany landdevCompany;	//植被所属公司
	private String plantck_remark;			//备注
	private Timestamp plantck_addDate;      //数据添加时间
	
	public PlantCheck(){
		
	}
	
	public Integer getPlantck_id() {
		return plantck_id;
	}
	public void setPlantck_id(Integer plantck_id) {
		this.plantck_id = plantck_id;
	}
	
	public PlantSet getPlantSet() {
		return plantSet;
	}

	public void setPlantSet(PlantSet plantSet) {
		this.plantSet = plantSet;
	}

	public Date getPlantck_date() {
		return plantck_date;
	}

	public void setPlantck_date(Date plantck_date) {
		this.plantck_date = plantck_date;
	}

	public String getPlantck_rummager() {
		return plantck_rummager;
	}
	public void setPlantck_rummager(String plantck_rummager) {
		this.plantck_rummager = plantck_rummager;
	}
	public String getPlantck_summary() {
		return plantck_summary;
	}
	public void setPlantck_summary(String plantck_summary) {
		this.plantck_summary = plantck_summary;
	}
	public String getPlantck_situation() {
		return plantck_situation;
	}
	public void setPlantck_situation(String plantck_situation) {
		this.plantck_situation = plantck_situation;
	}
	public Integer getPlantck_del() {
		return plantck_del;
	}
	public void setPlantck_del(Integer plantck_del) {
		this.plantck_del = plantck_del;
	}
	
	public LanddevCompany getLanddevCompany() {
		return landdevCompany;
	}

	public void setLanddevCompany(LanddevCompany landdevCompany) {
		this.landdevCompany = landdevCompany;
	}

	public String getPlantck_remark() {
		return plantck_remark;
	}
	public void setPlantck_remark(String plantck_remark) {
		this.plantck_remark = plantck_remark;
	}

	public Timestamp getPlantck_addDate() {
		return plantck_addDate;
	}

	public void setPlantck_addDate(Timestamp plantck_addDate) {
		this.plantck_addDate = plantck_addDate;
	}
	
	
}
