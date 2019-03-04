<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/clea/plan.js"></script>
</head>
<body class="gray-bg">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/clea/layer-v3.1.1/layer/layer.js"></script>
	<form action="" method="post" id="form2">
		<input name="id" type="hidden" id="id" value="${bld.id}"> 
		<input name="bldId" type="hidden" id="bldId" value="${bld.bldId}"> 
		<input name="rsdcId" type="hidden" id="rsdcId" value="${bld.rsdcId}">
		<table
			class="table table-striped table-bordered  dataTables-example">
			<tbody>
				<tr class="gradeA">
					<td align="center" class="form-item" style="width: 20%"></td>
					<td style="width: 20%;border-right-style: hidden;">路灯数量：</td>
					<td style="width: 20%"><input name="streetlight" type="text"
						value="${bld.streetlight}" id="streetlight" class="mytext" style="width:90px;">
						个</td>
					<td style="width: 20%;border-right-style: hidden;">化粪池：</td>
					<td style="width: 20%"><input name="cesspool" type="text"
						value="${bld.cesspool}" id="cesspool" class="mytext" style="width:90px;">
						个</td>
				</tr>
				<tr>
				<td valign="bottom" colspan="5" align="center" height="70"
						style="border-right-style: hidden;border-left-style: hidden;border-bottom-style: hidden;vertical-align: bottom;">
						<input id="submit2" type="button" 
						style="width:90px;height: 30px;"  value="  保   存  ">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

</html>
