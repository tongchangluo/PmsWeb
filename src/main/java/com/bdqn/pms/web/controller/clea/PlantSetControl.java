package com.bdqn.pms.web.controller.clea;

import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections4.map.HashedMap;
import org.apache.poi.util.Removal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.dao.clea.plantset.PlantSetDao;
import com.bdqn.pms.web.po.LanddevCompany;
import com.bdqn.pms.web.po.Plant;
import com.bdqn.pms.web.po.PlantSet;
import com.bdqn.pms.web.service.clea.PlantService;
import com.bdqn.pms.web.service.clea.PlantSetService;
import com.bdqn.pms.web.service.hsmm.LanddevCompanyService;

@Controller
public class PlantSetControl extends HttpServlet{
	
	@Resource
	private PlantSetService plantSetService;
	
	@Resource
	private PlantService plantService;
	
	@Resource
	private LanddevCompanyService landdevCompanyService;
	

	@RequestMapping("psList.action")
	public String getSearchList(Model model,String clnplanQueryItem,String searchWord,HttpServletRequest request,HttpSession session){
		Integer currpage = request.getParameter("currpage")==null?null:Integer.parseInt(request.getParameter("currpage"));
		//第一次访问判断，赋值页数为1
		if(currpage==null){
			currpage=1;
		}
		try {
			Map<String,Object> searchMap= null;
			//判断请求中是否存在搜索条件，有则读取并写入session，否则读取session中进行判断
			if(clnplanQueryItem!=null&&clnplanQueryItem!=""){
				session.setAttribute("psSelected", clnplanQueryItem);
				session.setAttribute("psSearchWord", searchWord);
				searchMap= new HashedMap<>();
				searchMap.put(clnplanQueryItem, searchWord);
			}else if(session.getAttribute("psSelected")!=null&&session.getAttribute("psSelected")!=""){
				searchMap= new HashedMap<>();
				searchMap.put((String)session.getAttribute("psSelected"), session.getAttribute("psSearchWord"));
			}
			//获取当前条件下的数据库记录总行数
			Long totalrecord =plantSetService.getTotalrecord(searchMap);
			
			PageUtils page = new PageUtils(currpage, 5, totalrecord, 0);
		
			//传入查询条件和封装page
			List<PlantSet> psList = plantSetService.getBySearch(searchMap, page);
			page.setList(psList);
			model.addAttribute("page",page);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "forward:WEB-INF/jsp/clea/plantset.jsp";
	}
	
	
	
	@RequestMapping("doPlantSet.action")
	public String doPlantSet(Model model,HttpServletRequest request,PlantSet plantSet,LanddevCompany landdevCompany,String actionType,Integer[] plantNotUsed){
		//获取主要植物集合
		try {
			List<Plant> plantset_types=null;
			if(plantNotUsed!=null){
				plantset_types = new ArrayList<>();
				for(Integer plant_id:plantNotUsed){
					Plant plant = new Plant();
					plant.setPlant_id(plant_id);
					plantset_types.add(plant);
				}
			}
			List<Plant> plantNotUsedList = plantService.getNotUsed();
			List<LanddevCompany> ldcList = landdevCompanyService.getCompanyList();
			model.addAttribute("plantNotUsedList", plantNotUsedList);
			model.addAttribute("actionType", actionType);
			model.addAttribute("ldcList", ldcList);
			plantSet.setLanddevCompany(landdevCompany);
			plantSet.setPlantset_types(plantset_types);
			model.addAttribute("upPlantSet", plantSet);
			if("addPS".equals(actionType)){
				plantSetService.addPlantSet(plantSet);
			}else{
				List<Plant> oldPlantTypes= (List<Plant>)request.getSession().getAttribute("plantTypes");
				plantSetService.updatePlantSet(plantSet,oldPlantTypes);
			}
			if(request.getParameter("SaveandNewBtn")!=null){
				request.getSession().removeAttribute("plantTypes");
				model.addAttribute("upPlantSet", null);
				return "forward:WEB-INF/jsp/clea/plantset_table.jsp";
			}else{
				return "forward:psList.action";	
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return "forward:WEB-INF/jsp/clea/plantset_table.jsp";
		}
		
		
	}
	
	@RequestMapping("delPlantSet.action")
	public void delPlantSet(HttpServletRequest request,Model model,@RequestBody String[] noList,HttpServletResponse response){		
		PrintWriter pt = null;
		try {
			plantSetService.delPlantSet(noList);
			Map<String, String> mesg = new HashedMap<>();
			mesg.put("action", "success");
			pt = response.getWriter();
			pt.println(JSON.toJSONString(mesg));
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pt!=null){
				pt.close();
			}
		}
	}
	
	@RequestMapping("checkPsNo.action")
	public void checkPsNo(@RequestBody String[] noList ,HttpServletResponse response){
		PrintWriter printWriter = null;
		try {
			if(noList.length>0){
				Map<String,String> mesg= new HashMap<>(); 
				String plantset_no = noList[0];
				int rows = plantSetService.checkNo(plantset_no);
				printWriter = response.getWriter();
				if(rows>0){
					mesg.put("mesg", "此项目编号已存在！");
				}else{
					mesg.put("mesg","success");
				}
				printWriter.println(JSON.toJSONString(mesg));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(printWriter!=null){
				printWriter.close();
			}
			
		}
		
	}
	
	@RequestMapping("getPsByChoice.action")
	public void  getPsByChoice(@RequestBody Map<String,String> choice,HttpServletResponse response){
		System.out.println(choice);
		PrintWriter pw = null;
		try {
			List<PlantSet> psChoiceList = plantSetService.getPsByChoice(choice);
			System.out.println(choice);
			System.out.println(psChoiceList);
			pw = response.getWriter();
			pw.println(JSON.toJSONString(psChoiceList));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(pw!=null){
				pw.close();
			}
			
		}
	}
	
	
}
