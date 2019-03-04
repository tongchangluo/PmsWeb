<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - copyNode / moveNode</TITLE>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="../../../css/demo.css" type="text/css">
	<link rel="stylesheet" href="../../../css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="../../../js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.core.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.excheck.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.exedit.js"></script>
	<SCRIPT type="text/javascript">
		<!--
		var setting = {
			view: {
				selectedMulti: false
			},
			edit: {
				enable: true,
				showRemoveBtn: false,
				showRenameBtn: false
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				beforeDrag: beforeDrag,
				beforeClick: beforeClick
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"父节点 1", open:true},
			{ id:11, pId:1, name:"叶子节点 1-1"},
			{ id:12, pId:1, name:"叶子节点 1-2"},
			{ id:13, pId:1, name:"叶子节点 1-3"},
			{ id:2, pId:0, name:"父节点 2", open:true},
			{ id:21, pId:2, name:"叶子节点 2-1"},
			{ id:22, pId:2, name:"叶子节点 2-2"},
			{ id:23, pId:2, name:"叶子节点 2-3"},
			{ id:3, pId:0, name:"父节点 3", open:true },
			{ id:31, pId:3, name:"叶子节点 3-1"},
			{ id:32, pId:3, name:"叶子节点 3-2"},
			{ id:33, pId:3, name:"叶子节点 3-3"}
		];

		function fontCss(treeNode) {
			var aObj = $("#" + treeNode.tId + "_a");
			aObj.removeClass("copy").removeClass("cut");
			if (treeNode === curSrcNode) {
				if (curType == "copy") {
					aObj.addClass(curType);
				} else {
					aObj.addClass(curType);
				}			
			}
		}

		function beforeDrag(treeId, treeNodes) {
			return false;
		}

		function beforeClick(treeId, treeNode) {
			return !treeNode.isCur;
		}

		var curSrcNode, curType;
		function setCurSrcNode(treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			if (curSrcNode) {
				delete curSrcNode.isCur;
				var tmpNode = curSrcNode;
				curSrcNode = null;
				fontCss(tmpNode);
			}
			curSrcNode = treeNode;
			if (!treeNode) return;

			curSrcNode.isCur = true;			
			zTree.cancelSelectedNode();
			fontCss(curSrcNode);
		}
		function copy(e) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nodes = zTree.getSelectedNodes();
			if (nodes.length == 0) {
				alert("请先选择一个节点");
				return;
			}
			curType = "copy";
			setCurSrcNode(nodes[0]);
		}
		function cut(e) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nodes = zTree.getSelectedNodes();
			if (nodes.length == 0) {
				alert("请先选择一个节点");
				return;
			}
			curType = "cut";
			setCurSrcNode(nodes[0]);
		}
		function paste(e) {
			if (!curSrcNode) {
				alert("请先选择一个节点进行 复制 / 剪切");
				return;
			}
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nodes = zTree.getSelectedNodes(),
			targetNode = nodes.length>0? nodes[0]:null;
			if (curSrcNode === targetNode) {
				alert("不能移动，源节点 与 目标节点相同");
				return;
			} else if (curType === "cut" && ((!!targetNode && curSrcNode.parentTId === targetNode.tId) || (!targetNode && !curSrcNode.parentTId))) {
				alert("不能移动，源节点 已经存在于 目标节点中");
				return;
			} else if (curType === "copy") {
				targetNode = zTree.copyNode(targetNode, curSrcNode, "inner");
			} else if (curType === "cut") {
				targetNode = zTree.moveNode(targetNode, curSrcNode, "inner");
				if (!targetNode) {
					alert("剪切失败，源节点是目标节点的父节点");
				}
				targetNode = curSrcNode;
			}
			setCurSrcNode();
			delete targetNode.isCur;
			zTree.selectNode(targetNode);
		}
		
		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			$("#copy").bind("click", copy);
			$("#cut").bind("click", cut);
			$("#paste").bind("click", paste);
		});
		//-->
	</SCRIPT>
	<style type="text/css">
.ztree li a.copy{padding-top:0; background-color:#316AC5; color:white; border:1px #316AC5 solid;}
.ztree li a.cut{padding-top:0; background-color:silver; color:#111; border:1px #316AC5 dotted;}
	</style>
</HEAD>

<BODY>
<h1>用 zTree 方法 移动 / 复制节点</h1>
<h6>[ 文件路径: exedit/drag_fun.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1、copyNode / moveNode 方法操作说明</h2>
				<ul class="list">
				<li>利用 copyNode / moveNode 方法也可以实现 复制 / 移动 节点的目的，这里简单演示使用方法</li>
				<li><p>对节点进行 复制 / 剪切，试试看：<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="copy" href="#" title="复制" onclick="return false;">复制</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="cut" href="#" title="剪切" onclick="return false;">剪切</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="paste" href="#" title="粘贴" onclick="return false;">粘贴</a> ]</p>
				<li class="highlight_red">使用 zTreeObj.copyNode / moveNode 方法，详细请参见 API 文档中的相关内容</li>
				</ul>
			</li>
			<li class="title"><h2>2、setting 配置信息说明</h2>
				<ul class="list">
				<li>同 "拖拽 节点 基本控制"</li>
				</ul>
			</li>
			<li class="title"><h2>3、treeNode 节点数据说明</h2>
				<ul class="list">
				<li>同 "拖拽 节点 基本控制"</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
