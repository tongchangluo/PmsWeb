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
			{ id:1, pId:0, name:"根 Root", open:true},
			{ id:11, pId:1, name:"父节点 1-1", open:true},
			{ id:111, pId:11, name:"叶子节点 1-1-1"},
			{ id:112, pId:11, name:"叶子节点 1-1-2"},
			{ id:113, pId:11, name:"叶子节点 1-1-3"},
			{ id:114, pId:11, name:"叶子节点 1-1-4"},
			{ id:12, pId:1, name:"父节点 1-2", open:true},
			{ id:121, pId:12, name:"叶子节点 1-2-1"},
			{ id:122, pId:12, name:"叶子节点 1-2-2"},
			{ id:123, pId:12, name:"叶子节点 1-2-3"},
			{ id:124, pId:12, name:"叶子节点 1-2-4"},
			{ id:13, pId:1, name:"父节点 1-3", open:true},
			{ id:131, pId:13, name:"叶子节点 1-3-1"},
			{ id:132, pId:13, name:"叶子节点 1-3-2"},
			{ id:133, pId:13, name:"叶子节点 1-3-3"},
			{ id:134, pId:13, name:"叶子节点 1-3-4"}
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
<h1>单击展开/折叠节点</h1>
<h6>[ 文件路径: super/oneclick.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>实现方法说明</h2>
				<ul class="list">
				<li>zTree 默认不提供单击展开节点的功能，但可以利用 onClick 事件回调函数轻松实现此功能</li>
				<li class="highlight_red">为了避免与双击功能冲突，建议关闭双击展开节点的功能，请设置 setting.view.dblClickExpand = false </li>
				<li class="highlight_red">可以将所有的 +/- 开关隐藏，请查看本页面源码，查看 css 设置 </li>
				<li class="highlight_red">由于 +/- 开关与 节点连接线是配套的，所以如果不显示 +/- 开关的话，那么请设置 setting.view.showLine = false 隐藏连接线 </li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
