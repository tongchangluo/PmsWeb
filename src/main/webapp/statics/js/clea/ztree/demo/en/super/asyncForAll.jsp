<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - async for All</TITLE>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="../../../css/demo.css" type="text/css">
	<link rel="stylesheet" href="../../../css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="../../../js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.core.js"></script>
	<!--<script type="text/javascript" src="../../../js/jquery.ztree.excheck.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.exedit.js"></script>-->
	<SCRIPT type="text/javascript">
		<!--
		var demoMsg = {
			async: "Loading asynchronous, please wait a moment and then click...",
			expandAllOver: "Expansion Completed.",
			asyncAllOver: "Asynchronously loading Completed.",
			asyncAll: "Asynchronously loading Completed, no need to reload it again.",
			expandAll: "Asynchronously loading completed, please use expandAll method."
		}

		var setting = {
			async: {
				enable: true,
				url:"../asyncData/getNodes.php",
				autoParam:["id", "name=n", "level=lv"],
				otherParam:{"otherParam":"zTreeAsyncTest"},
				dataFilter: filter,
				type: "get"
			},
			callback: {
				beforeAsync: beforeAsync,
				onAsyncSuccess: onAsyncSuccess,
				onAsyncError: onAsyncError
			}
		};

		function filter(treeId, parentNode, childNodes) {
			if (!childNodes) return null;
			for (var i=0, l=childNodes.length; i<l; i++) {
				childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
			}
			return childNodes;
		}

		function beforeAsync() {
			curAsyncCount++;
		}
		
		function onAsyncSuccess(event, treeId, treeNode, msg) {
			curAsyncCount--;
			if (curStatus == "expand") {
				expandNodes(treeNode.children);
			} else if (curStatus == "async") {
				asyncNodes(treeNode.children);
			}

			if (curAsyncCount <= 0) {
				if (curStatus != "init" && curStatus != "") {
					$("#demoMsg").text((curStatus == "expand") ? demoMsg.expandAllOver : demoMsg.asyncAllOver);
					asyncForAll = true;
				}
				curStatus = "";
			}
		}

		function onAsyncError(event, treeId, treeNode, XMLHttpRequest, textStatus, errorThrown) {
			curAsyncCount--;

			if (curAsyncCount <= 0) {
				curStatus = "";
				if (treeNode!=null) asyncForAll = true;
			}
		}

		var curStatus = "init", curAsyncCount = 0, asyncForAll = false,
		goAsync = false;
		function expandAll() {
			if (!check()) {
				return;
			}
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			if (asyncForAll) {
				$("#demoMsg").text(demoMsg.expandAll);
				zTree.expandAll(true);
			} else {
				expandNodes(zTree.getNodes());
				if (!goAsync) {
					$("#demoMsg").text(demoMsg.expandAll);
					curStatus = "";
				}
			}
		}
		function expandNodes(nodes) {
			if (!nodes) return;
			curStatus = "expand";
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			for (var i=0, l=nodes.length; i<l; i++) {
				zTree.expandNode(nodes[i], true, false, false);
				if (nodes[i].isParent && nodes[i].zAsync) {
					expandNodes(nodes[i].children);
				} else {
					goAsync = true;
				}
			}
		}

		function asyncAll() {
			if (!check()) {
				return;
			}
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			if (asyncForAll) {
				$("#demoMsg").text(demoMsg.asyncAll);
			} else {
				asyncNodes(zTree.getNodes());
				if (!goAsync) {
					$("#demoMsg").text(demoMsg.asyncAll);
					curStatus = "";
				}
			}
		}
		function asyncNodes(nodes) {
			if (!nodes) return;
			curStatus = "async";
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			for (var i=0, l=nodes.length; i<l; i++) {
				if (nodes[i].isParent && nodes[i].zAsync) {
					asyncNodes(nodes[i].children);
				} else {
					goAsync = true;
					zTree.reAsyncChildNodes(nodes[i], "refresh", true);
				}
			}
		}

		function reset() {
			if (!check()) {
				return;
			}
			asyncForAll = false;
			goAsync = false;
			$("#demoMsg").text("");
			$.fn.zTree.init($("#treeDemo"), setting);
		}

		function check() {
			if (curAsyncCount > 0) {
				$("#demoMsg").text(demoMsg.async);
				return false;
			}
			return true;
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting);
			$("#expandAllBtn").bind("click", expandAll);
			$("#asyncAllBtn").bind("click", asyncAll);
			$("#resetBtn").bind("click", reset);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>Expand All Nodes with Async</h1>
<h6>[ File Path: super/asyncForAll.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>Explanation of implementation method</h2>
				<ul class="list">
				<li>Using 'onAsyncSuccess' / 'onAsyncError' callback and 'reAsyncChildNodes' or 'expandNode' method, you will achieve all functionalities.</li>
				<li class="highlight_red">Note: If there are large amount parent nodes, please use delay to avoid excessive asynchronous process.</li>
				<li class="highlight_red">Recommendation: please use the debugging tools to view the ajax loading process with network.</li>
				<li>Demonstrate operation
					<br/><br/>
				[ <a id="expandAllBtn" href="#" onclick="return false;">Expand All Nodes</a> ] &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				[ <a id="asyncAllBtn" href="#" onclick="return false;">Load all nodes (don't expand)</a> ]<br/><br/>
				[ <a id="resetBtn" href="#" onclick="return false;">Reset zTree</a> ]<br/><br/>
				<p class="highlight_red" id="demoMsg"></p>
				</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
