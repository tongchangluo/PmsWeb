package com.bdqn.pms.web.controller.clea;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections4.map.HashedMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.po.LanddevCompany;
import com.bdqn.pms.web.po.PlantCheck;
import com.bdqn.pms.web.po.PlantSet;
import com.bdqn.pms.web.service.clea.PlantCheckService;
import com.bdqn.pms.web.service.clea.PlantSetService;
import com.bdqn.pms.web.service.hsmm.LanddevCompanyService;

@Controller
public class PlantCkControl {

	@Resource
	private PlantCheckService plantCheckService;
	
	@Resource
	private PlantSetService plantSetService;
	
	@Resource
	private LanddevCompanyService landdevCompanyService;
	
	@RequestMapping("pcList.action")
	public String getSearchList(Model model,String clnplanQueryItem,String searchWord,HttpServletRequest request,HttpSession session){
		Integer currpage = request.getParameter("currpage")==null?null:Integer.parseInt(request.getParameter("currpage"));
		//第一次访问判断，赋值页数为1
		if(currpage==null){
			currpage=1;
		}
		Map<String,Object> searchMap= null;
		//判断请求中是否存在搜索条件，有则读取并写入session，否则读取session中进行判断
		if(clnplanQueryItem!=null&&clnplanQueryItem!=""){
			session.setAttribute("pcSelected", clnplanQueryItem);
			session.setAttribute("pcSearchWord", searchWord);
			searchMap= new HashedMap<>();
			searchMap.put(clnplanQueryItem, searchWord);
		}else if(session.getAttribute("pcSelected")!=null&&session.getAttribute("pcSelected")!=""){
			searchMap= new HashedMap<>();
			searchMap.put((String)session.getAttribute("pcSelected"), session.getAttribute("pcSearchWord"));
		}
		//获取当前条件下的数据库记录总行数
		try {
			Long totalrecord =plantCheckService.getTotalrecord(searchMap);
			
			PageUtils page = new PageUtils(currpage, 5, totalrecord, 0);
		
			//传入查询条件和封装page
			List<PlantCheck> pcList = plantCheckService.getBySearch(searchMap, page);
			System.out.println("列表："+pcList);
			page.setList(pcList);
			model.addAttribute("page",page);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "forward:WEB-INF/jsp/clea/plantck.jsp";
	}
	
	
	@RequestMapping("doPlantCheck.action")
	public String doPlantCheck(Model model,HttpServletResponse response,HttpServletRequest request,PlantCheck plantCheck,LanddevCompany landdevCompany,String actionType,PlantSet plantSet){
		//获取主要植物集合
		try {
			
			List<PlantSet> psNoList = plantSetService.getAll(null);
			model.addAttribute("psNoList", psNoList);
			model.addAttribute("actionType", "addPS");
			List<LanddevCompany> ldcList = landdevCompanyService.getCompanyList();
			model.addAttribute("ldcList", ldcList);
			plantCheck.setLanddevCompany(landdevCompany);
			plantCheck.setPlantSet(plantSet);
			model.addAttribute("upPlantCheck", plantCheck);
			if("addPC".equals(actionType)){
				plantCheckService.addPlantCheck(plantCheck);
			}else{
				plantCheckService.updatePlantCheck(plantCheck);
			}
			if(request.getParameter("SaveandNewBtn")!=null){
				model.addAttribute("upPlantCheck", null);
				return "forward:WEB-INF/jsp/clea/plantck_table.jsp";
			}else{
				return "forward:pcList.action";
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "forward:WEB-INF/jsp/clea/plantck_table.jsp";
		}		
	}
	
	
	@RequestMapping("delPlantCheck.action")
	public void delPlantSet(HttpServletRequest request,Model model,@RequestBody Integer[] idList,HttpServletResponse response){		
		PrintWriter pt = null;
		try {
			plantCheckService.delPlantCheck(idList);
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
	
}
