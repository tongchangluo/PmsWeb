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
			{ id:1, pId:0, name:"主菜单 1", open:true},
			{ id:11, pId:1, name:"子菜单 1-1"},
			{ id:111, pId:11, name:"叶子节点 1-1-1"},
			{ id:112, pId:11, name:"叶子节点 1-1-2"},
			{ id:113, pId:11, name:"叶子节点 1-1-3"},
			{ id:114, pId:11, name:"叶子节点 1-1-4"},
			{ id:12, pId:1, name:"子菜单 1-2"},
			{ id:121, pId:12, name:"叶子节点 1-2-1"},
			{ id:122, pId:12, name:"叶子节点 1-2-2"},
			{ id:123, pId:12, name:"叶子节点 1-2-3"},
			{ id:124, pId:12, name:"叶子节点 1-2-4"},
			{ id:2, pId:0, name:"主菜单 2"},
			{ id:21, pId:2, name:"子菜单 2-1"},
			{ id:211, pId:21, name:"叶子节点 2-1-1"},
			{ id:212, pId:21, name:"叶子节点 2-1-2"},
			{ id:213, pId:21, name:"叶子节点 2-1-3"},
			{ id:214, pId:21, name:"叶子节点 2-1-4"},
			{ id:22, pId:2, name:"子菜单 2-2"},
			{ id:221, pId:22, name:"叶子节点 2-2-1"},
			{ id:222, pId:22, name:"叶子节点 2-2-2"},
			{ id:223, pId:22, name:"叶子节点 2-2-3"},
			{ id:224, pId:22, name:"叶子节点 2-2-4"},
			{ id:3, pId:0, name:"主菜单 3"},
			{ id:31, pId:3, name:"子菜单 3-1"},
			{ id:311, pId:31, name:"叶子节点 3-1-1"},
			{ id:312, pId:31, name:"叶子节点 3-1-2"},
			{ id:313, pId:31, name:"叶子节点 3-1-3"},
			{ id:314, pId:31, name:"叶子节点 3-1-4"},
			{ id:32, pId:3, name:"子菜单 3-2"},
			{ id:321, pId:32, name:"叶子节点 3-2-1"},
			{ id:322, pId:32, name:"叶子节点 3-2-2"},
			{ id:323, pId:32, name:"叶子节点 3-2-3"},
			{ id:324, pId:32, name:"叶子节点 3-2-4"}			
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
<h1>左侧菜单</h1>
<h6>[ 文件路径: super/left_menu.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>实现方法说明</h2>
				<ul class="list">
				<li>在 “Demo 演示”中的左侧菜单就是用 zTree 实现的，主要是靠 css 样式负责排版，利用 setting 中的配置进行功能制作，本 Demo 对实现 左侧菜单进行简单的介绍，你也可以通过查看 “Demo 演示”页面的源码深入了解。</li>
				<li class="highlight_red">1、关于 css 完全可以根据自己的需要进行个性化调整，例如：此 Demo 的菜单样式 就 与 “Demo 演示”页面的不一样，仅供对比参考</li>
				<li class="highlight_red">2、主要用到的配置有：<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;setting.view.showIcon / showLine / selectedMulti / dblClickExpand<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;setting.callback.onNodeCreated / beforeClick / onClick
				</li>
				<li>3、是否需要限制单一路径展开，完全由你的需求而定，实现代码可参考 "保持展开单一路径"</li>
				<li>4、其他辅助规则，请根据实际情况自行编写</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
