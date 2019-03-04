<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>物业管理——添加清洁检查</title>
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
	<script src="${pageContext.request.contextPath }/statics/js/forCleanck_table.js" type="text/javascript"/>
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
    	<h2 style="text-align:center; color: black; margin-top: 10px;">清洁记录</h2>
        <form id="addCleanCheckForm" method="post" action="">
        	<table style="margin:10px auto;">
        		
        		<tr>
	        		<td>
	        			<span>所属公司：</span>
				        	<select id="theAddedCompanyId" name="LanddevcompanyId" class="intext">

				            </select>
						<span id="checkTheSelect" style="color:red;"></span>
	        		</td>
        		</tr>
        		<tr>
					<td><span>检查地段：</span><input type="text" id="cleanck_place" placeholder="必填" class="intext" required><span id="checkTheCleanCheckPlace" style="color:red;"></span></td>
        			<td><span>检查日期：</span><input type="text" id="cleanck_date" placeholder="必填，格式如2010-01-01" class="intext Wdate"  style="width: 250px;height:30px"  readonly="readonly" onclick="WdatePicker({firstDayOfWeek:1,isShowClear:false,dateFmt:'yyyy-MM-dd HH:mm:ss'})" ><span id="checkThecleanCheckDate" style="color:red;"></span></td>
        		</tr>
        		<tr>
					<td><span>清洁人：</span><input type="text" id="cleanck_cleaner" placeholder="必填" class="intext" required/><span id="checkTheCleanCheckCleaner" style="color:red;></span></td>
        			<td><span>检查人：</span><input type="text" id="cleanck_rummager" placeholder="必填" class="intext" required><span id="checkTheCleanCheckRummager" style="color:red;></span></td>
        		</tr>
        		<tr>
					<td><span>检查情况：</span><input type="text" id="cleanck_situation" placeholder="必填" class="intext" required><span id="checkTheCleanCheckSituation" style="color:red;></span></td>
				</tr>
        		<tr >
        			<td>
        				<span >备注：</span>
        				<textarea id="cleanck_remark" name="textarea" cols="200" rows="3" class="intext" ></textarea>
        			</td>
        		</tr>
        		<tr>
        			<td colspan="2" align="center" style="height: 30px;color: black;">
                        <input type="button" id="addCleanCheck" name="submit" value=" 保存 " style="color:black;"/>
                        <input type="button" name="BackBtn" value=" 返回 " onclick="javascript:history.back()" style="color:black;" />
                    </td>
        		</tr>
        	</table>
        </form>
    </div>

</body>


<!-- Mirrored from www.gzsxt.cn/theme/hplus/table_data_tables.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:02 GMT -->
</html>
