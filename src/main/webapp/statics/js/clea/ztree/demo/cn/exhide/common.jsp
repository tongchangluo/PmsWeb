<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - Hide Ordinary Node</TITLE>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="../../../css/demo.css" type="text/css">
	<link rel="stylesheet" href="../../../css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="../../../js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.core.js"></script>
<!--<script type="text/javascript" src="../../../js/jquery.ztree.excheck.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.exedit.js"></script>-->
	<script type="text/javascript" src="../../../js/jquery.ztree.exhide-3.5.js"></script>
	<SCRIPT type="text/javascript">
		<!--
		var setting = {
			data: {
				key: {
					title: "title"
				},
				simpleData: {
					enable: true
				}
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"父节点1", title:"", open:true},
			{ id:11, pId:1, name:"父节点11", title:""},
			{ id:111, pId:11, name:"叶子节点111", title:"", isHidden:true},
			{ id:112, pId:11, name:"叶子节点112", title:""},
			{ id:113, pId:11, name:"叶子节点113", title:""},
			{ id:12, pId:1, name:"父节点12", title:"", isHidden:true},
			{ id:121, pId:12, name:"叶子节点121", title:""},
			{ id:122, pId:12, name:"叶子节点122", title:"", isHidden:true},
			{ id:123, pId:12, name:"叶子节点123", title:""},
			{ id:2, pId:0, name:"父节点2", title:""},
			{ id:21, pId:2, name:"父节点21", title:"", isHidden:true},
			{ id:211, pId:21, name:"叶子节点211", title:""},
			{ id:212, pId:21, name:"叶子节点212", title:""},
			{ id:213, pId:21, name:"叶子节点213", title:""},
			{ id:22, pId:2, name:"父节点22", title:""},
			{ id:221, pId:22, name:"叶子节点221", title:""},
			{ id:222, pId:22, name:"叶子节点222", title:""},
			{ id:223, pId:22, name:"叶子节点223", title:""}
		];
		function setTitle(node) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			var nodes = node ? [node]:zTree.transformToArray(zTree.getNodes());
			for (var i=0, l=nodes.length; i<l; i++) {
				var n = nodes[i];
				n.title = "[" + n.id + "] isFirstNode = " + n.isFirstNode + ", isLastNode = " + n.isLastNode;
				zTree.updateNode(n);
			}
		}
		function count() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			hiddenCount = zTree.getNodesByParam("isHidden", true).length;
			$("#hiddenCount").text(hiddenCount);
		}
		function showNodes() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nodes = zTree.getNodesByParam("isHidden", true);
			zTree.showNodes(nodes);
			setTitle();
			count();
		}
		function hideNodes() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nodes = zTree.getSelectedNodes();
			if (nodes.length == 0) {
				alert("请至少选择一个节点");
				return;
			}
			zTree.hideNodes(nodes);
			setTitle();
			count();
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			$("#hideNodesBtn").bind("click", {type:"rename"}, hideNodes);
			$("#showNodesBtn").bind("click", {type:"icon"}, showNodes);
			setTitle();
			count();
		});
		//-->
	</SCRIPT>
 </HEAD>

<BODY>
<h1>隐藏普通节点</h1>
<h6>[ 文件路径: exhide/common.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1、setting 配置信息说明</h2>
				<ul class="list">
				<li>使用此功能，无需设置任何参数</li>
				</ul>
			</li>
			<li class="title"><h2>2、treeNode 节点数据说明</h2>
				<ul class="list">
				<li class="highlight_red">初始化时，设置 treeNode.isHidden = true; 可以让节点隐藏</li>
				<li><p>隐藏、显示节点，看看树的变化：<br/><br/>
					试试看：[ <a id="hideNodesBtn" href="#" onclick="return false;">隐藏选中的节点</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="showNodesBtn" href="#" onclick="return false;">显示全部被隐藏的节点</a> ]<br/><br/>
					<ul id="log" class="log" style="height:65px;">
						<li>isHidden = true 的节点共 <span id="hiddenCount" class="highlight_red"></span> 个</li>
						<li>隐藏节点后，可以看看仍显示节点的 isFirstNode 和 isLastNode 属性</li>
					</ul></p>
				</li>
				</ul>
			</li>
			<li class="title"><h2>3、其他说明</h2>
				<ul class="list">
				<li>隐藏节点操作，会影响 isFirstNode 和 isLastNode 属性，但是对于 getPreNode() 和 getNextNode() 方法无影响</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
