<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<c:set var="cxt" value="${pageContext.request.contextPath}" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>清洁记录</title>
    <meta name="keywords" content="物业管理系统">
    <meta name="description" content="物业管理系统">

    <link rel="shortcut icon" href="favicon.ico"> <link href="${cxt }/statics/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="${cxt }/statics/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <!-- Data Tables -->
    <link href="${cxt }/statics/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <link href="${cxt }/statics/css/animate.min.css" rel="stylesheet">
    <link href="${cxt }/statics/css/style.min862f.css?v=4.1.0" rel="stylesheet">

	<style>
		.intext{
			width: 250px;
			line-height: 25px;
			margin: 14px 10px;
		}
		span{
			width: 114px;
			display: inline-block;
			margin: 14px 0px 14px 14px;
			
		}
	</style>
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
    	<h2 style="text-align:center; color: black; margin-top: 10px;">清洁记录</h2>
        <form  method="post" action="${cxt }/clnrecord/modifyClnrecord.html" name="clnplanSubmit" >
        	<table style="margin:10px auto;">
        		<tr>
	        		<td style="text-align:right;">
	        			<span><i style="color:red;">*&nbsp;</i>所属公司：</span>
	        		</td>
	        		<td>
				        	<select name="ldcId" id="ldcName" class="intext">
				                <option value="">请选择</option>
				               <c:forEach var="ldc" varStatus="i" items="${ldcompanys}">
				               		<c:choose>
				               			<c:when test="${clnrecord.landdevCompany.ldcId==ldc.ldcId}">
				               				 <option value="${ldc.ldcId}" selected>${ldc.ldcName}</option>
				               			</c:when>
				               			<c:otherwise>
				               				<option value="${ldc.ldcId}">${ldc.ldcName}</option>
				               			</c:otherwise>
				               		</c:choose>
				                </c:forEach>
				            </select>
				            <span style="color:red;"></span>
	        		</td>
	        		<td style="text-align:right;">
	        			<span><i style="color:red;">*&nbsp;</i>选择项目：</span>
	        		</td>
	        		<td id="clnplanId">
	        			<select name="clnplan_id" id="planName" class="intext">
	        				<option value="">请选择</option>
	        				<c:forEach var="plan" varStatus="i" items="${clnplanbyldc}">
	        					<c:choose>
		        					<c:when test="${clnrecord.cleanPlan.clnplan_id==plan.clnplan_id }">
		        						<option value="${plan.clnplan_id }" selected>${plan.clnplan_name }</option>
		        					</c:when>
		        					<c:otherwise>
		        						<option value="${plan.clnplan_id }" >${plan.clnplan_name }</option>
		        					</c:otherwise>
	        					</c:choose>
	        				
	        				</c:forEach>
	        			
	        			
	        				
				         </select>
				          <span style="color:red;"></span>
	        		</td>
        		</tr>
        		<tr>
        			<td style="text-align:right;">
        				<span>清洁地段：</span>
        			</td>
        			<td colspan="3">
	        			<input name="clnplan_place" id="planPlace" placeholder="根据所选项目带出" type="text" class="intext" style="width:782px" value="${clnrecord.cleanPlan.clnplan_place }" readonly="readonly"/>
	        			<span style="color:red;"></span>
        			</td>
        		</tr>
        		<tr>
        			<td style="text-align:right;"><span>负责人：</span></td>
        			<td>
	        			<input name="clnplan_charge" id="planCharge" placeholder="根据所选项目带出" type="text" class="intext" value="${clnrecord.cleanPlan.clnplan_charge }" readonly="readonly"/>
	        			<span style="color:red;"></span>
        			</td>
        		</tr>
        		<tr>
        			<td style="text-align:right;"><span><i style="color:red;">*&nbsp;</i>清洁人：</span></td>
        			<td>
	        			<input name="clnrecord_cleaner" id="recordCleaner" placeholder="请输入" type="text" class="intext" value="${clnrecord.clnrecord_cleaner }" />
	        			<span style="color:red;"></span>
        			</td>
        			<td style="text-align:right;"><span>清洁时间：</span></td>
        			<td>
	        			<input id="pDate" name="clnrecord_date" value="${clnrecord.clnrecord_date}" class="Wdate" onFocus="WdatePicker({lang:'zh-cn'})" style="width: 250px;height:30px;" />
	        			<span style="color:red;"></span>
        			</td>
        		</tr>
        		<tr >
        			<td style="text-align:right;"><span>清洁情况：</span></td>
        			<td colspan="3">
        				<input name="clnrecord_situation" id="recordSummary" placeholder="请输入"  type="text" class="intext"  style="width:782px" value="${clnrecord.clnrecord_situation}" />
        				<span style="color:red;"></span>
        			</td>
        		</tr>
        		<tr >
        			<td style="text-align:right;"><span >备注：</span></td>
        			<td colspan="3">
        				<textarea  name="clnrecord_remark" id="recordRemark" cols="900" rows="3" class="intext" style="width:782px">${clnrecord.clnrecord_remark }</textarea>
        				<span style="color:red;"></span>
        			</td>
        		</tr>
        		<tr>
        			<td colspan="4" align="center" style="height: 30px; style="color: black;">
                        <input type="submit" name="save" class="save" value="保存" style="color:black;" />
                        <input type="button" value=" 返回 " onclick="javascript:location='${cxt}/clnrecord/recordList.html';" style="color:black;" />
                    </td>
        		</tr>
        	</table>
        </form>
    </div>
    <script src="${cxt }/statics/js/jquery.min.js?v=2.1.4"></script>
    <script src="${cxt }/statics/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${cxt }/statics/js/plugins/jeditable/jquery.jeditable.js"></script>
    <script src="${cxt }/statics/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="${cxt }/statics/js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="${cxt }/statics/js/content.min.js?v=1.0.0"></script>
    <script>
        $(document).ready(function(){$(".dataTables-example").dataTable();var oTable=$("#editable").dataTable();oTable.$("td").editable("http://www.gzsxt.cn/theme/example_ajax.php",{"callback":function(sValue,y){var aPos=oTable.fnGetPosition(this);oTable.fnUpdate(sValue,aPos[0],aPos[1])},"submitdata":function(value,settings){return{"row_id":this.parentNode.getAttribute("id"),"column":oTable.fnGetPosition(this)[2]}},"width":"90%","height":"100%"})});function fnClickAddRow(){$("#editable").dataTable().fnAddData(["Custom row","New row","New row","New row","New row"])};
     </script>
     <script type="text/javascript" src="${cxt }/statics/js/date/WdatePicker.js"></script>
     <script type="text/javascript" src="${cxt }/statics/js/jquery-3.1.0.min.js"></script>
     <script type="text/javascript" src="${cxt }/statics/js/clea/Clnrecord.js"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

<!-- Mirrored from www.gzsxt.cn/theme/hplus/table_data_tables.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:02 GMT -->
</html>
