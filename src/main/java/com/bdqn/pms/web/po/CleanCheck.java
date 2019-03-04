package com.bdqn.pms.web.po;

import com.alibaba.fastjson.annotation.JSONField;
import com.bdqn.pms.web.po.LanddevCompany;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Timestamp;
import java.util.Date;

public class CleanCheck {

	private Integer cleanck_id;				//清洁检查id
	private String cleanck_place;			//检查地段

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JSONField(format = "yyyy-MM-dd")
	private Date cleanck_date;			//检查时间
	private String cleanck_cleaner;			//清洁人
	private String cleanck_rummager;		//检查人
	private String cleanck_situation;		//检查情况
	private Integer cleanck_del;			//是否删除（0显示；1隐藏）
	protected LanddevCompany LanddevCompany;	//植被所属公司
	private String cleanck_remark;			//备注
	private Timestamp cleanck_addDate;		//数据添加时间
	
	public CleanCheck(){
		
	}
	
	public Integer getCleanck_id() {
		return cleanck_id;
	}
	public void setCleanck_id(Integer cleanck_id) {
		this.cleanck_id = cleanck_id;
	}
	public String getCleanck_place() {
		return cleanck_place;
	}
	public void setCleanck_place(String cleanck_place) {
		this.cleanck_place = cleanck_place;
	}

	public Date getCleanck_date() {
		return cleanck_date;
	}
	public void setCleanck_date(Date cleanck_date) {
		this.cleanck_date = cleanck_date;
	}

	public String getCleanck_cleaner() {
		return cleanck_cleaner;
	}
	public void setCleanck_cleaner(String cleanck_cleaner) {
		this.cleanck_cleaner = cleanck_cleaner;
	}
	public String getCleanck_rummager() {
		return cleanck_rummager;
	}
	public void setCleanck_rummager(String cleanck_rummager) {
		this.cleanck_rummager = cleanck_rummager;
	}
	public String getCleanck_situation() {
		return cleanck_situation;
	}
	public void setCleanck_situation(String cleanck_situation) {
		this.cleanck_situation = cleanck_situation;
	}
	public Integer getCleanck_del() {
		return cleanck_del;
	}
	public void setCleanck_del(Integer cleanck_del) {
		this.cleanck_del = cleanck_del;
	}

	public LanddevCompany getLanddevCompany() {
		return LanddevCompany;
	}

	public void setLanddevCompany(LanddevCompany landdevCompany) {
		LanddevCompany = landdevCompany;
	}

	public String getCleanck_remark() {
		return cleanck_remark;
	}
	public void setCleanck_remark(String cleanck_remark) {
		this.cleanck_remark = cleanck_remark;
	}

	public Timestamp getCleanck_addDate() {
		return cleanck_addDate;
	}

	public void setCleanck_addDate(Timestamp cleanck_addDate) {
		this.cleanck_addDate = cleanck_addDate;
	}
	
	
}
