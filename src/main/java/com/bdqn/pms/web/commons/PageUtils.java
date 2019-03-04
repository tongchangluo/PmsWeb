package com.bdqn.pms.web.commons;

import java.util.ArrayList;
import java.util.List;

public class PageUtils {
	//当前页
	private Integer currpage=1;
	//总页数
	private Integer totalpage;
	//每页显示的记录数
	private Integer pagesize=10;
	//总记录数
	private Long totalrecord;
	//总导航数(维护的导航总数)
	private Integer navnum=10;
	//导航开始数
	private Integer startnav;
	//导航结束数
	private Integer endnav;
	//当前页的数据集合
	private List list=new ArrayList();
	//数据库表的开始行
	private Integer startrow;
	//数据库表的结束行
	private Integer endtrow;
	
	
	/**
	 * 已知的参数：当前页  总记录数(查数据库) 每页显示的记录数 总导航数
	 * 
	 * 例如：当前第2页  总记录25  每页显示10条  总导航数10
	 * 计算的参数：
	 * 	总页数：总记录/每页显示数
	 *        Math.ceil(总记录/每页显示数);	   
	 *  导航开始数：
	 *  	当前页-总导航数/2
	 *  导航结束数：
	 *  	导航开始数+总导航数-1
	 *  特殊情况处理:结束导航数超过总页数
		需要：
		1 结束导航数=总页数
		2 开始导航数=结束导航数-总导航数+1
		
	 *  开始行：(当前页-1)*每页显示的记录数
	 *  	  (2-1)*10=10	   	
	 *  结束行：当前页*每页显示的记录数
	 *  		2*10=20
	 */
	
	public PageUtils(Integer currpage, Integer pagesize, Long totalrecord, Integer navnum) {
		super();
		this.currpage = currpage;
		this.pagesize = pagesize;
		this.totalrecord = totalrecord;
		this.navnum = navnum;
		
		//计算总页数
		 this.setTotalpage((int)Math.ceil(totalrecord*1.0/pagesize));
		//计算开始导航数(不能小于1)
		 this.setStartnav(Math.max(1,currpage-navnum/2));
		//计算结束导航数
		 this.setEndnav(Math.min(this.totalpage, this.startnav+navnum-1));
		
		/* 特殊情况处理:结束导航数超过总页数
			需要：
			1 结束导航数=总页数
			2 开始导航数=结束导航数-总导航数+1*/
		 
		 if(this.getEndnav()==totalpage){
			 this.setStartnav(Math.max(1, this.endnav-navnum+1));
		 }
		 
		 //计算开始行
		this.setStartrow((currpage-1)*pagesize);
		//计算结束行
		this.setEndtrow(currpage*pagesize-1);
	}
	
	public static void main(String[] args) {
		PageUtils page=new PageUtils(10, 10, 580l, 10);
		System.out.println("当前页："+page.getCurrpage());
		System.out.println("每页显示记录："+page.getPagesize());
		System.out.println("总记录数："+page.getTotalrecord());
		System.out.println("总导航数："+page.getNavnum());
		System.out.println("总页数："+page.getTotalpage());
		System.out.println("开始导航数："+page.getStartnav());
		System.out.println("结束导航数："+page.getEndnav());
		System.out.println("开始行："+page.getStartrow());
		System.out.println("结束行："+page.getEndtrow());
	}
	
	
	/**
	 * mysql数据库的分页
	 * 使用 limit
	 * select * from 表名 limit 开始行,取值总数;
	 */
	
	public Integer getCurrpage() {
		return currpage;
	}
	public void setCurrpage(Integer currpage) {
		this.currpage = currpage;
	}
	public Integer getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(Integer totalpage) {
		this.totalpage = totalpage;
	}
	public Integer getPagesize() {
		return pagesize;
	}
	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}
	public Long getTotalrecord() {
		return totalrecord;
	}
	public void setTotalrecord(Long totalrecord) {
		this.totalrecord = totalrecord;
	}
	public Integer getNavnum() {
		return navnum;
	}
	public void setNavnum(Integer navnum) {
		this.navnum = navnum;
	}
	public Integer getStartnav() {
		return startnav;
	}
	public void setStartnav(Integer startnav) {
		this.startnav = startnav;
	}
	public Integer getEndnav() {
		return endnav;
	}
	public void setEndnav(Integer endnav) {
		this.endnav = endnav;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public Integer getStartrow() {
		return startrow;
	}
	public void setStartrow(Integer startrow) {
		this.startrow = startrow;
	}
	public Integer getEndtrow() {
		return endtrow;
	}
	public void setEndtrow(Integer endtrow) {
		this.endtrow = endtrow;
	}
	
	
}
