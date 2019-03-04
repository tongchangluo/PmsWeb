<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>物业管理——添加植被信息</title>
    <meta name="keywords" content="物业管理系统">
    <meta name="description" content="物业管理系统">

    <link rel="shortcut icon" href="favicon.ico">
	<link href="${pageContext.request.contextPath }/statics/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <!-- Data Tables -->
    <link href="${pageContext.request.contextPath }/statics/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath }/statics/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/css/style.min862f.css?v=4.1.0" rel="stylesheet">
	<style>
		.intext{
			width: 360px;
			line-height: 25px;
			margin: 14px 10px;
		}
		span{
			width: 70px;
			display: inline-block;
			margin: 14px 0px 14px 14px;
			
		}
	</style>

	<script src="${pageContext.request.contextPath }/statics/js/jquery.min.js?v=2.1.4"></script>
	<script src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="${pageContext.request.contextPath }/statics/js/forPlant_table.js" type="text/javascript"/>
	<script src="${pageContext.request.contextPath }/statics/js/plugins/jeditable/jquery.jeditable.js"></script>
	<script src="${pageContext.request.contextPath }/statics/js/plugins/dataTables/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath }/statics/js/plugins/dataTables/dataTables.bootstrap.js"></script>
	<script src="${pageContext.request.contextPath }/statics/js/content.min.js?v=1.0.0"></script>
	<script>
        $(document).ready(function(){$(".dataTables-example").dataTable();var oTable=$("#editable").dataTable();oTable.$("td").editable("http://www.gzsxt.cn/theme/example_ajax.php",{"callback":function(sValue,y){var aPos=oTable.fnGetPosition(this);oTable.fnUpdate(sValue,aPos[0],aPos[1])},"submitdata":function(value,settings){return{"row_id":this.parentNode.getAttribute("id"),"column":oTable.fnGetPosition(this)[2]}},"width":"90%","height":"100%"})});function fnClickAddRow(){$("#editable").dataTable().fnAddData(["Custom row","New row","New row","New row","New row"])};
	</script>
	<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath }/statics/js/date/WdatePicker.js"></script>
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
    	<h2 style="text-align:center; color: black; margin-top: 10px;">添加植被信息</h2>
        <form id="addPlantForm" method="post" action="">
        	<table style="margin:10px auto;">
        		<tr>
					<td><span>所属公司：</span>
						<select id="theAddedCompanyId" name="LanddevCompanyId" class=intext>

						</select>
						<span id="checkTheSelect" style="color:red;"></span>
					</td>
        		</tr>
        		<tr>
        			<td><span>植被编码：</span><input type="text" id="plant_no" placeholder="必填，格式如008" class="intext" required/><span id="checkThePlantNo" style="color:red;"></span></td>
        			<td><span>植被名称：</span><input type="text" id="plant_name" placeholder="必填" class="intext" required/><span id="checkThePlantName" style="color:red;"></span></td>
        		</tr>
        		<tr>
        			<td><span>植被种类：</span><input type="text" id="plant_type" placeholder="必填" class="intext" required/><span id="checkThePlantType" style="color:red;"></span></td>
        			<td><span>植物树龄：</span><input type="number" id="plant_age" placeholder="必填" class="intext" required/><span id="checkThePlantAge" style="color:red;"></span></td>
        		</tr>
        		<tr>
					<td><span>植物数量：</span><input type="number" id="plant_quantity" placeholder="必填" class="intext" required/><span id="checkThePlantQuantity" style="color:red;"></span></td>
					<td><span>植物单位</span><input type="text" id="plant_unit" placeholder="棵" class="intext" required/><span id="checkThePlantUnit" style="color:red;"></span></td>
				</tr>
				<tr>
					<td><span>植物特点</span><input type="text" id="plant_character" placeholder="请输入" class="intext" /></td>
					<td><span>植物习性</span><input type="text" id="plant_habit" placeholder="如喜阳厌湿等" class="intext" /></td>
				</tr>
        		<tr >
        			<td>
        				<span >备注：</span>
        				<textarea id="plant_remark" cols="200" rows="3" class="intext" value=""></textarea>
        			</td>
        		</tr>
        		<tr>
        			<td colspan="2" align="center" style="height: 30px;" style="color: black;">
                        <input type="button" id="addPlant" name="submit" value=" 保存 " style="color:black;"/>
                        <input type="button" name="BackBtn" value=" 返回 " onclick="javascript:history.back()" style="color:black;" />
                    </td>
        		</tr>
        	</table>
        </form>
    </div>

</body>


<!-- Mirrored from www.gzsxt.cn/theme/hplus/table_data_tables.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:02 GMT -->
</html>
