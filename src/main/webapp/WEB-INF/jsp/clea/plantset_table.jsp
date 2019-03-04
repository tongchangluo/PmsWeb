<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>绿化设置——增加</title>
    <meta name="keywords" content="物业管理系统">
    <meta name="description" content="物业管理系统">

    <link rel="shortcut icon" href="favicon.ico"> <link href="${pageContext.request.contextPath }/statics/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
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
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
    	<h2 style="text-align:center; color: black; margin-top: 10px;">绿化设置</h2>
        <form id="form"  method="post" action="doPlantSet.action" onSubmit="return mySubmit(false);">
        	<input hidden="hidden" id="actionType" name="actionType" value="${actionType}">
        	<table style="margin:10px auto;">
        		<tr>
	        		<td>
	        			<span><i style="color:red">*</i>所属公司：</span>
				        	<select attr="notNull" name="ldcId" class="intext">
				                <option selected>请选择</option>
				               <c:forEach items="${ldcList}" var="company">
				              	 <c:choose>
				               		<c:when test="${company.ldcId==upPlantSet.landdevCompany.ldcId}">
				               			<option value="${company.ldcId}" selected>${company.ldcName}</option>
				               		</c:when>
				               		<c:otherwise>
				               			<option value="${company.ldcId}">${company.ldcName}</option>
				              	 	</c:otherwise>
				              	 </c:choose>
				               </c:forEach>
				            </select>
	        		</td>
	        		<td>
	        			<span ><i style="color:red">*</i>项目编号：</span>
	        			<c:choose>
		        			<c:when test="${actionType=='modifyPS'}">
		        				<input name="plantset_no" type="text" class="intext" value="${upPlantSet.plantset_no}" readonly="readonly"/>
		        			</c:when>
		        			<c:otherwise>
		        				<input id="plantset_no" attr="notNull" name="plantset_no" type="text" class="intext" value="${upPlantSet.plantset_no}" />
		        			</c:otherwise>
	        			</c:choose>
	        		</td>
        		</tr>
        		<tr>
        			<td><span><i style="color:red">*</i>项目名称：</span><input attr="notNull" name="plantset_name" placeholder="请输入"  type="text" class="intext" value="${upPlantSet.plantset_name}" ></td>
        			<td><span><i style="color:red">*</i>项目面积：</span><input id="plantset_area" attr="notNull" name="plantset_area" placeholder="请输入" type="number" step="0.001" class="intext" onKeyPress="if (event.keyCode!=46 && event.keyCode!=45 && event.keyCode<48 || event.keyCode>57)) event.returnValue=false"
        			value="${upPlantSet.plantset_area}" ></td>
        		</tr>
        		<tr>
        			<td><span><i style="color:red">*</i>项目地点：</span><input attr="notNull" name="plantset_place" placeholder="请输入" type="text" class="intext" value="${upPlantSet.plantset_place}" ></td>
        			<td><span><i style="color:red">*</i>绿化时间：</span><input id="psTime" attr="notNull" name="plantset_date" placeholder="点击选择时间" class="Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true});javascript:{$('#psTime').trigger('change')}" style="width: 250px;height:30px;" value="${upPlantSet.plantset_date}"/></td>
        		</tr>
        		<tr>
        			<td><span><i style="color:red">*</i>负责人：</span><input attr="notNull" name="plantset_charge" placeholder="请输入"  type="text" class="intext" value="${upPlantSet.plantset_charge}"></td>
        			
        		</tr>
        		<tr>
        			<td colspan="2" >
	       				<span>主要植被：</span>
	       				<c:forEach items="${plantTypes}" var="plantSeted">
	       					<input name="plantNotUsed" type="checkbox" checked="checked" value="${plantSeted.plant_id}">${plantSeted.plant_name}&nbsp
	       				</c:forEach>
	        			<c:forEach items="${plantNotUsedList}" var="plant">
	        				<input name="plantNotUsed" type="checkbox" value="${plant.plant_id}">${plant.plant_name}&nbsp
	        			</c:forEach>
        			</td>
        		</tr>
        		<tr>
        			<td>
        				<span >备注：</span>
        				<textarea name="plantset_remark" cols="200" rows="3" class="intext" ></textarea>
        			</td>
        		</tr>
        		<tr>
        			<td colspan="2" align="center" style="height: 30px; style="color: black;">
						<input type="submit" name="SaveandNewBtn" value=" 保存并新增 " style="color:black;" />
                        <input type="submit" name="SaveBtn" value="保存 " style="color:black;"/>
                        <input type="button" name="BackBtn" value=" 返回 " onclick="javascript:location='psList.action'" style="color:black;" />
                    </td>
        		</tr>
        	</table>
        </form>
    </div>
    <script src="${pageContext.request.contextPath }/statics/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath }/statics/js/plugins/jeditable/jquery.jeditable.js"></script>
    <script src="${pageContext.request.contextPath }/statics/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath }/statics/js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="${pageContext.request.contextPath }/statics/js/content.min.js?v=1.0.0"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/clea/formCheck/formCheck.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/clea/formCheck/showmesg.js"></script>
    
    <script>
        $(document).ready(function(){$(".dataTables-example").dataTable();var oTable=$("#editable").dataTable();oTable.$("td").editable("http://www.gzsxt.cn/theme/example_ajax.php",{"callback":function(sValue,y){var aPos=oTable.fnGetPosition(this);oTable.fnUpdate(sValue,aPos[0],aPos[1])},"submitdata":function(value,settings){return{"row_id":this.parentNode.getAttribute("id"),"column":oTable.fnGetPosition(this)[2]}},"width":"90%","height":"100%"})});function fnClickAddRow(){$("#editable").dataTable().fnAddData(["Custom row","New row","New row","New row","New row"])};
    </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath }/statics/js/date/WdatePicker.js"></script>
</body>


<!-- Mirrored from www.gzsxt.cn/theme/hplus/table_data_tables.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:02 GMT -->
</html>
