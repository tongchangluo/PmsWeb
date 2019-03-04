package com.bdqn.pms.web.controller.clea;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.po.CleanPlan;
import com.bdqn.pms.web.po.CleanRecord;
import com.bdqn.pms.web.po.LanddevCompany;
import com.bdqn.pms.web.service.clea.IClnrecordService;

@Controller
@RequestMapping("/clnrecord")
public class ClnrecordContrller {
	
	@Resource
	IClnrecordService clnrecord;

	public void setClnrecord(IClnrecordService clnrecord) {
		this.clnrecord = clnrecord;
	}
	
	@RequestMapping("/goclnrecord_table.html")
	public String goclnplan_table(Model model){
		List<LanddevCompany> ldcompanys= null;
		try {
			//获得公司列表
			ldcompanys = clnrecord.getCompanyList();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		model.addAttribute("ldcompanys", ldcompanys);
		return "forward:/WEB-INF/jsp/clea/clnrecord_table.jsp";
	}

	@RequestMapping("/recordList.html")
	public String getrecordList(String recordQueryItem,String queryDate,Integer currentPageNo,Model model){
		String clnplan_no=null;
		String clnplan_name=null;
		String clnplan_place=null;
		String clnrecord_cleaner=null;
		if("rMumber".equals(recordQueryItem)){
			clnplan_no=queryDate;
		}else if("rName".equals(recordQueryItem)){
			clnplan_name=queryDate;
		}else if("rPlace".equals(recordQueryItem)){
			clnplan_place=queryDate;
		}else if("rcharge".equals(recordQueryItem)){
			clnrecord_cleaner=queryDate;
		}
		int countPlan=0;
		try {
			countPlan = clnrecord.conutClnrecord(clnplan_name,clnplan_no,clnplan_place,clnrecord_cleaner);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(currentPageNo==null){
			currentPageNo=1;
		}
		PageUtils page=new PageUtils(currentPageNo,5,new Long(countPlan),5);
		try {
			page.setList(clnrecord.getcleanRecordByQuery(clnplan_name,clnplan_no,clnplan_place,clnrecord_cleaner,page));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("page", page);
		model.addAttribute("recordQueryItem", recordQueryItem);
		model.addAttribute("queryDate", queryDate);
		return "/clea/clnrecord";
	}
	
	//获得清洁安排
	@RequestMapping("/getclnplan.html")
	@ResponseBody
	public List<CleanPlan> getclnplanByldc(Integer ldcId){
		List<CleanPlan> plans = null;
		try {
			plans=clnrecord.getClnplanListByldc(ldcId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return plans;
	}
	
	//根据清洁安排id查询相应的信息
	@RequestMapping("/getclnplaninfo.html")
	@ResponseBody
	public CleanPlan getclnplaninfo(Integer planid){
		/*System.err.println(planid);*/
		CleanPlan clnplan=null;
		try {
			clnplan = clnrecord.getClnplan(planid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return clnplan;
	}
	
	
	//新增清洁记录
	@RequestMapping("/addClnrecord.html")
	public String addClnrecord(CleanRecord record,CleanPlan plan,LanddevCompany ldc,String saveAndNew,String save,Model model,HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = null;
		try {
			record.setLanddevCompany(ldc);
			record.setCleanPlan(plan);
			out = response.getWriter();
			clnrecord.addClnRecord(record);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("record", record);
		//判断点击的按钮是那个
		if("保存并新增".equals(saveAndNew)){
			return "redirect:/clnrecord/goclnrecord_table.html";
		}else if("保存".equals(save)){
			return "redirect:/clnrecord/recordList.html";
		}else{
			return "forward:/clnrecord/goclnrecord_table.html";
		}
	}
	
	//修改页面跳转
	@RequestMapping("/goclnrecordModify.html")
	public String goModify(Integer clnrecordId,Model model){
		try {
			CleanRecord record = clnrecord.getClnrecordById(clnrecordId);
			model.addAttribute("ldcompanys", clnrecord.getCompanyList());
			model.addAttribute("clnrecord", record);
			model.addAttribute("clnplanbyldc",clnrecord.getClnplanListByldc(record.getLanddevCompany().getLdcId()));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "forward:/WEB-INF/jsp/clea/clnrecord_modify.jsp";
	}
	
	//修改清洁记录
	//新增清洁记录
		@RequestMapping("/modifyClnrecord.html")
		public String modifyClnrecord(CleanRecord record,CleanPlan plan,LanddevCompany ldc,String saveAndNew,String save,Model model){
			record.setLanddevCompany(ldc);
			record.setCleanPlan(plan);
			try {
				clnrecord.addClnRecord(record);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "redirect:/clnrecord/recordList.html";
		}
	
	//删除清洁安排
		 @RequestMapping("/delRecord.html")
		 @ResponseBody
		public boolean delClnplan(Integer[] clnIds){
			 try {
				 clnrecord.delcleanRecord(clnIds);
				 return true;
			 } catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			 }
			 
		 }

	
}
