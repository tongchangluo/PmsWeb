package com.bdqn.pms.web.controller.clea;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.bdqn.pms.web.commons.PageUtils;
import com.bdqn.pms.web.po.LanddevCompany;
import com.bdqn.pms.web.po.Plant;
import com.bdqn.pms.web.service.clea.PlantService;
import com.bdqn.pms.web.service.hsmm.LanddevCompanyService;

@Controller
public class PlantController {
    @Resource
    private PlantService plantService;

    @Resource
    private LanddevCompanyService landdevCompanyService;

    @RequestMapping("/plant")
    public String gotoPlant(){
        return "/clea/plant";
    }

    @ResponseBody
    @RequestMapping(value="/plant/queryList",method=RequestMethod.POST)
    public Object showTheQueryPlantList(@RequestParam String id,@RequestParam Integer pageSize,@RequestParam Integer currentPageNo,@RequestParam String theColmunName,@RequestParam String theColmunValue){
        List<Plant> thePlantList=null;
        Long theQuantityOfPlantRecord=null;
        PageUtils pageUtils=null;
        if(currentPageNo==null||currentPageNo==0){
            currentPageNo=1;
        }
        if(id.equals ("")||id==null){
            System.out.println ("error");
        }else{
            if(theColmunName==null||theColmunName.equals ("init")||theColmunName.equals ("")){
                theColmunName=null;
            }
            if(theColmunValue==null||theColmunValue.equals ("init")||theColmunValue.equals ("")){
                theColmunValue=null;
            }

            try{
                theQuantityOfPlantRecord=plantService.getPlantTotalCount (theColmunName,theColmunValue);
            }catch(Exception e){
                e.printStackTrace ();
            }
            pageUtils=new PageUtils (currentPageNo,pageSize,theQuantityOfPlantRecord,2);
            Integer theFormatQuantityOfPlantRecord=theQuantityOfPlantRecord.intValue ();
            if(theFormatQuantityOfPlantRecord<pageSize){
                pageUtils.setPagesize (theFormatQuantityOfPlantRecord);
            }
            try{
                thePlantList=plantService.getPlantList (theColmunName,theColmunValue,pageUtils.getStartrow (),pageUtils.getPagesize ());
            }catch (Exception ex){
                ex.printStackTrace ();
            }
            pageUtils.setList (thePlantList);
        }
        return JSON.toJSONString (pageUtils,SerializerFeature.PrettyFormat);
    }

    @ResponseBody
    @RequestMapping(value="/plant/delPlantMessage",method=RequestMethod.POST)
    public Object delPlantMessage(@RequestParam String theDelPlantsId){
        int delPlantMessageResult=-1;
        String[] theDelPlantsIdStringArray=theDelPlantsId.split (",");
        String[] theFinalResultAboutDelPlants=new String[theDelPlantsIdStringArray.length];
            try{
                for(int i=0;i<theDelPlantsIdStringArray.length;i++){
                    Integer theFormatPlantId=new Integer(theDelPlantsIdStringArray[i]);
                    Integer theResultAboutIsThePlantUsing=plantService.checkIsThePlantUsing (theFormatPlantId);
                    Plant thePlant=plantService.getPlantByPlantId (theFormatPlantId);
                    String thePlantNo=thePlant.getPlant_no ();
                    String thePlantName=thePlant.getPlant_name ();
                    if(theResultAboutIsThePlantUsing==1){
                        theFinalResultAboutDelPlants[i]="编号为"+thePlantNo+"的植物"+thePlantName+"正在被使用，不能删除";

                    }else if(theResultAboutIsThePlantUsing==0){
                        delPlantMessageResult=plantService.deletePlant (theFormatPlantId);
                        if(delPlantMessageResult==1){
                            theFinalResultAboutDelPlants[i]="编号为"+thePlantNo+"的植物"+thePlantName+"删除成功";
                        }else{
                            theFinalResultAboutDelPlants[i]="编号为"+thePlantNo+"的植物"+thePlantName+"删除失败，请稍后再试或联系管理员";
                        }
                    }

                }

            }catch(Exception e){
                e.printStackTrace ();
            }

        return JSON.toJSONString (theFinalResultAboutDelPlants,SerializerFeature.PrettyFormat);
    }

    @ResponseBody
    @RequestMapping(value="/plant_table/baseForm",method=RequestMethod.POST)
    public Object formForaddPlant(){
        List<LanddevCompany> theCompanyList=null;
        try{
            theCompanyList=landdevCompanyService.getCompanyList ();
        }catch(Exception e){
            e.printStackTrace ();
        }
        return JSON.toJSONString (theCompanyList,SerializerFeature.PrettyFormat);
    }

