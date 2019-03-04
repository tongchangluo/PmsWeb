package com.bdqn.pms.web.po;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

public class PlantSet {

	
	private String plantset_no;				//植被设置编号
	private String plantset_name;			//植被设置名称
	private Double plantset_area;			//植被设置面积
	private String plantset_place;			//植被设置地点
	private String plantset_charge;			//植被设置责任人
	private Integer plantset_del;			//是否删除（0显示；1隐藏）
	private LanddevCompany landdevCompany;	//植被所属公司
	private String plantset_remark;			//备注
	private List<Plant> plantset_types;		//主要植被
	private Date plantset_date;		//植被设置时间
	private Timestamp plantset_addDate;		//数据新建时间
	
	public PlantSet(){
		
	}
	
	public String getPlantset_no() {
		return plantset_no;
	}
	public void setPlantset_no(String plantset_no) {
		this.plantset_no = plantset_no;
	}
	public String getPlantset_name() {
		return plantset_name;
	}
	public void setPlantset_name(String plantset_name) {
		this.plantset_name = plantset_name;
	}
	public double getPlantset_area() {
		return plantset_area;
	}
	public void setPlantset_area(double plantset_area) {
		this.plantset_area = plantset_area;
	}
	public String getPlantset_place() {
		return plantset_place;
	}
	public void setPlantset_place(String plantset_place) {
		this.plantset_place = plantset_place;
	}
	public String getPlantset_charge() {
		return plantset_charge;
	}
	public void setPlantset_charge(String plantset_charge) {
		this.plantset_charge = plantset_charge;
	}
	public Integer getPlantset_del() {
		return plantset_del;
	}
	public void setPlantset_del(Integer plantset_del) {
		this.plantset_del = plantset_del;
	}
	
	public LanddevCompany getLanddevCompany() {
		return landdevCompany;
	}


	public void setLanddevCompany(LanddevCompany landdevCompany) {
		this.landdevCompany = landdevCompany;
	}


	public String getPlantset_remark() {
		return plantset_remark;
	}
	public void setPlantset_remark(String plantset_remark) {
		this.plantset_remark = plantset_remark;
	}
	
	public List<Plant> getPlantset_types() {
		return plantset_types;
	}


	public void setPlantset_types(List<Plant> plantset_types) {
		this.plantset_types = plantset_types;
	}


	public Date getPlantset_date() {
		return plantset_date;
	}


	public Timestamp getPlantset_addDate() {
		return plantset_addDate;
	}


	public void setPlantset_addDate(Timestamp plantset_addDate) {
		this.plantset_addDate = plantset_addDate;
	}


	public void setPlantset_date(Date plantset_date) {
		this.plantset_date = plantset_date;
	}

	public void setPlantset_area(Double plantset_area) {
		this.plantset_area = plantset_area;
	}
	
	
}
