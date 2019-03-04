<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - Standard Data </TITLE>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="../../../css/demo.css" type="text/css">
	<link rel="stylesheet" href="../../../css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="../../../js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.core.js"></script>
	<!--  <script type="text/javascript" src="../../../js/jquery.ztree.excheck.js"></script>
	  <script type="text/javascript" src="../../../js/jquery.ztree.exedit.js"></script>-->
	<SCRIPT type="text/javascript">
		<!--
		var setting = {	};

		var zNodes =[
			{ name:"pNode 01", open:true,
				children: [
					{ name:"pNode 11",
						children: [
							{ name:"leaf node 111"},
							{ name:"leaf node 112"},
							{ name:"leaf node 113"},
							{ name:"leaf node 114"}
						]},
					{ name:"pNode 12",
						children: [
							{ name:"leaf node 121"},
							{ name:"leaf node 122"},
							{ name:"leaf node 123"},
							{ name:"leaf node 124"}
						]},
					{ name:"pNode 13 - no child", isParent:true}
				]},
			{ name:"pNode 02",
				children: [
					{ name:"pNode 21", open:true,
						children: [
							{ name:"leaf node 211"},
							{ name:"leaf node 212"},
							{ name:"leaf node 213"},
							{ name:"leaf node 214"}
						]},
					{ name:"pNode 22",
						children: [
							{ name:"leaf node 221"},
							{ name:"leaf node 222"},
							{ name:"leaf node 223"},
							{ name:"leaf node 224"}
						]},
					{ name:"pNode 23",
						children: [
							{ name:"leaf node 231"},
							{ name:"leaf node 232"},
							{ name:"leaf node 233"},
							{ name:"leaf node 234"}
						]}
				]},
			{ name:"pNode 3 - no child", isParent:true}

		];

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>Standard JSON Data</h1>
<h6>[ File Path: core/standardData.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of setting</h2>
				<ul class="list">
				<li class="highlight_red">No extrally setting needed for basic functions.</li>
				<li>The setting.view in API documentation is associated with the display of the zTree.</li>
				<li>To change the 'name', 'children', 'title' attribute, please refer to the API documentation about 'setting.data.key'.</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of treeNode</h2>
				<ul class="list">
				<li class="highlight_red">Need to use nested JSON data that include parent-child relationship between nodes
					<div><pre xmlns=""><code>For example:
var nodes = [
	{name: "pNode 01", children: [
		{name: "child 01"},
		{name: "child 02"}
	]}
];</code></pre></div>
				</li>
				<li>To set nodes expanded by default, set treeNode.open attribute.</li>
				<li>No child nodes of parent node, set treeNode.isParent attribute.</li>
				<li>Please refer to the API documentation "treeNode data details" to view other attributes description.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