    @RequestMapping("/plant_addtable")
    public String addPlantRecord(){
        return "/clea/plant_addtable";
    }

    @ResponseBody
    @RequestMapping(value="/plant_table/addForm",method=RequestMethod.POST)
    public Object addSavePlants(@RequestParam String plantName, @RequestParam String plantType, @RequestParam Integer plantAge, @RequestParam Integer plantQuantity, @RequestParam String plantUnit, @RequestParam String plantNo, @RequestParam Integer companyId,@RequestParam String plantRemark,@RequestParam String plantCharacter,@RequestParam String plantHabit){
        int iSTheNoOfTheNewAddPlantRepeat=-1;
        int theResultOfAddPlant=-1;
        String theAddResult=null;
        Timestamp theAddTime=new Timestamp (new Date ().getTime ());  //后台处理添加时间
        try{
            iSTheNoOfTheNewAddPlantRepeat=plantService.checkIsThePlantNoRepeat (plantNo);

            if(iSTheNoOfTheNewAddPlantRepeat==1){
                theAddResult="添加失败，植物编号"+plantNo+"已经被使用，请另换一个";
            }else if(iSTheNoOfTheNewAddPlantRepeat==0){
                theResultOfAddPlant=plantService.addPlant (plantName,plantType,plantAge,plantQuantity,plantUnit,theAddTime,plantNo,0,companyId,plantRemark,plantCharacter,plantHabit);
                if(theResultOfAddPlant==1){
                    theAddResult="添加成功";
                }else if(theResultOfAddPlant==0){
                    theAddResult="添加失败，请稍后再试";
                }else if(theResultOfAddPlant==-1){
                    theAddResult="添加失败，请联系管理员";
                }
            }
        }catch(Exception e){
            e.printStackTrace ();
        }

        return JSON.toJSONString (theAddResult,SerializerFeature.PrettyFormat);
    }

    @RequestMapping(value="/plant_updatetable")
    public ModelAndView updatePlantRecord(@RequestParam("thePlantId")Integer thePlantId ){

        ModelAndView modelAndView=new ModelAndView ();
        modelAndView.addObject ("thePlantId",thePlantId);
        modelAndView.setViewName ("/clea/plant_updatetable");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping(value="/plant_updatetable/updateForm",method=RequestMethod.POST)
    public Object updatePlantForm(@RequestParam Integer plantId){
        Plant thePlant=null;
        try{

            thePlant=plantService.getPlantByPlantId (plantId);
        }catch (Exception e){
            e.printStackTrace ();
        }

        return JSON.toJSONString (thePlant,SerializerFeature.PrettyFormat);
    }

    @ResponseBody
    @RequestMapping("/plant_table/saveUpdate")
    public Object saveTheUpdatePlant(@RequestParam String plantName, @RequestParam String plantType, @RequestParam Integer plantAge, @RequestParam Integer plantQuantity, @RequestParam String plantUnit, @RequestParam String plantNo, @RequestParam Integer companyId,@RequestParam String plantRemark,@RequestParam String plantCharacter,@RequestParam String plantHabit,@RequestParam Integer plantId){
        int theResultAboutTheNewPlantNoIsRepeated=-1;
        int theResultAboutUpdateThePlant=-1;
        String theUpdateResult=null;

        try{
            theResultAboutTheNewPlantNoIsRepeated=plantService.checkIsThePlantNoOfTheSpecifedPlantNoRepeat(plantId, plantNo);
            if(theResultAboutTheNewPlantNoIsRepeated==1){
                theUpdateResult="植物编号"+plantNo+"已经被另一植物使用，请选择另外的编号";
            }else if(theResultAboutTheNewPlantNoIsRepeated==0){
                theResultAboutUpdateThePlant=plantService.updatePlant (plantName,plantType,plantAge,plantQuantity,plantUnit,plantNo,companyId,plantRemark,plantCharacter,plantHabit,plantId);
                if(theResultAboutUpdateThePlant==1){
                    theUpdateResult="更改成功";
                }else if(theResultAboutUpdateThePlant==0){
                    theUpdateResult="更改失败，请稍后再试";
                }else if(theResultAboutUpdateThePlant==-1){
                    theUpdateResult="更改失败，请联系管理员";
                }
            }

        }catch(Exception e){
            e.printStackTrace ();
        }

        return JSON.toJSONString (theUpdateResult,SerializerFeature.PrettyFormat);
    }
}
