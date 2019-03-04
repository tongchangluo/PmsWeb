<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<link href="${pageContext.request.contextPath }/statics/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
<link href="${pageContext.request.contextPath }/statics/css/font-awesome.min93e3.css?v=4.4.0"rel="stylesheet">

<!-- Data Tables -->
<link href="${pageContext.request.contextPath }/statics/css/plugins/dataTables/dataTables.bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/statics/css/animate.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/statics/css/style.min862f.css?v=4.1.0"
	rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/js/clea/ztree/css/demo.css"
	type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/js/clea/ztree/css/zTreeStyle/zTreeStyle.css"
	type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/clea/jquery-3.1.1.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/clea/bldproperty.js"></script>
<style type="text/css">
.ztree * {padding:0;margin:0;font-size: 17px;font-family: Verdana, Arial, Helvetica, AppleGothic, sans-serif;}
.ztree li a.curSelectedNode {padding-top:0px;background-color:#FFE6B0;color:black;height: 19px;border:1px #FFB951 solid;opacity:0.8;}
</style>

</head>
<body class="gray-bg" >
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/clea/layer-v3.1.1/layer/layer.js"></script>
	<div class="wrapper wrapper-content animated fadeInRight" style="width: 95%">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					
						<div class="zTreeDemoBackground left" style="position: absolute;height: 520px;overflow:hidden">
							<select style="width:220px;height: 27px" id="selects">
							
							</select>
							<ul id="treeDemo" class="ztree" style="height: 100%">
							
							</ul>
						</div>
						<div class="ibox-title" style="position: absolute; left:270px;width: 80%;">
							<h5 id="title" style="height: 20px"></h5>
							<div class="ibox-content" style="width: auto"></div>
						</div>
					
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }" />
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/clea/ztree/js/jquery.ztree.core.js"></script>
</html>