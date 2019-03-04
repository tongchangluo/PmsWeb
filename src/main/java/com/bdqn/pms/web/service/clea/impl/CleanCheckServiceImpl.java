package com.bdqn.pms.web.service.clea.impl;


import com.bdqn.pms.web.dao.clea.cleanCheck.CleanCheckDao;
import com.bdqn.pms.web.po.CleanCheck;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.List;
@Repository
@Service("cleanCheckService")
public class CleanCheckServiceImpl implements com.bdqn.pms.web.service.clea.CleanCheckService{
    @Resource
    @SuppressWarnings ("SpringJavaAutowiringInspection")
    private CleanCheckDao cleanCheckDao;

    public List<CleanCheck> getCleanCheckRecordList(String colmunName, String colmunValue,Integer currentPageNo,Integer pageSize)throws Exception{
        List<CleanCheck> theListOfCleanCheck=null;
        try{
            theListOfCleanCheck=cleanCheckDao.getCleanCheckRecordList (colmunName,colmunValue,currentPageNo,pageSize);
        }catch(Exception e){
            e.printStackTrace ();
        }
        return theListOfCleanCheck;
    }

    public Long getCleanCheckTotalCount(String theColmunName,String theColmunValue)throws Exception{
        Long theTotalCountOfCleanCheck=null;
        try{
            theTotalCountOfCleanCheck=cleanCheckDao.getCleanCheckTotalCount (theColmunName,theColmunValue);
        }catch(Exception e){
            e.printStackTrace ();
        }
        return theTotalCountOfCleanCheck;
    }

    public int addCleanCheckRecord(String theCleanCheckPlace, String theCleanCheckDate, String theCleanCheckCleaner, String theCleanCheckRummager, String theCleanCheckSituation, Timestamp theCleanCheckAddDate, Integer theCleanCheckDel, Integer theCompanyId, String theCleanCheckRemark)throws Exception{
        int theResultOfAdd=0;
        try{
            theResultOfAdd=cleanCheckDao.addCleanCheckRecord (theCleanCheckPlace,theCleanCheckDate,theCleanCheckCleaner,theCleanCheckRummager,theCleanCheckSituation,theCleanCheckAddDate,theCleanCheckDel,theCompanyId,theCleanCheckRemark);
        }catch(Exception e){
            e.printStackTrace ();
        }
        return theResultOfAdd;
    }
    public int deleteCleanCheckRecord(int theCleanCheckId)throws Exception{
        int theResultOfDel=0;
        try{
            theResultOfDel=cleanCheckDao.deleteCleanCheckRecord (theCleanCheckId);
        }catch (Exception e){
            e.printStackTrace ();
        }
        return theResultOfDel;
    }
    public int updateCleanCheck(String theCleanCheckPlace, String theCleanCheckDate, String theCleanCheckCleaner,String theCleanCheckRummager,String theCleanCheckSituation,Integer theCompanyId, String theCleanCheckRemark,Integer theCleanCheckId)throws Exception{
        int theResultAboutUpdate=-1;
        try{
            theResultAboutUpdate=cleanCheckDao.updateCleanCheck (theCleanCheckPlace,theCleanCheckDate,theCleanCheckCleaner,theCleanCheckRummager,theCleanCheckSituation,theCompanyId,theCleanCheckRemark,theCleanCheckId);

        }catch(Exception e){
            e.printStackTrace ();
        }
        return theResultAboutUpdate;
    }
    public CleanCheck getCleanCheckByCleanCheckId(Integer theCleanCheckId)throws Exception{
        CleanCheck cleanCheck=null;
        try{
            cleanCheck=cleanCheckDao.getCleanCheckByCleanCheckId (theCleanCheckId);
        }catch(Exception e){
            e.printStackTrace ();
        }
        return cleanCheck;
    }

}
