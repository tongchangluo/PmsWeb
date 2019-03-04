$(document).ready(function () {
    function initCleanCheckTable() {
        $.ajax({
            url:"/pmsweb/cleanck_table/baseForm",
            type:"POST",
            data:{id:"showTheCompany"},
            dataType:"json",
            success:theInitFormAddCleanCheck
        });
    }
    function theInitFormAddCleanCheck(result) {
        var $theCompanySelectItem=$("#theAddedCompanyId");
        $theCompanySelectItem.append(
            "\t\t\t\t                <option selected>请选择</option>\n");
        for(var i=0;i<result.length;i++){
            $theCompanySelectItem.append("\t\t\t\t                <option value="+result[i].ldcId+">"+result[i].ldcName+"</option>\n");
        }

    }

    $("#addCleanCheck").click(function () {
        var $theSelectedCompanyObj=$("#theAddedCompanyId option:selected");
        var $theCompanyId=$theSelectedCompanyObj.val();  //列表框所选的值，即公司id
        var $theCleanCheckPlace=$("#cleanck_place").val();  //清洁地段
        var $theCleanCheckDate=$("#cleanck_date").val();  //清洁日期
        var $theCleanCheckRummager=$("#cleanck_rummager").val();  //检查人
        var $theCleanCheckCleaner=$("#cleanck_cleaner").val();  //清洁人
        var $theCleanCheckSituation=$("#cleanck_situation").val();  //检查状况
        var $theCleanCheckRemark=$("#cleanck_remark").val();  //备注

        if(checkTheSelect()&&checkTheCleanCheckPlace()&&checkTheCleanCheckDate()&&checkTheCleanCheckCleaner()&&checkTheCleanCheckRummager()&&checkTheCleanCheckSituation()){
            if($theCleanCheckRemark==""){
                $theCleanCheckRemark="init";
            }

            $.post(
                "/pmsweb/cleanck_table/addForm",
                {cleancheckPlace:$theCleanCheckPlace,cleancheckDate:$theCleanCheckDate,cleancheckCleaner:$theCleanCheckCleaner,cleancheckRummager:$theCleanCheckRummager,cleancheckSituation:$theCleanCheckSituation,companyId:$theCompanyId,cleancheckRemark:$theCleanCheckRemark},
                messageForAddCleanCheck,
                "json"
            );
        }else{
            checkTheSelect();
            checkThePlantName();
            checkThePlantType();
            checkThePlantAge();
            checkThePlantQuantity();
            checkThePlantUnit();
            checkThePlantNo();
        }

    });
    function messageForAddCleanCheck(resultMessage) {
        alert(resultMessage);
        var $theSelectedCompanyObj=$("#theAddedCompanyId option:selected");
        var $theCompanyId=$theSelectedCompanyObj.val();  //列表框所选的值，即公司id
        var $theCleanCheckPlace=$("#cleanck_place").val("");  //清洁地段
        var $theCleanCheckDate=$("#cleanck_date").val("");  //清洁日期
        var $theCleanCheckRummager=$("#cleanck_rummager").val("");  //检查人
        var $theCleanCheckCleaner=$("#cleanck_cleaner").val("");  //清洁人
        var $theCleanCheckSituation=$("#cleanck_situation").val("");  //检查状况
        var $theCleanCheckRemark=$("#cleanck_remark").val("");  //备注

        initCleanCheckTable();
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
        if($theCleanCheckPlace==null||$theCleanCheckPlace==""){
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
        if($theCleanCheckDate==null||$theCleanCheckDate=="") {
            $("#checkTheCleanCheckDate").html("请输入");
            flag=false;
        }else{
            $("#checkTheCleanCheckDate").html("");
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
    function checkTheCleanCheckSituation() {
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

    initCleanCheckTable();
});