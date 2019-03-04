<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - Simple Data</TITLE>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="../../../css/demo.css" type="text/css">
	<link rel="stylesheet" href="../../../css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="../../../js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.core.js"></script>
	<!--  <script type="text/javascript" src="../../../js/jquery.ztree.excheck.js"></script>
	  <script type="text/javascript" src="../../../js/jquery.ztree.exedit.js"></script>-->
	<SCRIPT type="text/javascript">
		<!--
		var setting = {
			data: {
				simpleData: {
					enable: true
				}
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"pNode 1", open:true},
			{ id:11, pId:1, name:"pNode 11"},
			{ id:111, pId:11, name:"leaf node 111"},
			{ id:112, pId:11, name:"leaf node 112"},
			{ id:113, pId:11, name:"leaf node 113"},
			{ id:114, pId:11, name:"leaf node 114"},
			{ id:12, pId:1, name:"pNode 12"},
			{ id:121, pId:12, name:"leaf node 121"},
			{ id:122, pId:12, name:"leaf node 122"},
			{ id:123, pId:12, name:"leaf node 123"},
			{ id:124, pId:12, name:"leaf node 124"},
			{ id:13, pId:1, name:"pNode 13 - no child", isParent:true},
			{ id:2, pId:0, name:"pNode 2"},
			{ id:21, pId:2, name:"pNode 21", open:true},
			{ id:211, pId:21, name:"leaf node 211"},
			{ id:212, pId:21, name:"leaf node 212"},
			{ id:213, pId:21, name:"leaf node 213"},
			{ id:214, pId:21, name:"leaf node 214"},
			{ id:22, pId:2, name:"pNode 22"},
			{ id:221, pId:22, name:"leaf node 221"},
			{ id:222, pId:22, name:"leaf node 222"},
			{ id:223, pId:22, name:"leaf node 223"},
			{ id:224, pId:22, name:"leaf node 224"},
			{ id:23, pId:2, name:"pNode 23"},
			{ id:231, pId:23, name:"leaf node 231"},
			{ id:232, pId:23, name:"leaf node 232"},
			{ id:233, pId:23, name:"leaf node 233"},
			{ id:234, pId:23, name:"leaf node 234"},
			{ id:3, pId:0, name:"pNode 3 - no child", isParent:true}
		];

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
 </HEAD>

<BODY>
<h1>Simple JSON Data</h1>
<h6>[ File Path: core/simpleData.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of setting</h2>
				<ul class="list">
				<li class="highlight_red">Must set setting.data.simple attributes,  see the API documentation for more related contents.</li>
				<li>The setting.view in API documentation is associated with the display of the zTree.</li>
				<li>To change the 'name', 'children', 'title' attribute, please refer to the API documentation about 'setting.data.key'.</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of treeNode</h2>
				<ul class="list">
				<li class="highlight_red">Id / pId that include parent-child relationship between nodes is needed if you use Simple model of the JSON data, and other attributes please refer to the instructions within setting.data.simple.
				<div><pre xmlns=""><code>For example:
var nodes = [
	{id:1, pId:0, name: "pNode 01"},
	{id:11, pId:1, name: "child 01"},
	{id:12, pId:1, name: "child 02"}
];</code></pre></div></li>
				<li>To set nodes expanded by default, set treeNode.open attribute.</li>
				<li>To get parent node which has no child node, set treeNode.isParent attribute.</li>
				<li>Please refer to the API documentation "treeNode data details" to view other attributes description.</li>
				</ul>
			</li>
			<li class="title"><h2>3、Other explanation</h2>
				<ul class="list">
				<li>The simple JSON data model has been used almost everywhere, which can be learned easily.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
