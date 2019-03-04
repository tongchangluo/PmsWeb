package com.bdqn.pms.web.dao.clea.cleanCheck;

import com.bdqn.pms.web.po.CleanCheck;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;
import java.util.List;

public interface CleanCheckDao {
    public List<CleanCheck> getCleanCheckRecordList(@Param("colmunName")String theColmunName, @Param("colmunValue")String theColmunValue,@Param("from")Integer currentPageNo,@Param("pageSize")Integer pageSize)throws Exception;
    public Long getCleanCheckTotalCount(@Param("colmunName")String theColmunName,@Param("colmunValue")String theColmunValue)throws Exception;
    public int addCleanCheckRecord(@Param("cleanCheckPlace")String theCleanCheckPlace, @Param ("cleanCheckDate")String theCleanCheckDate, @Param("cleanCheckCleaner")String theCleanCheckCleaner, @Param("cleanCheckRummager")String theCleanCheckRummager, @Param ("cleanCheckSituation")String theCleanCheckSituation, @Param("cleanCheckAddDate")Timestamp theCleanCheckAddDate, @Param("cleanCheckDel")Integer theCleanCheckDel, @Param("companyId")Integer theCompanyId, @Param ("cleanCheckRemark")String theCleanCheckRemark)throws Exception;
    public int deleteCleanCheckRecord(@Param("cleanCheckId")int theCleanCheckId)throws Exception;
    public int updateCleanCheck(@Param("cleanCheckPlace")String theCleanCheckPlace, @Param ("cleanCheckDate")String theCleanCheckDate, @Param("cleanCheckCleaner")String theCleanCheckCleaner, @Param("cleanCheckRummager")String theCleanCheckRummager, @Param ("cleanCheckSituation")String theCleanCheckSituation, @Param("companyId")Integer theCompanyId, @Param ("cleanCheckRemark")String theCleanCheckRemark,@Param("cleanCheckId")Integer theCleanCheckId)throws Exception;
    public CleanCheck getCleanCheckByCleanCheckId(@Param("cleanCheckId")Integer theCleanCheckId)throws Exception;
}
