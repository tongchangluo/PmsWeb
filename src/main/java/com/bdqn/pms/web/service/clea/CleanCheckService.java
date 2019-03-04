package com.bdqn.pms.web.service.clea;

import com.bdqn.pms.web.po.CleanCheck;

import java.sql.Timestamp;
import java.util.List;

public interface CleanCheckService {
    public List<CleanCheck> getCleanCheckRecordList(String colmunName, String colmunValue,Integer currentPageNo,Integer pageSize)throws Exception;
    public Long getCleanCheckTotalCount(String theColmunName,String theColmunValue)throws Exception;
    public int addCleanCheckRecord(String theCleanCheckPlace, String theCleanCheckDate, String theCleanCheckCleaner, String theCleanCheckRummager, String theCleanCheckSituation, Timestamp theCleanCheckAddDate, Integer theCleanCheckDel, Integer theCompanyId, String theCleanCheckRemark)throws Exception;
    public int deleteCleanCheckRecord(int theCleanCheckId)throws Exception;
    public int updateCleanCheck(String theCleanCheckPlace, String theCleanCheckDate, String theCleanCheckCleaner,String theCleanCheckRummager,String theCleanCheckSituation,Integer theCompanyId, String theCleanCheckRemark,Integer theCleanCheckId)throws Exception;
    public CleanCheck getCleanCheckByCleanCheckId(Integer theCleanCheckId)throws Exception;

}
