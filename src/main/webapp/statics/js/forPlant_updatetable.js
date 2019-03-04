$(document).ready(function () {
    function initPlantUpdateTable() {
        var thePlantIdOfThisPage=$("#thePlantId").val();  //这个页面的植物的id
        $.ajax({
            url:"/pmsweb/plant_updatetable/updateForm",
            type:"POST",
            data:{plantId:thePlantIdOfThisPage},
            dataType:"json",
            success:theInitFormUpdatePlants
        });
    }
    function theInitFormUpdatePlants(result) {
        var thePlantName=result.plant_name;  //植物名
        var thePlantType=result.plant_type;  //植物类型
        var thePlantAge=result.plant_age;  //植物年龄
        var thePlantQuantity=result.plant_quantity;  //植物数量
        var thePlantUnit=result.plant_unit;  //植物的单位
        var thePlantNo=result.plant_no;  //植物的编码
        var thePlantCompanyId=result.landdevCompany.ldcId;  //公司的id
        var thePlantCompanyName=result.landdevCompany.ldcName;  //公司的名字;
        var thePlantRemark=result.plant_remark;
        var thePlantCharacter=result.plant_character;
        var thePlantHabit=result.plant_habit;
        $.ajax({
            url:"/pmsweb/plant_table/baseForm",
            type:"POST",
            dataType:"json",
            success:function (companyData) {
                var $theCompanySelectItem=$("#theAddedCompanyId");
                $theCompanySelectItem.append(
                    "\t\t\t\t                <option value='"+thePlantCompanyId+"' selected>"+thePlantCompanyName+"</option>\n");
                for(var i=0;i<companyData.length;i++){
                    $theCompanySelectItem.append("\t\t\t\t                <option value="+companyData[i].ldcId+">"+companyData[i].ldcName+"</option>\n");
                }
            }
        });
        $("#plant_no").val(thePlantNo);
        $("#plant_name").val(thePlantName);
        $("#plant_type").val(thePlantType);
        $("#plant_age").val(thePlantAge);
        $("#plant_quantity").val(thePlantQuantity);
        $("#plant_unit").val(thePlantUnit);
        $("#plant_character").val(thePlantCharacter);
        $("#plant_habit").val(thePlantHabit);
        $("#plant_remark").val(thePlantRemark);
    }

    $("#updatePlant").click(function () {
        var $thePlantId=$("#thePlantId").val();  //植物的id
        var $theSelectedCompanyObj=$("#theAddedCompanyId option:selected");
        var $theCompanyId=$theSelectedCompanyObj.val();  //列表框所选的值，即公司的id
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
                "/pmsweb/plant_table/saveUpdate",
                {plantName:$thePlantName,plantType:$thePlantType,plantAge:$thePlantAge,plantQuantity:$thePlantQuantity,plantUnit:$thePlantUnit,plantNo:$thePlantNo,companyId:$theCompanyId,plantRemark:$thePlantRemark,plantCharacter:$thePlantCharacter,plantHabit:$thePlantHabit,plantId:$thePlantId},
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

    initPlantUpdateTable();
});