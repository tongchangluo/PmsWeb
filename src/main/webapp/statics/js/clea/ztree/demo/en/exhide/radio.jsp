<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - Hide With Radio Mode</TITLE>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="../../../css/demo.css" type="text/css">
	<link rel="stylesheet" href="../../../css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="../../../js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.core.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.excheck.js"></script>
<!--<script type="text/javascript" src="../../../js/jquery.ztree.exedit.js"></script>-->
	<script type="text/javascript" src="../../../js/jquery.ztree.exhide-3.5.js"></script>
	<SCRIPT type="text/javascript">
		<!--
		var setting = {
			check: {
				enable: true,
				chkStyle: "radio"
			},
			data: {
				key: {
					title: "title"
				},
				simpleData: {
					enable: true
				}
			},
			callback: {
				onCheck: onCheck
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"pNode 1", title:"", checked:true, open:true},
			{ id:11, pId:1, name:"pNode 11", title:"", checked:true},
			{ id:111, pId:11, name:"leaf node 111", title:"", checked:true, isHidden:true},
			{ id:112, pId:11, name:"leaf node 112", title:""},
			{ id:113, pId:11, name:"leaf node 113", title:""},
			{ id:12, pId:1, name:"pNode 12", title:"", isHidden:true},
			{ id:121, pId:12, name:"leaf node 121", title:""},
			{ id:122, pId:12, name:"leaf node 122", title:"", isHidden:true},
			{ id:123, pId:12, name:"leaf node 123", title:""},
			{ id:2, pId:0, name:"pNode 2", title:""},
			{ id:21, pId:2, name:"pNode 21", title:"", isHidden:true},
			{ id:211, pId:21, name:"leaf node 211", title:""},
			{ id:212, pId:21, name:"leaf node 212", title:""},
			{ id:213, pId:21, name:"leaf node 213", title:""},
			{ id:22, pId:2, name:"pNode 22", title:""},
			{ id:221, pId:22, name:"leaf node 221", title:""},
			{ id:222, pId:22, name:"leaf node 222", title:""},
			{ id:223, pId:22, name:"leaf node 223", title:""}
		];

		function onCheck(e, treeId, treeNode) {
			count();
		}

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
			function isForceHidden(node) {
				if (!node.parentTId) return false;
				var p = node.getParentNode();
				return !!p.isHidden ? true : isForceHidden(p);
			}
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			checkCount = zTree.getCheckedNodes(true).length,
			nocheckCount = zTree.getCheckedNodes(false).length,
			hiddenNodes = zTree.getNodesByParam("isHidden", true),
			hiddenCount = hiddenNodes.length;

			for (var i=0, j=hiddenNodes.length; i<j; i++) {
				var n = hiddenNodes[i];
				if (isForceHidden(n)) {
					hiddenCount -= 1;
				} else if (n.isParent) {
					hiddenCount += zTree.transformToArray(n.children).length;
				}
			}

			$("#isHiddenCount").text(hiddenNodes.length);
			$("#hiddenCount").text(hiddenCount);
			$("#checkCount").text(checkCount);
			$("#nocheckCount").text(nocheckCount);
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
				alert("Please select one node at least.");
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
<h1>Hide With Radio Mode</h1>
<h6>[ File Path: exhide/radio.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of setting</h2>
				<ul class="list">
				<li>Use the freature which to hide nodes, you don't need to set any attributes.</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of treeNode</h2>
				<ul class="list">
				<li class="highlight_red">Before you init zTree, set treeNode.isHidden = true, and you can hide the node.</li>
				<li><p>Hide or show the nodes:<br/>
					Try: [ <a id="hideNodesBtn" href="#" onclick="return false;">Hide the nodes which be selected</a> ]<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="showNodesBtn" href="#" onclick="return false;">Show all of the nodes which be hidden</a> ]<br/>
					<ul id="log" class="log" style="height:125px;">
						<li>Total nodes which 'isHidden' attribute is true: <span id="isHiddenCount" class="highlight_red"></span></li>
						<li>Total hidden nodes: <span id="hiddenCount" class="highlight_red"></span></li>
						<li>Total check nodes: <span id="checkCount" class="highlight_red"></span>
							&nbsp;&nbsp;Total uncheck nodes: <span id="nocheckCount" class="highlight_red"></span></li>
						<li>After hide nodes, you can see the 'isFirstNode' and 'isLastNode' attributes on the nodes which still be shown.</li>
					</ul></p>
				</li>
				</ul>
			</li>
			<li class="title"><h2>3、Other explanation</h2>
				<ul class="list">
				<li>Hide nodes will effect the 'isFirstNode' and 'isLastNode' attributes, but will not effect the 'getPreNode()' and 'getNextNode()' method.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
