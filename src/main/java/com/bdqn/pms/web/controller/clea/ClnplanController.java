package com.bdqn.pms.web.controller.clea;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.po.CleanPlan;
import com.bdqn.pms.web.po.LanddevCompany;
import com.bdqn.pms.web.service.clea.IClnplanService;


@Controller
@RequestMapping("/clnplan")
public class ClnplanController {

	@Resource
	private IClnplanService clnplan;

	public void setClnplan(IClnplanService clnplan) {
		this.clnplan = clnplan;
	}
	 
	@RequestMapping("/home.html")
	public String gohome(){
		return "forward:/WEB-INF/jsp/home.jsp";
	}
	
	/*
	 * 进入列表页
	 */
	@RequestMapping("/goclnplan_table.html")
	public String goclnplan_table(Model model){
		List<LanddevCompany> ldcompanys= null;
		try {
			ldcompanys = clnplan.getCompanyList();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		model.addAttribute("ldcompanys", ldcompanys);
		return "forward:/WEB-INF/jsp/clea/clnplan_table.jsp";
	}
	
	@RequestMapping("/clnplanList.html")
	public String clnplanList(String clnplanQueryItem,String queryDate,Integer currentPageNo,Model model){
		String clnplan_no=null;
		String clnplan_name=null;
		String clnplan_place=null;
		String clnplan_charge=null;
		if("pMumber".equals(clnplanQueryItem)){
			clnplan_no=queryDate;
		}else if("pName".equals(clnplanQueryItem)){
			clnplan_name=queryDate;
		}else if("pPlace".equals(clnplanQueryItem)){
			clnplan_place=queryDate;
		}else if("pcharge".equals(clnplanQueryItem)){
			clnplan_charge=queryDate;
		}
		int countPlan=0;
		try {
			countPlan = clnplan.conutClnplan(clnplan_name,clnplan_no,clnplan_place,clnplan_charge);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(currentPageNo==null){
			currentPageNo=1;
		}
		PageUtils page=new PageUtils(currentPageNo,5,new Long(countPlan),5);
		try {
			page.setList(clnplan.ClnplanListByQuery(clnplan_name,clnplan_no,clnplan_place,clnplan_charge,page));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("page", page);
		model.addAttribute("clnplanQueryItem", clnplanQueryItem);
		model.addAttribute("queryDate", queryDate);
		return "forward:/WEB-INF/jsp/clea/clnplan.jsp";
	}
	
	//新增清洁安排
	@RequestMapping("/addClnplan.html")
	public String addClnplan(CleanPlan plan,Integer ldcId,String saveAndNew,String save,Model model){
		LanddevCompany l=new LanddevCompany();
		l.setLdcId(ldcId);
		plan.setLanddevCompany(l);
		boolean issucc= false;
		try {
			issucc = clnplan.addCleanPlan(plan);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("plan", plan);
		//若上方更新数据库返回结果为否，表示项目编号重复，返回到表单页面
		if(issucc){
			//判断点击的按钮是那个
			if("保存并新增".equals(saveAndNew)){
				return "redirect:/clnplan/goclnplan_table.html";
			}else if("保存".equals(save)){
				return "redirect:/clnplan/clnplanList.html";
			}else{
				return "forward:/clnplan/goclnplan_table.html";
			}
		}else{
			model.addAttribute("TplanNo", "项目编号不能重复");
			return "forward:/clnplan/goclnplan_table.html";
		}
	}
	//修改清洁安排
	@RequestMapping("/clnplanModify.html")
	public String clnplanModify(CleanPlan plan,LanddevCompany ldc,String saveAndNew,String save,Model model){
		plan.setLanddevCompany(ldc);
		boolean issucc= false;
		try {
			issucc = clnplan.updateCleanPlan(plan);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//若上方更新数据库返回结果为否，表示项目编号重复，返回到表单页面
		if(issucc){
			return "forward:/clnplan/clnplanList.html";
		}else{
			model.addAttribute("TplanNo", "项目编号不能重复");
			return "forward:/clnplan/goclnplan_modify.html";
		}
	}
	
	
	//删除清洁安排
	 @RequestMapping("/delClnplan.html")
	 @ResponseBody
	public Object delClnplan(String[] clnIds){
		 /*System.err.println(clnIds[0]);*/
		 List<String> noDelplan = null;
		 try {
			 noDelplan = clnplan.getClnplanByclnplanId(clnIds);
			if(noDelplan.size() == 0){
				clnplan.delCleanplan(clnIds);
				return true;
			}else{
				//去掉不能删除的安排编号
				 List<String> delplan = new ArrayList<String>();
				 for(int i=0;i<clnIds.length;i++){
					 boolean flag=false;
					 for(int j=0;j<noDelplan.size();j++){
						 if(clnIds[i].equals(noDelplan.get(j))){
							 flag=true;
							 break;
						 }
					 }
					 if(!flag){
						 delplan.add(clnIds[i]);
					 }
				 }
				//将去重的集合转为数组
				 String[] delplanarray = new String[delplan.size()];
				 delplan.toArray(delplanarray);
				 if(delplanarray.length==0){  //若去重后的数组为空，则直接返回
					 return noDelplan;
				 }else{
					 //删除没有关联记录的安排
					 clnplan.delCleanplan(delplanarray);
					 return noDelplan;  //返回已关联记录的安排编号，以供页面提示 
				 }
				 
			}
		 } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			 return false;
		 }
	 }
	 //进入修改页面
	 @RequestMapping("/goClnplanModify.html")
	 public String goClnplanModify(String clnplanNo,Model model){
		try {
			model.addAttribute("ldcompanys", clnplan.getCompanyList());
			model.addAttribute("plan", clnplan.getClnplanByPlanNo(clnplanNo));	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "forward:/WEB-INF/jsp/clea/clnplan_modify.jsp";
	 }
	 
}
