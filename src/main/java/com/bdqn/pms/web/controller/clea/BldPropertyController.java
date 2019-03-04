package com.bdqn.pms.web.controller.clea;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections4.map.HashedMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.bdqn.pms.web.po.BldProperty;
import com.bdqn.pms.web.po.Builder;
import com.bdqn.pms.web.po.Residence;
import com.bdqn.pms.web.po.TreeMenu;
import com.bdqn.pms.web.service.clea.IBldPropertyService;
import com.bdqn.pms.web.service.clea.IBuilderService;
import com.bdqn.pms.web.service.clea.IResidenceService;

@Controller
@RequestMapping("/bldProperty")
public class BldPropertyController {

	@Resource
	private IBldPropertyService bldPropertyService;
	@Resource
	private IResidenceService residenceService;
	@Resource
	private IBuilderService builderService;
	//private String rsdcId;//树形菜单锚点

	@RequestMapping(value = "/bldproperty.html")
	public String view1() {
		return "/clea/bldproperty";
	}

	@RequestMapping(value = "/home.html")
	public String view2() {
		return "/home";
	}

	/**
	 * 查询房产路灯、化粪池信息
	 * @param model
	 * @param rsdcId
	 * @return
	 */
	@RequestMapping(value = "/plan.html")
	public String plan(Model model,
			@RequestParam(value = "Id", required = false) String rsdcId) {
		BldProperty bld = null;
		try {
			bld = bldPropertyService.getProperty(rsdcId);
			
			if(bld == null){
				bld = new BldProperty();
				bld.setRsdcId(rsdcId);
			}
			model.addAttribute("bld", bld);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/clea/plan";
	}

	/**
	 * 查询某一个楼盘的信息
	 * @param model
	 * @param bldId
	 * @return
	 */
	@RequestMapping(value = "/right.html")
	public String right(Model model,
			@RequestParam(value = "Id", required = false) String bldId) {
		BldProperty bld = null;
		try {
			bld = bldPropertyService.getBldpropertyById(bldId);
			
			if(bld == null){
				bld = new BldProperty();
				bld.setBldId(bldId);
			}
			model.addAttribute("bld", bld);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/clea/right";
	}

	/**
	 * 房产路灯、化粪池的信息表单提交、判断是修改或新增
	 * @param bldproperty
	 * @param req
	 * @return
	 */
	@RequestMapping(value = "form2", method = RequestMethod.POST)
	public String form2(BldProperty bldproperty, HttpServletRequest req) {
		
		bldproperty.setCesspool((Integer)bool(bldproperty.getCesspool()));
		bldproperty.setStreetlight((Integer)bool(bldproperty.getStreetlight()));
		
		req.setAttribute("bldproperty", bldproperty);
		
		if (null != bldproperty.getId() && !"".equals(bldproperty.getId())) {
			return "forward:/bldProperty/update";
		} else {
			return "forward:/bldProperty/add";
		}
	}

	/**
	 * 修改房产路灯、化粪池的信息
	 * @param req
	 * @return
	 */
	@RequestMapping(value = "/update")
	@ResponseBody
	public Object update(HttpServletRequest req) {
		BldProperty bldproperty = (BldProperty) req.getAttribute("bldproperty");
		HashedMap<String, String> jsonMap = new HashedMap<String, String>();
		try {
			if (bldPropertyService.updateProperty(bldproperty)) {
				jsonMap.put("info", "succeed");
			} else {
				jsonMap.put("info", "failure");
			}
			jsonMap.put("id", bldproperty.getRsdcId());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jsonMap;
	}

	/**
	 * 新增房产路灯、化粪池的信息
	 * @param req
	 * @return
	 */
	@RequestMapping(value = "/add")
	@ResponseBody
	public Object addbld(HttpServletRequest req) {
		BldProperty bldproperty = (BldProperty) req.getAttribute("bldproperty");
		HashedMap<String, String> jsonMap = new HashedMap<String, String>();
		bldproperty.setAddDate(new Timestamp(new Date().getTime()));
		try {
			if (bldPropertyService.addProperty(bldproperty)) {
				jsonMap.put("info", "succeed");
			} else {
				jsonMap.put("info", "failure");
			}
			jsonMap.put("id", bldproperty.getRsdcId());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jsonMap;
	}

	/**
	 * 修改某楼盘的信息
	 * @param req
	 * @return
	 */
	@RequestMapping(value = "/modifyProperty")
	@ResponseBody
	public Object updateSave(HttpServletRequest req) {
		BldProperty bldproperty = (BldProperty) req.getAttribute("bldproperty");
		HashedMap<String, String> jsonMap = new HashedMap<String, String>();
		try {
			if (bldPropertyService.modifyBldproperty(bldproperty)) {
				jsonMap.put("info", "succeed");
			} else {
				jsonMap.put("info", "failure");
			}
			jsonMap.put("id", bldproperty.getBldId());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jsonMap;
	}

	/**
	 * 添加楼盘的信息
	 * @param req
	 * @return
	 */
	@RequestMapping(value = "/addProperty")
	@ResponseBody
	public Object add(HttpServletRequest req) {
		BldProperty bldproperty = (BldProperty) req.getAttribute("bldproperty");
		HashedMap<String, String> jsonMap = new HashedMap<String, String>();
		bldproperty.setAddDate(new Timestamp(new Date().getTime()));
		try {
			if (bldPropertyService.addBldproperty(bldproperty)) {
				jsonMap.put("info", "succeed");
			} else {
				jsonMap.put("info", "failure");
			}
			jsonMap.put("id", bldproperty.getBldId());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonMap;
	}

	/**
	 * 获取所有房产名称
	 * @return
	 */
	@RequestMapping(value = "/getRsdcName.json")
	@ResponseBody
	public Object getRsdcName() {
		List<Residence> residencelist = null;
		try {
			residencelist = residenceService.getRsdcName();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return residencelist;
	}

	/**
	 * 树形菜单
	 * @param rsdcid
	 * @param name
	 * @return
	 */
	@RequestMapping(value = "/zTreemenu.json")
	@ResponseBody
	public Object getbldName(
			@RequestParam(value = "rsdcId", required = false) String rsdcid,
			@RequestParam(value = "name", required = false) String name) {
		List<Builder> builist = null;
		List<TreeMenu> treeMenulist = new ArrayList<TreeMenu>();
		try {
			if (!"0".equals(rsdcid)) {
				TreeMenu treeMenu1 = new TreeMenu();// 父级对象
				treeMenu1.setId(1);// 子级的pId必须和父级的ID一致，这样才产生父子关系
				treeMenu1.setValue(rsdcid);
				treeMenu1.setName(name);
				treeMenu1.setpId(0);
				treeMenu1.setIsParent("true");
				treeMenulist.add(treeMenu1);
				builist = builderService.getbldName(rsdcid);// 通过房产ID，获取楼盘信息
				if (builist.size() > 0) {
					for (int i = 0; i < builist.size(); i++) {
						TreeMenu treeMenu2 = new TreeMenu();// 子级对象
						treeMenu2.setId((i + 10));
						treeMenu2.setpId(1);
						treeMenu2.setValue(builist.get(i).getBldId());
						treeMenu2.setName(builist.get(i).getBldName());
						treeMenulist.add(treeMenu2);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return treeMenulist;// 返回JSON数据
	}

	/**
	 * 楼盘表单提交、判断是修改或新增
	 * @param bldproperty
	 * @param req
	 * @return
	 */
	@RequestMapping(value = "form1", method = RequestMethod.POST)
	public String judge(BldProperty bldproperty, HttpServletRequest req) {
		
		bldproperty.setLift((Integer)bool(bldproperty.getLift()));
		bldproperty.setShydropower((Integer)bool(bldproperty.getShydropower()));
		bldproperty.setFloors((Integer)bool(bldproperty.getFloors()));
		bldproperty.setWashfloors((Integer)bool(bldproperty.getWashfloors()));
		bldproperty.setSungreenbelt((Double)boole(bldproperty.getSungreenbelt()));
		bldproperty.setSgreenbelt((Double)boole(bldproperty.getSgreenbelt()));
		bldproperty.setArtificlake((Double)boole(bldproperty.getArtificlake()));
		bldproperty.setHardground((Double)boole(bldproperty.getHardground()));
		bldproperty.setMirror((Integer)bool(bldproperty.getMirror()));
		bldproperty.setLouver((Integer)bool(bldproperty.getLouver()));
		bldproperty.setElevatorcar((Integer)bool(bldproperty.getElevatorcar()));
		bldproperty.setEletricwelldoor((Integer)bool(bldproperty.getEletricwelldoor()));
		bldproperty.setElevatordoor((Integer)bool(bldproperty.getElevatordoor()));
		bldproperty.setWelldoor((Integer)bool(bldproperty.getWelldoor()));
		bldproperty.setFirehydrant((Integer)bool(bldproperty.getFirehydrant()));
		bldproperty.setAccessdoor((Integer)bool(bldproperty.getAccessdoor()));
		bldproperty.setCelldoor((Integer)bool(bldproperty.getCelldoor()));
		bldproperty.setCorridorarea((Double)boole(bldproperty.getCorridorarea()));
			
		req.setAttribute("bldproperty", bldproperty);
		
		if (null != bldproperty.getId() && !"".equals(bldproperty.getId())) {
			return "forward:/bldProperty/modifyProperty";
		} else {
			return "forward:/bldProperty/addProperty";
		}
	}
	
	/**
	 * 为null赋值为0
	 * @param name
	 * @return
	 */
	public Object bool(Object name){
		if (null == name || "".equals(name)) {
			name = 0;
		}
		return name;
	}

	/**
	 * 为null赋值为0.0
	 * @param name
	 * @return
	 */	
	public Object boole(Object name){
		if (null == name || "".equals(name)) {
			name = 0.0;
		}
		return name;
	}
}
