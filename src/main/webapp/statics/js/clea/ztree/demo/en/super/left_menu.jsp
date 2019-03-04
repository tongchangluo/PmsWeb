<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - left_menu</TITLE>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="../../../css/demo.css" type="text/css">
	<link rel="stylesheet" href="../../../css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="../../../js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.core.js"></script>
	<!--  <script type="text/javascript" src="../../../js/jquery.ztree.excheck.js"></script>
	  <script type="text/javascript" src="../../../js/jquery.ztree.exedit.js"></script>-->
	<SCRIPT type="text/javascript">
		<!--
		var curMenu = null, zTree_Menu = null;
		var setting = {
			view: {
				showLine: true,
				selectedMulti: false,
				dblClickExpand: false
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				onNodeCreated: this.onNodeCreated,
				beforeClick: this.beforeClick,
				onClick: this.onClick
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"Main Menu 1", open:true},
			{ id:11, pId:1, name:"Sub Menu 1-1"},
			{ id:111, pId:11, name:"Leaf Node 1-1-1"},
			{ id:112, pId:11, name:"Leaf Node 1-1-2"},
			{ id:113, pId:11, name:"Leaf Node 1-1-3"},
			{ id:114, pId:11, name:"Leaf Node 1-1-4"},
			{ id:12, pId:1, name:"Sub Menu 1-2"},
			{ id:121, pId:12, name:"Leaf Node 1-2-1"},
			{ id:122, pId:12, name:"Leaf Node 1-2-2"},
			{ id:123, pId:12, name:"Leaf Node 1-2-3"},
			{ id:124, pId:12, name:"Leaf Node 1-2-4"},
			{ id:2, pId:0, name:"Main Menu 2"},
			{ id:21, pId:2, name:"Sub Menu 2-1"},
			{ id:211, pId:21, name:"Leaf Node 2-1-1"},
			{ id:212, pId:21, name:"Leaf Node 2-1-2"},
			{ id:213, pId:21, name:"Leaf Node 2-1-3"},
			{ id:214, pId:21, name:"Leaf Node 2-1-4"},
			{ id:22, pId:2, name:"Sub Menu 2-2"},
			{ id:221, pId:22, name:"Leaf Node 2-2-1"},
			{ id:222, pId:22, name:"Leaf Node 2-2-2"},
			{ id:223, pId:22, name:"Leaf Node 2-2-3"},
			{ id:224, pId:22, name:"Leaf Node 2-2-4"},
			{ id:3, pId:0, name:"Main Menu 3"},
			{ id:31, pId:3, name:"Sub Menu 3-1"},
			{ id:311, pId:31, name:"Leaf Node 3-1-1"},
			{ id:312, pId:31, name:"Leaf Node 3-1-2"},
			{ id:313, pId:31, name:"Leaf Node 3-1-3"},
			{ id:314, pId:31, name:"Leaf Node 3-1-4"},
			{ id:32, pId:3, name:"Sub Menu 3-2"},
			{ id:321, pId:32, name:"Leaf Node 3-2-1"},
			{ id:322, pId:32, name:"Leaf Node 3-2-2"},
			{ id:323, pId:32, name:"Leaf Node 3-2-3"},
			{ id:324, pId:32, name:"Leaf Node 3-2-4"}
		];

		function beforeClick(treeId, node) {
			if (node.isParent) {
				if (node.level === 0) {
					var pNode = curMenu;
					while (pNode && pNode.level !==0) {
						pNode = pNode.getParentNode();
					}
					if (pNode !== node) {
						var a = $("#" + pNode.tId + "_a");
						a.removeClass("cur");
						zTree_Menu.expandNode(pNode, false);
					}
					a = $("#" + node.tId + "_a");
					a.addClass("cur");

					var isOpen = false;
					for (var i=0,l=node.children.length; i<l; i++) {
						if(node.children[i].open) {
							isOpen = true;
							break;
						}
					}
					if (isOpen) {
						zTree_Menu.expandNode(node, true);
						curMenu = node;
					} else {
						zTree_Menu.expandNode(node.children[0].isParent?node.children[0]:node, true);
						curMenu = node.children[0];
					}
				} else {
					zTree_Menu.expandNode(node);
				}
			}
			return !node.isParent;
		}
		function onClick(e, treeId, node) {
			alert("Do what you want to do!");
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			zTree_Menu = $.fn.zTree.getZTreeObj("treeDemo");
			curMenu = zTree_Menu.getNodes()[0].children[0].children[0];
			zTree_Menu.selectNode(curMenu);
			var a = $("#" + zTree_Menu.getNodes()[0].tId + "_a");
			a.addClass("cur");
		});
		//-->
	</SCRIPT>
	<style type="text/css">
.ztree li a.level0 {width:200px;height: 20px; text-align: center; display:block; background-color: #0B61A4; border:1px silver solid;}
.ztree li a.level0.cur {background-color: #66A3D2; }
.ztree li a.level0 span {display: block; color: white; padding-top:3px; font-size:12px; font-weight: bold;word-spacing: 2px;}
.ztree li a.level0 span.button {	float:right; margin-left: 10px; visibility: visible;display:none;}
.ztree li span.button.switch.level0 {display:none;}
	</style>
 </HEAD>

<BODY>
<h1>Left Menu</h1>
<h6>[ File Path: super/left_menu.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>Explanation of implementation method</h2>
				<ul class="list">
				<li>The menu in the Demo's Web page is to use zTree to achieve, is to use css set interface, use the configuration 'setting' to achieve features, this demo achieve a simple example of the left menu, you can view the source code of Demo's Web Page for in-depth study.</li>
				<li class="highlight_red">1. According to your needs to modify the css, for example: the menu style on this Demo and Demo's Web page not the same.</li>
				<li class="highlight_red">2. Main configuration:<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;setting.view.showIcon / showLine / selectedMulti / dblClickExpand<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;setting.callback.onNodeCreated / beforeClick / onClick
				</li>
				<li>3. If need to keep single path, please refer to the source code of "Keep Single Path" Demo.</li>
				<li>4. Other auxiliary rules, please write code based on your needs.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
