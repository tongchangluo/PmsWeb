package com.bdqn.pms.web.po;
/**
 * 树表菜单
 * @author Administrator
 *
 */
public class TreeMenu {

	
	private Integer id;	//唯一标识
	private Integer pId;//关系id(父级或子级)
	private String name;//菜单名称
	private String value;//保存的id 
	private String isParent;//没有子节点的父节点
	
	public TreeMenu() {
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getpId() {
		return pId;
	}

	public void setpId(Integer pId) {
		this.pId = pId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getIsParent() {
		return isParent;
	}

	public void setIsParent(String isParent) {
		this.isParent = isParent;
	}
	
	
}
