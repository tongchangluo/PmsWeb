<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - beforeExpand / onExpand && beforeCollapse / onCollapse</TITLE>
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
				selectedMulti: false
			},
			data: {
				key: {
					title:"t"
				},
				simpleData: {
					enable: true
				}
			},
			callback: {
				beforeClick: beforeClick,
				beforeCollapse: beforeCollapse,
				beforeExpand: beforeExpand,
				onCollapse: onCollapse,
				onExpand: onExpand
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"ordinary parent 1", t:"I am ordinary, just expand or collapse on me", open:false},
			{ id:11, pId:1, name:"leaf node 1-1", t:"..."},
			{ id:12, pId:1, name:"ordinary parent 2", t:"I am ordinary, just expand or collapse on me", open:false},
			{ id:121, pId:12, name:"parent node - 121", t:"...", open:true},
			{ id:1211, pId:121, name:"parent node - 1211", t:"...", open:false},
			{ id:1212, pId:1211, name:"leaf node - 1212", t:"..."},
			{ id:1213, pId:121, name:"parent node - 1213", t:"...", open:false},
			{ id:1214, pId:1213, name:"leaf node - 1214", t:"..."},
			{ id:123, pId:12, name:"leaf node 2-3", t:"..."},
			{ id:13, pId:1, name:"leaf node  1-3", t:"..."},
			{ id:2, pId:0, name:"can't collapse me", t:"can't collapse me...Unless you use expandAll method.", open:true, collapse:false},
			{ id:21, pId:2, name:"leaf node 2-1", t:"You can't collapse my parent"},
			{ id:22, pId:2, name:"leaf node 2-2", t:"You can't collapse my parent"},
			{ id:23, pId:2, name:"leaf node 2-3", t:"You can't collapse my parent"},
			{ id:3, pId:0, name:"can't expand me", t:"can't expand me...Unless you use expandAll method.", open:false, expand:false},
			{ id:31, pId:3, name:"leaf node 3-1", t:"OMG, you can see me!! Do you use the expandAll method?"},
			{ id:32, pId:3, name:"leaf node 3-2", t:"OMG, you can see me!! Do you use the expandAll method?"},
			{ id:33, pId:3, name:"leaf node 3-3", t:"OMG, you can see me!! Do you use the expandAll method?"},
			{ id:4, pId:0, name:"empty parent 1", t:"I have nothing...", isParent:true, open:false}
		];

		var log, className = "dark";
		function beforeClick(treeId, treeNode) {
			if (treeNode.isParent) {
				return true;
			} else {
				alert("This Demo is used to test the parent node expand / collapse...\n\nGo to click parent node... ");
				return false;
			}
		}
		function beforeCollapse(treeId, treeNode) {
			className = (className === "dark" ? "":"dark");
			showLog("[ "+getTime()+" beforeCollapse ]&nbsp;&nbsp;&nbsp;&nbsp;" + treeNode.name );
			return (treeNode.collapse !== false);
		}
		function onCollapse(event, treeId, treeNode) {
			showLog("[ "+getTime()+" onCollapse ]&nbsp;&nbsp;&nbsp;&nbsp;" + treeNode.name);
		}		
		function beforeExpand(treeId, treeNode) {
			className = (className === "dark" ? "":"dark");
			showLog("[ "+getTime()+" beforeExpand ]&nbsp;&nbsp;&nbsp;&nbsp;" + treeNode.name );
			return (treeNode.expand !== false);
		}
		function onExpand(event, treeId, treeNode) {
			showLog("[ "+getTime()+" onExpand ]&nbsp;&nbsp;&nbsp;&nbsp;" + treeNode.name);
		}
		function showLog(str) {
			if (!log) log = $("#log");
			log.append("<li class='"+className+"'>"+str+"</li>");
			if(log.children("li").length > 8) {
				log.get(0).removeChild(log.children("li")[0]);
			}
		}
		function getTime() {
			var now= new Date(),
			h=now.getHours(),
			m=now.getMinutes(),
			s=now.getSeconds(),
			ms=now.getMilliseconds();
			return (h+":"+m+":"+s+ " " +ms);
		}

		function expandNode(e) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			type = e.data.type,
			nodes = zTree.getSelectedNodes();
			if (type.indexOf("All")<0 && nodes.length == 0) {
				alert("Please select one parent node at first...");
			}

			if (type == "expandAll") {
				zTree.expandAll(true);
			} else if (type == "collapseAll") {
				zTree.expandAll(false);
			} else {
				var callbackFlag = $("#callbackTrigger").attr("checked");
				for (var i=0, l=nodes.length; i<l; i++) {
					zTree.setting.view.fontCss = {};
					if (type == "expand") {
						zTree.expandNode(nodes[i], true, null, null, callbackFlag);
					} else if (type == "collapse") {
						zTree.expandNode(nodes[i], false, null, null, callbackFlag);
					} else if (type == "toggle") {
						zTree.expandNode(nodes[i], null, null, null, callbackFlag);
					} else if (type == "expandSon") {
						zTree.expandNode(nodes[i], true, true, null, callbackFlag);
					} else if (type == "collapseSon") {
						zTree.expandNode(nodes[i], false, true, null, callbackFlag);
					}
				}
			}
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			$("#expandBtn").bind("click", {type:"expand"}, expandNode);
			$("#collapseBtn").bind("click", {type:"collapse"}, expandNode);
			$("#toggleBtn").bind("click", {type:"toggle"}, expandNode);
			$("#expandSonBtn").bind("click", {type:"expandSon"}, expandNode);
			$("#collapseSonBtn").bind("click", {type:"collapseSon"}, expandNode);
			$("#expandAllBtn").bind("click", {type:"expandAll"}, expandNode);
			$("#collapseAllBtn").bind("click", {type:"collapseAll"}, expandNode);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>Control of Expand Node</h1>
