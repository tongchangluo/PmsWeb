<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - one click</TITLE>
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
			view: {
				dblClickExpand: false,
				showLine: false
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				onClick: onClick
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"Root", open:true},
			{ id:11, pId:1, name:"Parent Node 1-1", open:true},
			{ id:111, pId:11, name:"Leaf Node 1-1-1"},
			{ id:112, pId:11, name:"Leaf Node 1-1-2"},
			{ id:113, pId:11, name:"Leaf Node 1-1-3"},
			{ id:114, pId:11, name:"Leaf Node 1-1-4"},
			{ id:12, pId:1, name:"Parent Node 1-2", open:true},
			{ id:121, pId:12, name:"Leaf Node 1-2-1"},
			{ id:122, pId:12, name:"Leaf Node 1-2-2"},
			{ id:123, pId:12, name:"Leaf Node 1-2-3"},
			{ id:124, pId:12, name:"Leaf Node 1-2-4"},
			{ id:13, pId:1, name:"Parent Node 1-3", open:true},
			{ id:131, pId:13, name:"Leaf Node 1-3-1"},
			{ id:132, pId:13, name:"Leaf Node 1-3-2"},
			{ id:133, pId:13, name:"Leaf Node 1-3-3"},
			{ id:134, pId:13, name:"Leaf Node 1-3-4"}
		];

		function onClick(e,treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			zTree.expandNode(treeNode);
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
	<style type="text/css">
.ztree li button.switch {visibility:hidden; width:1px;}
.ztree li button.switch.roots_docu {visibility:visible; width:16px;}
.ztree li button.switch.center_docu {visibility:visible; width:16px;}
.ztree li button.switch.bottom_docu {visibility:visible; width:16px;}
	</style>
 </HEAD>

<BODY>
<h1>Click to Expand Node</h1>
<h6>[ File Path: super/oneclick.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>Explanation of implementation method</h2>
				<ul class="list">
				<li>zTree not provide a default click to expand node feature, but can use the onClick callback functions to easily implement this feature.</li>
				<li class="highlight_red">In order to avoid conflict with the double-clicking, I recommended to turn off double-clicking expand node function, please set setting.view.dblClickExpand = false</li>
				<li class="highlight_red">You can hide all the +/- switch, please see the page source, see the css.</li>
				<li class="highlight_red">If you do not show + / - switch, then please set 'setting.view.showLine = false' to hide line.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
