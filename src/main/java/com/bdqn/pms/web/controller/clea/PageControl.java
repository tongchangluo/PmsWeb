package com.bdqn.pms.web.controller.clea;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bdqn.pms.web.po.LanddevCompany;
import com.bdqn.pms.web.po.Plant;
import com.bdqn.pms.web.po.PlantCheck;
import com.bdqn.pms.web.po.PlantSet;
import com.bdqn.pms.web.service.clea.PlantCheckService;
import com.bdqn.pms.web.service.clea.PlantService;
import com.bdqn.pms.web.service.clea.PlantSetService;
import com.bdqn.pms.web.service.hsmm.LanddevCompanyService;

@Controller
@SessionAttributes("plantTypes")
public class PageControl {

	@Resource
	private LanddevCompanyService landdevCompanyService;
	
	@Resource
	private PlantService plantService;
	
	@Resource
	private PlantSetService plantSetService;
	
	@Resource
	private PlantCheckService plantCheckService;
	
	@RequestMapping("pageGo.action")
	public String pageGo(String page,String actionType,String plantset_no,Integer plantck_id,Model model){
		try {
			if("plantset_table".equals(page)){
				//判断planset的操作模式（修改）
				if("modifyPS".equals(actionType)){
						/*System.out.println("植物："+plantNotUsedList);*/
					PlantSet upPlantSet = plantSetService.getByNo(plantset_no);
					List<Plant> plantTypes = upPlantSet.getPlantset_types();
					model.addAttribute("plantTypes", plantTypes);
					model.addAttribute("upPlantSet", upPlantSet);	
				}else{
					model.addAttribute("plantTypes", "");
				}
				List<Plant> plantNotUsedList = plantService.getNotUsed();
				model.addAttribute("plantNotUsedList", plantNotUsedList);		
			}
			if("plantck_table".equals(page)){
				if("modifyPC".equals(actionType)){
					PlantCheck upPlantCheck = plantCheckService.getById(plantck_id);
					model.addAttribute("upPlantCheck", upPlantCheck);
				}
				List<PlantSet> psNoList = plantSetService.getAll(null);
				model.addAttribute("psNoList", psNoList);
			}
			model.addAttribute("actionType", actionType);
			List<LanddevCompany> ldcList = landdevCompanyService.getCompanyList();
			model.addAttribute("ldcList", ldcList);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return "forward:WEB-INF/jsp/clea/"+page+".jsp";
	}
	
	@RequestMapping("home.action")
	public String goHome(){
		return "forward:WEB-INF/jsp/home.jsp";
	}
	
}