<h6>[ File Path: core/expand.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, 'beforeCollapse / onCollapse'<br/>&nbsp;&nbsp;'beforeExpand / onExpand' callback function</h2>
				<ul class="list">
				<li>Use 'beforeCollapse / onCollapse' and 'beforeExpand / onExpand' callback function can control whether to allow expand or collapse the parent node
					. This simple demo shows how to monitor the collapse and expand event.</li>
				<li><p>Try: <br/>
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" id="callbackTrigger" checked /> Whether trigger the callback when execution expandNode() method.<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;Single Node --[ <a id="expandBtn" href="#" title="expand..." onclick="return false;">expand</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="collapseBtn" href="#" title="collapse..." onclick="return false;">collapse</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="toggleBtn" href="#" title="what do you want?..." onclick="return false;">toggle</a> ]<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;Single Node (including child) --[ <a id="expandSonBtn" href="#" title="expand (including child)..." onclick="return false;">expand</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="collapseSonBtn" href="#" title="collapse (including child)..." onclick="return false;">collapse</a> ]<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;All Nodes --[ <a id="expandAllBtn" href="#" title="expand All!!" onclick="return false;">expand All</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="collapseAllBtn" href="#" title="collapse All!!" onclick="return false;">collapse All</a> ]</p>
				<li><p><span class="highlight_red">How to use zTreeObj.updateNode method,  please see the API documentation.</span><br/>
					collapse / expand log:<br/>
					<ul id="log" class="log"></ul></p>
				</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of setting</h2>
				<ul class="list">
				<li class="highlight_red">Set attributes about 'setting.callback.beforeCollapse / onCollapse / beforeExpand / onExpand', please see the API documentation for more related contents.</li>
				<li class="highlight_red">If you need to adjust the expand / collapse animation effects, please see the API documentation about setting.view.expandSpeed.</li>
				</ul>
			</li>
			<li class="title"><h2>3, Explanation of treeNode</h2>
				<ul class="list">
				<li>No special requirements on the node data, the user can add custom attributes.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
