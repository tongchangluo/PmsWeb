<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - select menu</TITLE>
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
				dblClickExpand: false
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				beforeClick: beforeClick,
				onClick: onClick
			}
		};

		var zNodes =[
			{id:1, pId:0, name:"Beijing"},
			{id:2, pId:0, name:"Tianjin"},
			{id:3, pId:0, name:"Shanghai"},
			{id:6, pId:0, name:"Chongqing"},
			{id:4, pId:0, name:"Hebei Province", open:true},
			{id:41, pId:4, name:"Shijiazhuang"},
			{id:42, pId:4, name:"Baoding"},
			{id:43, pId:4, name:"Handan"},
			{id:44, pId:4, name:"Chengde"},
			{id:5, pId:0, name:"Guangdong Province", open:true},
			{id:51, pId:5, name:"Guangzhou"},
			{id:52, pId:5, name:"Shenzhen"},
			{id:53, pId:5, name:"Dongguan"},
			{id:54, pId:5, name:"Fushan"},
			{id:6, pId:0, name:"Fujian Province", open:true},
			{id:61, pId:6, name:"Fuzhou"},
			{id:62, pId:6, name:"Xiamen"},
			{id:63, pId:6, name:"Quanzhou"},
			{id:64, pId:6, name:"Sanming"}
		 ];

		function beforeClick(treeId, treeNode) {
			var check = (treeNode && !treeNode.isParent);
			if (!check) alert("Do not select province...");
			return check;
		}
		
		function onClick(e, treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nodes = zTree.getSelectedNodes(),
			v = "";
			nodes.sort(function compare(a,b){return a.id-b.id;});
			for (var i=0, l=nodes.length; i<l; i++) {
				v += nodes[i].name + ",";
			}
			if (v.length > 0 ) v = v.substring(0, v.length-1);
			var cityObj = $("#citySel");
			cityObj.attr("value", v);
		}

		function showMenu() {
			var cityObj = $("#citySel");
			var cityOffset = $("#citySel").offset();
			$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");

			$("body").bind("mousedown", onBodyDown);
		}
		function hideMenu() {
			$("#menuContent").fadeOut("fast");
			$("body").unbind("mousedown", onBodyDown);
		}
		function onBodyDown(event) {
			if (!(event.target.id == "menuBtn" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
				hideMenu();
			}
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
	<style type="text/css">
	</style>
 </HEAD>

<BODY>
<h1>Drop-down Menu</h1>
<h6>[ File Path: super/select_menu.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul class="list">
			<li class="title">&nbsp;&nbsp;<span class="highlight_red">Press Ctrl-key or Cmd-key to select multiple cities</span></li>
			<li class="title">&nbsp;&nbsp;city: <input id="citySel" type="text" readonly value="" style="width:120px;"/>
		&nbsp;<a id="menuBtn" href="#" onclick="showMenu(); return false;">select</a></li>
		</ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>Explanation of implementation method</h2>
				<ul class="list">
				<li>Achieve this drop-down menu, it is relatively easy, you only need to control zTree Hide / Show, and location.</li>
				<li class="highlight_red">Use zTree v3.x, you can select multiple nodes, so the multi-selection is also easy.</li>
				<li class="highlight_red">Use the configuration parameters setting, fully meet the needs of most of the functionality.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>

<div id="menuContent" class="menuContent" style="display:none; position: absolute;">
	<ul id="treeDemo" class="ztree" style="margin-top:0; width:160px;"></ul>
</div>
</BODY>
</HTML>