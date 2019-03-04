<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - Checkbox halfCheck</TITLE>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="../../../css/demo.css" type="text/css">
	<link rel="stylesheet" href="../../../css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="../../../js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.core.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.excheck.js"></script>
	<!--
	<script type="text/javascript" src="../../../js/jquery.ztree.exedit.js"></script>
	-->
	<SCRIPT type="text/javascript">
		<!--
		var setting = {
			async: {
				enable: true,
				url:"../asyncData/getNodes.php",
				autoParam:["id", "name=n", "level=lv"],
				otherParam:{"chk":"chk"},
				dataFilter: dataFilter
			},
			check: {
				enable: true,
				autoCheckTrigger: true
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				onCheck: onCheck,
				onAsyncSuccess: onAsyncSuccess
			}
		};

		function dataFilter(treeId, parentNode, childNodes) {
			if (parentNode.checkedEx === true) {
				for(var i=0, l=childNodes.length; i<l; i++) {
					childNodes[i].checked = parentNode.checked;
					childNodes[i].halfCheck = false;
					childNodes[i].checkedEx = true;
				}
			}
			return childNodes;
		}
		function onCheck(event, treeId, treeNode) {
			cancelHalf(treeNode)
			treeNode.checkedEx = true;
		}
		function onAsyncSuccess(event, treeId, treeNode, msg) {
			cancelHalf(treeNode);
		}
		function cancelHalf(treeNode) {
			if (treeNode.checkedEx) return;
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			treeNode.halfCheck = false;
			zTree.updateNode(treeNode);			
		}

		var zNodes =[
			{ id:1, pId:0, name:"半勾选 1", halfCheck:true, isParent:true},
			{ id:2, pId:0, name:"半勾选 2", halfCheck:true, checked:true, isParent:true},
			{ id:3, pId:0, name:"随意勾选 3", checked:true, isParent:true}
		];

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>Checkbox halfCheck 演示</h1>
<h6>[ 文件路径: excheck/checkbox_halfCheck.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1、演示说明</h2>
				<ul class="list">
				<li>这个演示式实现了 异步加载模式 下简单的勾选操作</li>
				<li class="highlight_red">1)、加载子节点后，父节点的 halfCheck 立刻失效</li>
				<li class="highlight_red">2)、勾选父节点，可以影响之后加载的子节点的勾选状态</li>
				<li class="highlight_red">3)、勾选父节点，可以让其子节点的 halfCheck 属性失效</li>
				</ul>
			</li>
			<li class="title"><h2>2、setting 配置信息说明</h2>
				<ul class="list">
				<li>实现半勾选功能，不需要配置任何参数。但半勾选功能属于辅助功能，无法单独使用，因此也需要根据自己的需求配置特定参数。</li>
				</ul>
			</li>
			<li class="title"><h2>3、treeNode 节点数据说明</h2>
				<ul class="list">
				<li class="highlight_red">1)、请在节点初始化之前，设置 treeNode.halfCheck 属性，详细请参见 API 文档中的相关内容</li>
				<li>2)、其他请参考 ‘Checkbox 勾选操作’</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
