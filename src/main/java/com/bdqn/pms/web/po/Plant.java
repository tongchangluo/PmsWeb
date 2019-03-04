package com.bdqn.pms.web.po;

import java.sql.Timestamp;

public class Plant {

	private Integer plant_id;				//植物id
	private String plant_name;				//植被名称
	private String plant_type;				//植被种类
	private Integer plant_age;				//植被树龄
	private Integer plant_quantity;			//植被数量
	private String plant_unit;				//植被单位
	private String plant_no;				//植被编码
	private Integer plant_del;				//是否删除（0显示；1隐藏）
	private LanddevCompany LanddevCompany;	//植被所属公司
	private String plant_remark;			//植被备注
	private String plant_character;			//植被特点
	private String plant_habit;				//植被习性
	private Timestamp plant_addDate;        //添加时间
	//2018-11-05 19点添加
	private Integer plant_used;				//是否已使用

	public Plant(){
		
	}
	
	
	public Integer getPlant_id() {
		return plant_id;
	}
	public void setPlant_id(Integer plant_id) {
		this.plant_id = plant_id;
	}
	public String getPlant_name() {
		return plant_name;
	}
	public void setPlant_name(String plant_name) {
		this.plant_name = plant_name;
	}
	public String getPlant_type() {
		return plant_type;
	}
	public void setPlant_type(String plant_type) {
		this.plant_type = plant_type;
	}
	public Integer getPlant_age() {
		return plant_age;
	}
	public void setPlant_age(Integer plant_age) {
		this.plant_age = plant_age;
	}
	public Integer getPlant_quantity() {
		return plant_quantity;
	}
	public void setPlant_quantity(Integer plant_quantity) {
		this.plant_quantity = plant_quantity;
	}
	public String getPlant_unit() {
		return plant_unit;
	}
	public void setPlant_unit(String plant_unit) {
		this.plant_unit = plant_unit;
	}
	public String getPlant_no() {
		return plant_no;
	}
	public void setPlant_no(String plant_no) {
		this.plant_no = plant_no;
	}
	public Integer getPlant_del() {
		return plant_del;
	}
	public void setPlant_del(Integer plant_del) {
		this.plant_del = plant_del;
	}
	
	public LanddevCompany getLanddevCompany() {
		return LanddevCompany;
	}


	public void setLanddevCompany(LanddevCompany landdevCompany) {
		LanddevCompany = landdevCompany;
	}


	public String getPlant_remark() {
		return plant_remark;
	}
	public void setPlant_remark(String plant_remark) {
		this.plant_remark = plant_remark;
	}
	public String getPlant_character() {
		return plant_character;
	}
	public void setPlant_character(String plant_character) {
		this.plant_character = plant_character;
	}
	public String getPlant_habit() {
		return plant_habit;
	}
	public void setPlant_habit(String plant_habit) {
		this.plant_habit = plant_habit;
	}


	public Timestamp getPlant_addDate() {
		return plant_addDate;
	}


	public void setPlant_addDate(Timestamp plant_addDate) {
		this.plant_addDate = plant_addDate;
	}


	public Integer getPlant_used() {
		return plant_used;
	}


	public void setPlant_used(Integer plant_used) {
		this.plant_used = plant_used;
	}

}
