<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<!-- 引入树形菜单 -->
		<link rel="stylesheet" href="ztree/css/demo.css" type="text/css">
		<link rel="stylesheet" href="ztree/css/zTreeStyle/zTreeStyle.css" type="text/css">
	</head>

	<body>
		<div>
			<select style="width:180px;" id="selects">
				<option value="">请选择</option>
				<option value="多层">多层</option>
				<option value="高层">高层</option>
				<option value="1层">1层</option>
				<option value="2层">2层</option>
				<option value="3层">3层</option>
				<option value="4层">4层</option>
			</select>
			<div id="treeDemo" class="ztree"></div>
		</div>
	</body>
	<!-- 引入树形菜单 -->
	<script type="text/javascript" src="ztree/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="ztree/js/jquery.ztree.all.min.js"></script>
	<SCRIPT LANGUAGE="JavaScript">
		var zNodes = null;
		var cons="2112kwwqeqwe";
		var zTreeObj;
		var setting = {
			view: {
				showLine: true
			},
			callback: {
				//beforeClick: beforeClick,
				onClick: onClick
			}
		};

		var settings = {
			view: {
				showLine: true
			},
			callback: {
				//beforeClick: beforeClick,
				onClick: onClick
			}
		};

		$("#selects").change(function() {
			//alert(12345);
			info("12", "22", "33");
			zTreeObj = $.fn.zTree.init($("#treeDemo"), settings, zNodes);
		});
		// zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）

		// zTree 的数据属性(JSON数组)，深入使用请参考 API 文档（zTreeNode 节点数据详解）
		function info(name1, name2, name3) {
			zNodes = [{
				name: name1,
				open: false,
				children: [{
						name: name2
					},
					{
						name: name3
					}
				]
			}];
		}
		/*function onClick(){
			alert(123);
		}
*/		function onClick(){
	
			alert(cons);
			$("#right").attr("src","plantset.jsp");
			alert(11);
		}

		$(document).ready(function() {
		/*	var $right=;*/
			/*$("#treeDemo_1_a").click(function() {
				alert(12324);
			});*/
			//zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
	</SCRIPT>

</html>
