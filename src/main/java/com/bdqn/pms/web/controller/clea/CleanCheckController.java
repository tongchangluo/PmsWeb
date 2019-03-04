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
import com.bdqn.pms.web.po.CleanCheck;
import com.bdqn.pms.web.po.LanddevCompany;
import com.bdqn.pms.web.service.clea.CleanCheckService;
import com.bdqn.pms.web.service.hsmm.LanddevCompanyService;

@Controller
public class CleanCheckController {
    @Resource
    private CleanCheckService cleanCheckService;

    @Resource
    private LanddevCompanyService landdevCompanyService;

    @RequestMapping("/cleanck")
    public String gotoCleanCheck(){
        return "/clea/cleanck";
    }

    @ResponseBody
    @RequestMapping(value="/cleanck/queryList",method= RequestMethod.POST)
    public Object showTheQueryCleanCheckList(@RequestParam String id, @RequestParam Integer pageSize, @RequestParam Integer currentPageNo, @RequestParam String theColmunName, @RequestParam String theColmunValue){
        List<CleanCheck> theCleanCheckList=null;
        Long theQuantityOfCleanCheckRecord=null;
        PageUtils pageUtils=null;
        String theFormatColmunValue=null;
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
            }else{
                theFormatColmunValue="'"+theColmunValue+"'";
            }

