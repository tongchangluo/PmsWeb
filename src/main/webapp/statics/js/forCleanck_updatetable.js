$(document).ready(function () {
    function initCleanCheckUpdateTable() {
        var theCleanCheckIdOfThisPage=$("#theCleanCheckId").val();  //这个页面的清洁检查的id
        $.ajax({
            url:"/pmsweb/cleanck_updatetable/updateForm",
            type:"POST",
            data:{cleanCheckId:theCleanCheckIdOfThisPage},
            dataType:"json",
            success:theInitFormUpdateCleanCheck
        });
    }
    function theInitFormUpdateCleanCheck(result) {
        var theCleanCheckPlace=result.cleanck_place;  //清洁地段
        var theCleanCheckDate=result.cleanck_date;  //检查时间
        var theCleanCheckCleaner=result.cleanck_cleaner;  //清洁人
        var theCleanCheckRummager=result.cleanck_rummager;  //检查人
        var theCleanCheckSituation=result.cleanck_situation;  //检查状况
        var theCompanyId=result.landdevCompany.ldcId;  //公司的id
        var theCompanyName=result.landdevCompany.ldcName;  //公司的名字;
        var theCleanCheckRemark=result.cleanck_remark;  //检查备注
        $.ajax({
            url:"/pmsweb/cleanck_table/baseForm",
            type:"POST",
            dataType:"json",
            success:function (companyData) {
                var $theCompanySelectItem=$("#theAddedCompanyId");
                $theCompanySelectItem.append(
                    "\t\t\t\t                <option value='"+theCompanyId+"' selected>"+theCompanyName+"</option>\n");
                for(var i=0;i<companyData.length;i++){
                    $theCompanySelectItem.append("\t\t\t\t                <option value="+companyData[i].ldcId+">"+companyData[i].ldcName+"</option>\n");
                }
            }
        });
        $("#cleanck_place").val(theCleanCheckPlace);
        $("#cleanck_date").val(theCleanCheckDate);
        $("#cleanck_cleaner").val(theCleanCheckCleaner);
        $("#cleanck_rummager").val(theCleanCheckRummager);
        $("#cleanck_situation").val(theCleanCheckSituation);
        $("#cleanck_remark").val(theCleanCheckRemark);
    }

    $("#updateCleanCheck").click(function () {
        var $theCleanCheckId=$("#theCleanCheckId").val();  //植物的id
        var $theSelectedCompanyObj=$("#theAddedCompanyId option:selected");
        var $theCompanyId=$theSelectedCompanyObj.val();  //列表框所选的值，即公司的id
        var $theCleanCheckPlace=$("#cleanck_place").val();
        var $theCleanCheckDate=$("#cleanck_date").val();
        var $theCleanCheckCleaner=$("#cleanck_cleaner").val();
        var $theCleanCheckRummager=$("#cleanck_rummager").val();
        var $theCleanCheckSituation=$("#cleanck_situation").val();
        var $theCleanCheckRemark=$("#cleanck_remark").val();  //植物的备注
        if(checkTheSelect()&&checkTheCleanCheckPlace()&&checkTheCleanCheckDate()&&checkTheCleanCheckCleaner()&&checkTheCleanCheckRummager()&&checkTheCleanCheckSituation()){
            $.post(
                "/pmsweb/cleanck_table/saveUpdate",
                {cleanCheckPlace:$theCleanCheckPlace,cleanCheckDate:$theCleanCheckDate,cleanCheckCleaner:$theCleanCheckCleaner,cleanCheckRummager:$theCleanCheckRummager,cleanCheckSituation:$theCleanCheckSituation,companyId:$theCompanyId,cleanCheckRemark:$theCleanCheckRemark,cleanCheckId:$theCleanCheckId},
                messageForUpdateCleanCheck,
                "json"
            );
        }else{
            checkTheSelect();
            checkTheCleanCheckPlace();
            checkTheCleanCheckDate();
            checkTheCleanCheckCleaner();
            checkTheCleanCheckRummager();
            checkTheCleanCheckSituation()
        }
    });
    function messageForUpdateCleanCheck(resultMessage) {
        alert(resultMessage);
    }
    function checkTheSelect() {
        var flag=true;
        var $theSelectedCompanyObj=$("#theAddedCompanyId option:selected");
        var $theCompanyId=$theSelectedCompanyObj.val();  //列表框所选的值
        if($theCompanyId==null||$theCompanyId=="请选择"){
            $("#checkTheSelect").html("请选择公司");
            flag=false;
        }else{
            $("#checkTheSelect").html("");
        }
        return flag;
    }
    function checkTheCleanCheckPlace() {
        var flag=true;
        var $theCleanCheckPlace=$("#cleanck_place").val();
        if($theCleanCheckPlace==null||$theCleanCheckPlace=="") {
            $("#checkTheCleanCheckPlace").html("请输入");
            flag=false;
        }else{
            $("#checkTheCleanCheckPlace").html("");
        }
        return flag;
    }
    function checkTheCleanCheckDate() {
        var flag=true;
        var $theCleanCheckDate=$("#cleanck_date").val();
        if($theCleanCheckDate==null||$theCleanCheckDate==""){
            $("#checkThecleanCheckDate").html("请输入");
            flag=false;
        }else{
            $("#checkThecleanCheckDate").html("");
        }
        return flag;
    }
    function checkTheCleanCheckCleaner() {
        var flag=true;
        var $theCleanCheckCleaner=$("#cleanck_cleaner").val();
        if($theCleanCheckCleaner==null||$theCleanCheckCleaner==""){
            $("#checkTheCleanCheckCleaner").html("请输入");
            flag=false;
        }else{
            $("#checkTheCleanCheckCleaner").html("");
        }
        return flag;
    }
    function checkTheCleanCheckRummager() {
        var flag=true;
        var $theCleanCheckRummager=$("#cleanck_rummager").val();
        if($theCleanCheckRummager==null||$theCleanCheckRummager==""){
            $("#checkTheCleanCheckRummager").html("请输入");
            flag=false;
        }else{
            $("#checkTheCleanCheckRummager").html("");
        }
        return flag;
    }
    function checkTheCleanCheckSituation(){
        var flag=true;
        var $theCleanCheckSituation=$("#cleanck_situation").val();
        if($theCleanCheckSituation==null||$theCleanCheckSituation==""){
            $("#checkTheCleanCheckSituation").html("请输入");
            flag=false;
        }else{
            $("#checkTheCleanCheckSituation").html("");
        }
        return flag;
    }

    $("#theAddedCompanyId").blur(checkTheSelect);
    $("#cleanck_place").blur(checkTheCleanCheckPlace);
    $("#cleanck_date").blur(checkTheCleanCheckDate);
    $("#cleanck_cleaner").blur(checkTheCleanCheckCleaner);
    $("#cleanck_rummager").blur(checkTheCleanCheckRummager);
    $("#cleanck_situation").blur(checkTheCleanCheckSituation);

    initCleanCheckUpdateTable();
});