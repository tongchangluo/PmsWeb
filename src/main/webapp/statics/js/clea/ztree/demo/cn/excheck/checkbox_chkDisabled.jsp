<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - Checkbox chkDisabled</TITLE>
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
			check: {
				enable: true,
				chkDisabledInherit: true
			},
			data: {
				simpleData: {
					enable: true
				}
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"随意勾选 1", open:true},
			{ id:11, pId:1, name:"随意勾选 1-1", open:true},
			{ id:111, pId:11, name:"disabled 1-1-1", chkDisabled:true},
			{ id:112, pId:11, name:"随意勾选 1-1-2"},
			{ id:12, pId:1, name:"disabled 1-2", chkDisabled:true, checked:true, open:true},
			{ id:121, pId:12, name:"disabled 1-2-1", checked:true},
			{ id:122, pId:12, name:"disabled 1-2-2"},
			{ id:2, pId:0, name:"随意勾选 2", checked:true, open:true},
			{ id:21, pId:2, name:"随意勾选 2-1"},
			{ id:22, pId:2, name:"随意勾选 2-2", open:true},
			{ id:221, pId:22, name:"随意勾选 2-2-1", checked:true},
			{ id:222, pId:22, name:"随意勾选 2-2-2"},
			{ id:23, pId:2, name:"随意勾选 2-3"}
		];

		function disabledNode(e) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			disabled = e.data.disabled,
			nodes = zTree.getSelectedNodes(),
			inheritParent = false, inheritChildren = false;
			if (nodes.length == 0) {
				alert("请先选择一个节点");
			}
			if (disabled) {
				inheritParent = $("#py").attr("checked");
				inheritChildren = $("#sy").attr("checked");
			} else {
				inheritParent = $("#pn").attr("checked");
				inheritChildren = $("#sn").attr("checked");
			}

			for (var i=0, l=nodes.length; i<l; i++) {
				zTree.setChkDisabled(nodes[i], disabled, inheritParent, inheritChildren);
			}
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			$("#disabledTrue").bind("click", {disabled: true}, disabledNode);
			$("#disabledFalse").bind("click", {disabled: false}, disabledNode);
			
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>Checkbox chkDisabled 演示</h1>
<h6>[ 文件路径: excheck/checkbox_chkDisabled.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1、setChkDisabled 方法操作说明</h2>
				<ul class="list">
				<li>setChkDisabled 方法可以设置节点 checkbox / radio 禁用 或 取消禁用，详细请参见 API 文档中的相关内容</li>
				<li><p>试试看：<br/>
					禁用时：<input type="checkbox" id="py" class="checkbox first"/><span>关联父</span>
					<input type="checkbox" id="sy" class="checkbox first" checked /><span>关联子</span><br/>
					取消禁用时：<input type="checkbox" id="pn" class="checkbox first" checked /><span>关联父</span>
					<input type="checkbox" id="sn" class="checkbox first" checked /><span>关联子</span><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="disabledTrue" href="#" title="set checkbox to be disabled." onclick="return false;">禁用</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="disabledFalse" href="#" title="set checkbox to be abled." onclick="return false;">取消禁用</a> ]
				</li>
				</ul>
			</li>
			<li class="title"><h2>2、setting 配置信息说明</h2>
				<ul class="list">
				<li>这个 Demo 只简单演示 chkDisabled 的使用方法，详细配置信息请参考 ‘Checkbox 勾选操作’</li>
				</ul>
			</li>
			<li class="title"><h2>3、treeNode 节点数据说明</h2>
				<ul class="list">
				<li class="highlight_red">1)、如果某节点禁用 checkbox，请设置 treeNode.chkDisabled 属性，详细请参见 API 文档中的相关内容</li>
				<li>2)、其他请参考 ‘Checkbox 勾选操作’</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