            try{
                theQuantityOfCleanCheckRecord=cleanCheckService.getCleanCheckTotalCount (theColmunName,theFormatColmunValue);
            }catch(Exception e){
                e.printStackTrace ();
            }
            pageUtils=new PageUtils (currentPageNo,pageSize,theQuantityOfCleanCheckRecord,2);
            Integer theFormatQuantityOfCleanCheckRecord=theQuantityOfCleanCheckRecord.intValue ();
            if(theFormatQuantityOfCleanCheckRecord<pageSize){
                pageUtils.setPagesize (theFormatQuantityOfCleanCheckRecord);
            }
            try{
                theCleanCheckList=cleanCheckService.getCleanCheckRecordList (theColmunName,theFormatColmunValue,pageUtils.getStartrow (),pageUtils.getPagesize ());
            }catch (Exception ex){
                ex.printStackTrace ();
            }
            pageUtils.setList (theCleanCheckList);
        }

        return JSON.toJSONString (pageUtils, SerializerFeature.PrettyFormat);
    }

    @ResponseBody
    @RequestMapping(value="/cleanck/delCleancheckMessage",method=RequestMethod.POST)
    public Object delCleanCheckMessage(@RequestParam String id,@RequestParam Integer pageSize,@RequestParam Integer currentPageNo,@RequestParam String theColmunName,@RequestParam String theColmunValue,@RequestParam String theDelPlantsId){
        int delCleanCheckMessageResult=-1;
        String[] theDelCleanCheckIdStringArray=theDelPlantsId.split (",");
        String[] theResultAboutDelCleanCheck=new String[theDelCleanCheckIdStringArray.length];

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

                for(int i=0;i<theDelCleanCheckIdStringArray.length;i++){
                    CleanCheck theCleanCheck=null;
                    Integer theFormatPlantId=new Integer(theDelCleanCheckIdStringArray[i]);
                    theCleanCheck=cleanCheckService.getCleanCheckByCleanCheckId (theFormatPlantId);
                    delCleanCheckMessageResult=cleanCheckService.deleteCleanCheckRecord (theFormatPlantId);
                    if(delCleanCheckMessageResult==1){
                        theResultAboutDelCleanCheck[i]="序号为"+theCleanCheck.getCleanck_id ()+"的清洁检查记录已经删除";
                    }else if(delCleanCheckMessageResult==0){
                        theResultAboutDelCleanCheck[i]="序号为"+theCleanCheck.getCleanck_id ()+"的清洁检查记录删除失败，请稍后再试，或联系管理员";
                    }
                }
            }catch(Exception e){
                e.printStackTrace ();
            }
        }
        return JSON.toJSONString (theResultAboutDelCleanCheck,SerializerFeature.PrettyFormat);
    }

    @ResponseBody
    @RequestMapping(value="/cleanck_table/baseForm",method=RequestMethod.POST)
    public Object formForaddCleanCheck(){
        List<LanddevCompany> theCompanyList=null;
        try{
            theCompanyList=landdevCompanyService.getCompanyList ();
        }catch(Exception e){
            e.printStackTrace ();
        }
        return JSON.toJSONString (theCompanyList,SerializerFeature.PrettyFormat);
    }

    @RequestMapping("/cleanck_addtable")
    public String addCleanCheckRecord(){
        return "/clea/cleanck_addtable";
    }

    @ResponseBody
    @RequestMapping(value="/cleanck_table/addForm",method=RequestMethod.POST)
    public Object addSaveCleanCheck(@RequestParam String cleancheckPlace, @RequestParam String cleancheckDate, @RequestParam String cleancheckCleaner, @RequestParam String cleancheckRummager, @RequestParam String cleancheckSituation, @RequestParam Integer companyId, @RequestParam String cleancheckRemark){
        int theResultOfAddPlant=-1;
        String theAddResult=null;
        Timestamp theAddTime=new Timestamp (new Date ().getTime ());  //后台处理添加时间
        if(cleancheckRemark.equals ("init")){
            cleancheckRemark="";
        }
        try{
            theResultOfAddPlant=cleanCheckService.addCleanCheckRecord (cleancheckPlace,cleancheckDate,cleancheckCleaner,cleancheckRummager,cleancheckSituation,theAddTime,0,companyId,cleancheckRemark);
        }catch(Exception e){
            e.printStackTrace ();
        }
        if(theResultOfAddPlant==1){
            theAddResult="添加成功";
        }else if(theResultOfAddPlant==0){
            theAddResult="添加失败，请稍后再试";
        }else if(theResultOfAddPlant==-1){
            theAddResult="添加失败，请联系管理员";
        }
        return JSON.toJSONString (theAddResult,SerializerFeature.PrettyFormat);
    }

    @RequestMapping(value="/cleanck_updatetable")
    public ModelAndView updateCleanCheck(@RequestParam("theCleanCheckId") Integer theCleanCheckId){
        ModelAndView modelAndView=new ModelAndView ();
        modelAndView.addObject ("theCleanCheckId",theCleanCheckId);
        modelAndView.setViewName ("/clea/cleanck_updatetable");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping(value="/cleanck_updatetable/updateForm",method = RequestMethod.POST)
    public Object updataCleanCheckForm(@RequestParam Integer cleanCheckId){
        CleanCheck theCleanCheck=null;
        try{
            theCleanCheck=cleanCheckService.getCleanCheckByCleanCheckId (cleanCheckId);
        }catch(Exception e){
            e.printStackTrace ();
        }
        return JSON.toJSONString (theCleanCheck,SerializerFeature.PrettyFormat);
    }

    @ResponseBody
    @RequestMapping("/cleanck_table/saveUpdate")
    public Object saveTheUpdateCleanCheck(@RequestParam String cleanCheckPlace, @RequestParam String cleanCheckDate, @RequestParam String cleanCheckCleaner, @RequestParam String cleanCheckRummager, @RequestParam String cleanCheckSituation, @RequestParam Integer companyId, @RequestParam String cleanCheckRemark,@RequestParam Integer cleanCheckId){
        int theResultAboutUpdateCleanCheck=-1;
        String theResultOfUpdate=null;
        try{
            theResultAboutUpdateCleanCheck=cleanCheckService.updateCleanCheck (cleanCheckPlace,cleanCheckDate,cleanCheckCleaner,cleanCheckRummager,cleanCheckSituation,companyId,cleanCheckRemark,cleanCheckId);
        }catch(Exception e){
            e.printStackTrace ();
        }
        if(theResultAboutUpdateCleanCheck==-1){
            theResultOfUpdate="更改失败，请检查再试或联系管理员";
        }else if(theResultAboutUpdateCleanCheck==0){
            theResultOfUpdate="更改失败，请稍后再试";
        } else if (theResultAboutUpdateCleanCheck == 1) {
            theResultOfUpdate="更改成功";
        }
        return JSON.toJSONString (theResultOfUpdate,SerializerFeature.PrettyFormat);
    }
}
