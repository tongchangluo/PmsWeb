$(document).ready(function () {
    function initPlantTable() {
        $.ajax({
            url:"/pmsweb/plant_table/baseForm",
            type:"GET",
            data:{id:"showTheCompany"},
            dataType:"json",
            success:theInitFormAddPlants
        });
    }
    function theInitFormAddPlants(result) {
        var $theCompanySelectItem=$("#theAddedCompanyId");
        $theCompanySelectItem.append(
        "\t\t\t\t                <option selected>请选择</option>\n");
        for(var i=0;i<result.length;i++){
            $theCompanySelectItem.append("\t\t\t\t                <option value="+result[i].ldcId+">"+result[i].ldcName+"</option>\n");
        }

    }

    $("#addPlant").click(function () {
        var $theSelectedCompanyObj=$("#theAddedCompanyId option:selected");
        var $theCompanyId=$theSelectedCompanyObj.val();  //列表框所选的值
        var $thePlantName=$("#plant_name").val();
        var $thePlantType=$("#plant_type").val();
        var $thePlantAge=$("#plant_age").val();
        var $thePlantQuantity=$("#plant_quantity").val();
        var $thePlantUnit=$("#plant_unit").val();
        var $thePlantNo=$("#plant_no").val();
        var $thePlantRemark=$("#plant_remark").val();  //植物的备注
        var $thePlantCharacter=$("#plant_character").val();
        var $thePlantHabit=$("#plant_habit").val();

        if(checkTheSelect()&&checkThePlantName()&&checkThePlantType()&&checkThePlantAge()&&checkThePlantQuantity()&&checkThePlantUnit()&&checkThePlantNo()){
            $.post(
                "/pmsweb/plant_table/addForm",
                {plantName:$thePlantName,plantType:$thePlantType,plantAge:$thePlantAge,plantQuantity:$thePlantQuantity,plantUnit:$thePlantUnit,plantNo:$thePlantNo,companyId:$theCompanyId,plantRemark:$thePlantRemark,plantCharacter:$thePlantCharacter,plantHabit:$thePlantHabit},
                messageForAddPlant,
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
    function messageForAddPlant(resultMessage) {
        alert(resultMessage);
        var $thePlantRemark=$("#plant_remark").val("");  //植物的备注
        var $thePlantNo=$("#plant_no").val("");
        var $thePlantName=$("#plant_name").val("");
        var $thePlantType=$("#plant_type").val("");
        var $thePlantAge=$("#plant_age").val("");
        var $thePlantQuantity=$("#plant_quantity").val("");
        var $thePlantUnit=$("#plant_unit").val("");
        var $thePlantHabit=$("#plant_habit").val("");
        var $thePlantCharacter=$("#plant_character").val("");
        initPlantTable();
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
    function checkThePlantName() {
        var flag=true;
        var $thePlantName=$("#plant_name").val();
        if($thePlantName==null||$thePlantName=="") {
            $("#checkThePlantName").html("请输入");
            flag=false;
        }else{
            $("#checkThePlantName").html("");
        }
        return flag;
    }
    function checkThePlantType() {
        var flag=true;
        var $thePlantType=$("#plant_type").val();
        if($thePlantType==null||$thePlantType==""){
            $("#checkThePlantType").html("请输入");
            flag=false;
        }else{
            $("#checkThePlantType").html("");
        }
        return flag;
    }
    function checkThePlantAge() {
        var flag=true;
        var thePlantAgeReg=/^[0-9]*$/;
        var $thePlantAge=$("#plant_age").val();
        if($thePlantAge==null||$thePlantAge==""){
            $("#checkThePlantAge").html("请输入");
            flag=false;
        }else{
            $("#checkThePlantAge").html("");
        }
        if(thePlantAgeReg.test($thePlantAge)==false){
            $("#checkThePlantAge").html("请输入正确的数字");
            flag=false;
        }else{
            $("#checkThePlantAge").html("");
        }
        return flag;
    }
    function checkThePlantQuantity() {
        var flag=true;
        var thePlantQuantityReg=/^[0-9]*$/;
        var $thePlantQuantity=$("#plant_quantity").val();
        if($thePlantQuantity==null||$thePlantQuantity==""){
            $("#checkThePlantQuantity").html("请输入");
            flag=false;
        }else{
            $("#checkThePlantQuantity").html("");
        }
        if(thePlantQuantityReg.test($thePlantQuantity)==false){
            $("#checkThePlantQuantity").html("请输入正确的数字");
            flag=false;
        }else{
            $("#checkThePlantQuantity").html("");
        }

        return flag;
    }
    function checkThePlantUnit() {
        var flag=true;
        var $thePlantUnit=$("#plant_unit").val();
        if($thePlantUnit==null||$thePlantUnit==""){
            $("#checkThePlantUnit").html("请输入");
            flag=false;
        }else{
            $("#checkThePlantUnit").html("");
        }
        return flag;
    }
    function checkThePlantNo() {
        var flag=true;
        var $thePlantNo=$("#plant_no").val();
        if($thePlantNo==null||$thePlantNo==""){
            $("#checkThePlantNo").html("请输入");
            flag=false;
        }else{
            $("#checkThePlantNo").html("");
        }
        return flag;
    }
    
    $("#theAddedCompanyId").blur(checkTheSelect);
    $("#plant_name").blur(checkThePlantName);
    $("#plant_type").blur(checkThePlantType);
    $("#plant_age").blur(checkThePlantAge);
    $("#plant_quantity").blur(checkThePlantQuantity);
    $("#plant_unit").blur(checkThePlantUnit);
    $("#plant_no").blur(checkThePlantNo);
    
    
    initPlantTable();
});