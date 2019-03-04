<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>绿化检查</title>
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
    	<h2 style="text-align:center; color: black; margin-top: 10px;">绿化检查</h2>
        <form id="form"  method="post" action="doPlantCheck.action" onSubmit="return mySubmit(false);">
       	 	<input hidden="hidden" id="actionType" name="actionType" value="${actionType}">
        	<input hidden="hidden" id="plantck_id" name = "plantck_id" value="${upPlantCheck.plantck_id}">
        	<table style="margin:10px auto;">
        		<tr>
	        		<td>
	        			<span><i style="color:red">*</i>所属公司：</span>
				         <c:choose>
				             <c:when test="${actionType=='modifyPC'}">
				               	<select id="cmpId" name="ldcId" class="intext" style="background-color: #EEEEEE;" disabled="disabled">
				               		 <option value="${upPlantCheck.landdevCompany.ldcId }" selected>${upPlantCheck.landdevCompany.ldcName}</option>
				                </select>
				             </c:when>
					         <c:otherwise>
					        	<select id="cmpId" attr="notNull" name="ldcId" class="intext">
					                <option selected>请选择</option>
					               <c:forEach items="${ldcList}" var="company">	
					               		<option value="${company.ldcId}">${company.ldcName}</option>
					               </c:forEach>
					            </select>
					         </c:otherwise>
				         </c:choose>
	        		</td>
	        		<td>
	        			<span ><i style="color:red">*</i>项目编号：</span>
	        			
	        			 <c:choose>
				             <c:when test="${actionType=='modifyPC'}">
				               	<select id="psNo"  name="plantset_no" class="intext" style="background-color: #EEEEEE;" disabled="disabled">
				               		 <option value="${upPlantCheck.plantSet.plantset_no}" selected>${upPlantCheck.plantSet.plantset_no}</option>
				                </select>
				             </c:when>
				         	<c:otherwise>
					        	<select id="psNo"  attr="notNull" name="plantset_no" class="intext">
					                <option selected>请选择</option>
					               <c:forEach items="${psNoList}" var="plantset">
					               		<option value="${plantset.plantset_no}">${plantset.plantset_no}</option>
					               </c:forEach>
					            </select>
				          	</c:otherwise>
				         </c:choose>
	        		</td>
        		</tr>
        		<tr>
        		 	<c:choose>
				      	<c:when test="${actionType=='modifyPC'}">
        					<td><span>项目名称：</span><input id="plantset_name" style="background-color: #EEEEEE;" readonly="readonly" name="plantset_name" placeholder="请输入"  type="text" class="intext" value="${upPlantCheck.plantSet.plantset_name}" ></td>
        				</c:when>
        				<c:otherwise>
        					<td><span><i style="color:red">*</i>项目名称：</span><input  id="plantset_name"  readonly="readonly" attr="notNull" name="plantset_name" placeholder="请输入"  type="text" class="intext" value="${upPlantCheck.plantSet.plantset_name}" ></td>
        				</c:otherwise>
				    </c:choose>
        			<td><span><i style="color:red">*</i>检查时间：</span><input id="pcTime" attr="notNull" name="plantck_date" placeholder="点击选择时间" class="Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true});javascript:{$('#pcTime').trigger('change')}" style="width: 250px;height:30px;" value="${upPlantCheck.plantck_date}" ></td>
        		</tr>
        		<tr>
        			<td><span><i style="color:red">*</i>检查人：</span><input attr="notNull" name="plantck_rummager" placeholder="请输入" type="text" class="intext" value="${upPlantCheck.plantck_rummager}" ></td>
        		</tr>
        		<tr>
        			<td><span>检查情况：</span>
        				<textarea name="plantck_summary" cols="200" rows="3" class="intext" >${upPlantCheck.plantck_summary}</textarea>
        			</td>
        			
        		</tr>
        		<tr>
        			<td>
	       				<span>处理情况：</span>
        				<textarea name="plantck_situation" cols="200" rows="3" class="intext" >${upPlantCheck.plantck_situation}</textarea>
        			</td>
        		</tr>
        		<tr>
        			<td>
        				<span >备注：</span>
        				<textarea name="plantck_remark" cols="200" rows="3" class="intext" >${upPlantCheck.plantck_remark}</textarea>
        			</td>
        		</tr>
        		<tr>
        			<td colspan="2" align="center" style="height: 30px; style="color: black;">
						<input type="submit" name="SaveandNewBtn" value=" 保存并新增 " style="color:black;" />
                        <input type="submit" name="SaveBtn" value="保存 " style="color:black;"/>
                        <input type="button" name="BackBtn" value=" 返回 " onclick="javascript:location='pcList.action'" style="color:black;" />
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
