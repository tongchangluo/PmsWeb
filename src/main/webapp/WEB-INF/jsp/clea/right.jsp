<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/clea/right.js"></script>
</head>
<body class="gray-bg">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/clea/layer-v3.1.1/layer/layer.js"></script>
	<form id="form1" action="" method="post" style="height: 430px">
		<input name="id" type="hidden" id="id" value="${bld.id}"> 
		<input name="bldId" type="hidden" id="bldId" value="${bld.bldId}"> 
		<input name="rsdcId" type="hidden" id="rsdcId" value="${bld.rsdcId}">
		<table class="table table-striped table-bordered  dataTables-example">
			<tbody>
				<tr class="gradeX">
					<td rowspan="2" align="center" style="width: 20%">基本属性</td>
					<td style="border-right-style: hidden;"><font color="red">*</font>楼宇类型：</td>
					<td colspan="3">
						<select style="width:90px;" id="type" name="type">
							<c:choose>
								<c:when test="${bld.type == 0}">
									<option value="">请选择</option>
									<option value="0" selected="selected">多层</option>
									<option value="1">高层</option>
								</c:when>
								<c:when test="${bld.type == 1}">
									<option value="">请选择</option>
									<option value="0">多层</option>
									<option value="1" selected="selected">高层</option>
								</c:when>
								<c:otherwise>
									<option value="" selected="selected">请选择</option>
									<option value="0">多层</option>
									<option value="1">高层</option>
								</c:otherwise>
							</c:choose>
						</select> &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 
						<c:choose>
							<c:when test="${bld.lift == 1 }">
								<input id="lift" type="checkbox" value="${bld.lift}" name="lift" checked="checked">
							</c:when>
							<c:otherwise>
								<input id="lift" type="checkbox" value="${bld.lift}" name="lift">
							</c:otherwise>
						</c:choose> 
						<label for="lift">&nbsp;&nbsp;使用电梯</label>
							&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
						<c:choose>
							<c:when test="${bld.shydropower == 1 }">
								<input id="shydropower" type="checkbox" value="${bld.shydropower}" name="shydropower" checked="checked">
							</c:when>
							<c:otherwise>
								<input id="shydropower" type="checkbox" value="${bld.shydropower}" name="shydropower">
							</c:otherwise>
						</c:choose>
						<label for="shydropower"> &nbsp;&nbsp;二次水电</label>
					</td>
				</tr>
				<tr>
					<td style="width: 20%;border-right-style: hidden;">清扫层数：</td>
					<td style="width: 20%"><input name="floors" type="text"
						id="floors" value="${bld.floors}" style="width:90px;"> 个</td>
					<td style="width: 20%;border-right-style: hidden;">拖洗层数：</td>
					<td style="width: 20%"><input name="washfloors" type="text"
						id="washfloors" value="${bld.washfloors}" style="width:90px;"> 个</td>
				</tr>
				<tr class="gradeC">
					<td align="center" rowspan="5">高层楼梯间设施</td>
					<td style="border-right-style: hidden;">走廊通道地面：</td>
					<td><input name="corridorarea" type="text" id="corridorarea"
						value="${bld.corridorarea}" style="width:90px;"> 平米</td>
					<td style="border-right-style: hidden;">单元门：</td>
					<td><input name="celldoor" type="text" id="celldoor" value="${bld.celldoor}"
						style="width:90px;"> 个</td>
				</tr>
				<tr class="gradeA">
					<td style="border-right-style: hidden;">通道门：</td>
					<td><input name="accessdoor" type="text" id="accessdoor"
						value="${bld.accessdoor}" style="width:90px;"> 个</td>
					<td style="border-right-style: hidden;">消防栓：</td>
					<td><input name="firehydrant" type="text" id="firehydrant"
						value="${bld.firehydrant}" style="width:90px;"> 个</td>
				</tr>
				<tr class="gradeA">
					<td style="border-right-style: hidden;">水井门：</td>
					<td><input name="welldoor" type="text" id="welldoor" value="${bld.welldoor}"
						style="width:90px;"> 个</td>
					<td style="border-right-style: hidden;">电井门：</td>
					<td><input name="eletricwelldoor" type="text"
						id="eletricwelldoor" value="${bld.eletricwelldoor}" style="width:90px;"> 个</td>
				</tr>
				<tr class="gradeA">
					<td style="border-right-style: hidden;">电梯门：</td>
					<td><input name="elevatordoor" type="text" id="elevatordoor"
						value="${bld.elevatordoor}" style="width:90px;"> 个</td>
					<td style="border-right-style: hidden;">电梯轿箱：</td>
					<td><input name="elevatorcar" type="text" id="elevatorcar"
						value="${bld.elevatorcar}" style="width:90px;"> 个</td>
				</tr>
				<tr class="gradeA">
					<td style="border-right-style: hidden;">百叶窗：</td>
					<td><input name="louver" type="text" id="louver" value="${bld.louver}"
						style="width:90px;"> 个</td>
					<td style="border-right-style: hidden;">整容镜：</td>
					<td><input name="mirror" type="text" id="mirror" value="${bld.mirror}"
						style="width:90px;"> 个</td>
				</tr>
				<tr class="gradeA">
					<td align="center" rowspan="2" style="background-color: #F9F9F9;">室外属性</td>
					<td style="border-right-style: hidden;">硬化地面：</td>
					<td><input name="hardground" type="text" id="hardground"
						value="${bld.hardground}" style="width:90px;"> 平米</td>
					<td style="border-right-style: hidden;">人工水面：</td>
					<td><input name="artificlake" type="text" id="artificlake"
						value="${bld.artificlake}" style="width:90px;"> 平米</td>
				</tr>
				<tr class="gradeA">
					<td style="border-right-style: hidden;">夏季提纯绿地：</td>
					<td><input name="sgreenbelt" type="text" id="sgreenbelt"
						value="${bld.sgreenbelt}" style="width:90px;"> 平米</td>
					<td style="border-right-style: hidden;">夏季不提纯绿地：</td>
					<td><input name="sungreenbelt" type="text" id="sungreenbelt"
						value="${bld.sungreenbelt}" style="width:90px;"> 平米</td>
				</tr>
				<tr>
					<td valign="bottom" colspan="5" align="center" height="70"
						style="border-right-style: hidden;border-left-style: hidden;border-bottom-style: hidden;">
						<input id="submit1" type="button" 
						style="width:90px;height: 30px;" value="  保   存  ">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>
