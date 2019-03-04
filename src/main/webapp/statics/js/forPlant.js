$(document).ready(function () {
    function initPlant() {
        var theSelectedColmunName=$("#theSelectedQueryColmunName").val();  //临时保存的列表选所选的选项
        var theSelectedColmunValue=$("#theSelectedQueryColmunValue").val();  //临时保存的查询输入内容
        var $thePageSizeItem=$("#chooseThePageSize option:selected");
        var $thePageSize=$thePageSizeItem.val();  //每页所要显示的记录的条数

        if(theSelectedColmunName==null){
            theSelectedColmunName=="init";
        }
        if(theSelectedColmunValue==null){
            theSelectedColmunValue=="init";
        }
        $.ajax({
            url:"/pmsweb/plant/queryList",
            type:"POST",
            data:{id:"showInitPlant",pageSize:$thePageSize,currentPageNo:1,theColmunName:theSelectedColmunName,theColmunValue:theSelectedColmunValue},
            dataType:"json",
            success:theQueryPageContent
        });

    }


    function checkTheQueryContent() {
        var $theSelectColmunNameOption=$("#plantQueryItemColmunName option:selected");
        var $theSelectColmunName=$theSelectColmunNameOption.val();  //列表框所选择的选项的值
        var $theSelectColmunValue=$("#plantQueryItemClomunValue").val();  //搜索栏中所填的内容
        if($theSelectColmunValue==null){
            $("#checkTheColmunValue").html("不能为空");
            return false;
        }else{
            var regNo=/^[0-9]*$/;
            if($theSelectColmunName=="plant_Age"){
                if(regNo.test($theSelectColmunValue)==false){
                    $("#checkTheColmunValue").html("请输入正确的数值");
                    return false;
                }else{
                    $("#checkTheColmunValue").html("");
                }
            }else if($theSelectColmunName=="plant_quantity"){
                if(regNo.test($theSelectColmunValue)==false){
                    $("#checkTheColmunValue").html("请输入正确的数值");
                    return false;
                }else{
                    $("#checkTheColmunValue").html("");
                }
            }
        }
        return true;
    }

    $("#plantQueryItemClomunValue").blur(checkTheQueryContent);

    $("#plantQuery").click(function () {
        var $theSelectColmunNameOption=$("#plantQueryItemColmunName option:selected");
        var $theSelectColmunName=$theSelectColmunNameOption.val();  //列表框所选择的选项的值
        var $theSelectColmunValue=$("#plantQueryItemClomunValue").val();  //搜索栏中所填的内容
        var $thePageSizeItem=$("#chooseThePageSize option:selected");
        var $thePageSize=$thePageSizeItem.val();  //每页所要显示的记录的条数
        if(checkTheQueryContent()!=false){
            $("#theSelectedQueryColmunName").val($theSelectColmunName);  //将列表框所选择的选项的值临时保存
            $("#theSelectedQueryColmunValue").val($theSelectColmunValue);  //将快速检索的输入内容临时保存
            $.post(
                "/pmsweb/plant/queryList",
                {id:"showInitPlant",pageSize:$thePageSize,currentPageNo:1,theColmunName:$theSelectColmunName,theColmunValue:$theSelectColmunValue},
                theQueryPageContent,
                "json"
            );
        }else{
            checkTheQueryContent();
        }


    });
    function theQueryPageContent(result) {
        var $thePlantListZone = $("#plantMessage").empty();
        var $thePageSituationZone = $("#pageSituation").empty();
        var thePlantList = result.list;
        var theNowPage=parseInt(result.currpage);  //当前页面数
        var theTotalPage=parseInt(result.totalpage);  //总页面数
        var theStartRow=parseInt(result.startrow)+1;  //开始的行数
        var theEndRow=parseInt(result.endtrow)+1;  //结束的行数
        var theTotalRow=parseInt(result.totalrecord);  //总记录数
        var theLastRow;  //显示的最后一行的行数
        if(theEndRow<=theTotalRow){
            theLastRow = theEndRow;
        }else if(theEndRow>theTotalRow){
            theLastRow=theTotalRow;
        }
        var theNextPage=theNowPage+1;  //下一页
        var theBackPage=theNowPage-1;  //上一页

        for (var i = 0; i < thePlantList.length; i++) {
            var theIdOfThePlant=thePlantList[i].plant_id;
            $thePlantListZone.append("<tr class=\"gradeA\">" +
                "<td width=\"40px\"><input class='plantObj' type=\"checkbox\" value='" + theIdOfThePlant + "'/></td>" +
                "<td>" + thePlantList[i].landdevCompany.ldcName + "</td>" +
                "<td>" + thePlantList[i].plant_no + "</td>" +
                "<td><a href='plant_updatetable?thePlantId="+theIdOfThePlant+"'>" + thePlantList[i].plant_name + "</a></td>" +
                "<td>" + thePlantList[i].plant_type + "</td>" +
                "<td>" + thePlantList[i].plant_age + "</td>" +
                "<td>" + thePlantList[i].plant_quantity + "</td>" +
                "<td>" + thePlantList[i].plant_unit + "</td>" +
                "<td>" + thePlantList[i].plant_habit + "</td>"
            );
        }
        if(thePlantList.length==0){
            theStartRow=0;
            theLastRow=0;
        }
        $thePageSituationZone.append("<span>\n,现显示第<span id=\"recordfrom\">"+theStartRow+"</span>到第<span id=\"recordend\">" + theLastRow + "</span> 条，共 <span id=\"recordQuantity\">" + result.totalrecord + "</span> 条\n");
        if (theNowPage == 1&&theNowPage!=theTotalPage&&theTotalPage!=0) {
            $thePageSituationZone.append(
                    "                                    <span id='theCurrentPageNo'>第" + theNowPage + "页</span>\n" +
                    "<a onclick='pickQueryPage("+theNextPage+")'>下一页</a>&nbsp;\n" +
                    "<a onclick='pickQueryPage("+theTotalPage+")'>尾页</a>\n" +
                    "</span>");
        }else if(theNowPage == 1&&theTotalPage==0){
            $thePageSituationZone.append("<span>\n" +
                "                                    <span id='theCurrentPageNo'>第" + theNowPage + "页</span>\n" +
                "</span>"
            );
        }else if(theNowPage!=theTotalPage){
            $thePageSituationZone.append("<span>\n" +
                    "<a onclick='pickQueryPage(1)'>首页</a>&nbsp;\n" +
                    "                                    <span id='theCurrentPageNo'>第" + theNowPage + "页</span>\n" +
                    "<a onclick='pickQueryPage("+theBackPage+")'>上一页</a>\n" +
                    "<a onclick='pickQueryPage("+theNextPage+")'>下一页</a>&nbsp;\n" +
                    "<a onclick='pickQueryPage("+theTotalPage+")'>尾页</a>\n" +
                    "</span>");
        }else if(theNowPage==1&&theNowPage==theTotalPage){
            $thePageSituationZone.append("<span>\n" +
                "                                    <span id='theCurrentPageNo'>第" + theNowPage + "页</span>\n" +
                "</span>"
            );
        }else if(theNowPage!=1&&theNowPage==theTotalPage){
            $thePageSituationZone.append("<span>\n" +
                "<a onclick='pickQueryPage(1)'>首页</a>&nbsp;\n" +
                "<a onclick='pickQueryPage("+theBackPage+")'>上一页</a>\n" +
                "                                    <span id='theCurrentPageNo'>第" + theNowPage + "页</span>\n" +
                "</span>"
            );
        }
    }
    pickQueryPage=function(thePickPage) {
        var $theSelectedColmunName=$("#theSelectedQueryColmunName").val();  //临时保存的列表选所选的选项
        var $theSelectedColmunValue=$("#theSelectedQueryColmunValue").val();  //临时保存的查询输入内容
        if($theSelectedColmunName==null){
            $theSelectedColmunName=="init";
        }
        if($theSelectedColmunValue==null){
            $theSelectedColmunValue=="init";
        }
        var $thePageSizeItem=$("#chooseThePageSize option:selected");
        var $thePageSize=$thePageSizeItem.val();  //每页所要显示的记录的条数

        $.ajax({
            url:"/pmsweb/plant/queryList",
            type:"POST",
            data:{id:"showInitPlant",pageSize:$thePageSize,currentPageNo:thePickPage,theColmunName:$theSelectedColmunName,theColmunValue:$theSelectedColmunValue},
            dataType:"json",
            success:theQueryPageContent
        });
    }
    $("#plantDel").click(function () {
        var theSelectedColmunName=$("#theSelectedQueryColmunName").val();  //临时保存的列表选所选的选项
        var theSelectedColmunValue=$("#theSelectedQueryColmunValue").val();  //临时保存的查询输入内容
        if(theSelectedColmunName==null){
            theSelectedColmunName=="init";
        }
        if(theSelectedColmunValue==null){
            theSelectedColmunValue=="init";
        }
        var $thePageSizeItem=$("#chooseThePageSize option:selected");
        var $thePageSize=$thePageSizeItem.val();  //每页所要显示的记录的条数
        var $theCurrentPageNumber=$("#theCurrentPageNo").val();  //当前页数

        var thePlantsListObj=$(".plantObj");  //值为植物id的复选框的对象集合
        var theSelectedCheckBoxObj=new Array();  //存放被选中的植物信息id的数组
        for(var i=0;i<thePlantsListObj.length;i++){
            if(thePlantsListObj.eq(i).prop("checked")){
                var theSelectedCheckBoxObjValue=thePlantsListObj.eq(i).val();
                theSelectedCheckBoxObj.push(theSelectedCheckBoxObjValue);
            }
        }
        var transubmitStr=theSelectedCheckBoxObj.join();
        if(theSelectedCheckBoxObj.length==0){
            alert("请选中要删除的记录信息");
        }else{
            $.ajax({
                url: "/pmsweb/plant/delPlantMessage",
                type:"POST",
                data:{theDelPlantsId:transubmitStr},
                dataType:"json",
                success:function (result) {
                    for(var i=0;i<result.length;i++){
                        alert(result[i]);
                    }

                    window.location.reload();
                }
            });
        }

    });

    initPlant();
});