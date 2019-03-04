<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - one root</TITLE>
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
				dblClickExpand: dblClickExpand
			},
			data: {
				simpleData: {
					enable: true
				}
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

		function dblClickExpand(treeId, treeNode) {
			return treeNode.level > 0;
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
	<style type="text/css">
.ztree li span.button.switch.level0 {visibility:hidden; width:1px;}
.ztree li ul.level0 {padding:0; background:none;}
	</style>
 </HEAD>

<BODY>
<h1>冻结根节点</h1>
<h6>[ 文件路径: super/oneroot.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>实现方法说明</h2>
				<ul class="list">
				<li>对于这种只有一个根节点，且不显示 +/- 开关的需求，需要利用 css、setting 配合使用</li>
				<li class="highlight_red">zTree v3.x 可以针对指定的 level，进行样式设定，请查看本页面源码，查看 css 设置</li>
				<li class="highlight_red">设置 setting.view.dblClickExpand 指向 Function，可以只针对根节点关闭双击展开的操作</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
