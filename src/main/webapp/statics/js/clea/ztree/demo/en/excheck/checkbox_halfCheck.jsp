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
			{ id:1, pId:0, name:"half 1", halfCheck:true, isParent:true},
			{ id:2, pId:0, name:"half 2", halfCheck:true, checked:true, isParent:true},
			{ id:3, pId:0, name:"no half 3", checked:true, isParent:true}
		];

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>Checkbox halfCheck Demo</h1>
<h6>[ File Path: excheck/checkbox_halfCheck.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of Demo</h2>
				<ul class="list">
				<li>This demo implements the check operation of the dynamic tree</li>
				<li class="highlight_red">1). After loaded child nodes, the parent node's 'halfCheck' attribute will be invalid immediately.</li>
				<li class="highlight_red">2). If you check the parent node, so will effect the child nodes's check status.</li>
				<li class="highlight_red">3). If you check the parent node, it's child node's 'halfCheck' attribute will be invalid.</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of setting</h2>
				<ul class="list">
				<li>Half-checked functional don't need to configure any parameter. But it is accessibility, can not used alone. So please configure the parameters which you need.</li>
				</ul>
			</li>
			<li class="title"><h2>3, Explanation of treeNode</h2>
				<ul class="list">
				<li class="highlight_red">1), Please set treeNode.halfCheck attribute, before zTree initialize. See the API documentation for more related contents.</li>
				<li>2), By the way, please see the 'Checkbox Operation' Demo.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
