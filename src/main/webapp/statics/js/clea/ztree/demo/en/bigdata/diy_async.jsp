<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - big data async</TITLE>
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
			async: {
				enable: true,
				url: getUrl
			},
			check: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			view: {
				expandSpeed: ""
			},
			callback: {
				beforeExpand: beforeExpand,
				onAsyncSuccess: onAsyncSuccess,
				onAsyncError: onAsyncError
			}
		};

		var zNodes =[
			{name:"500 nodes", id:"1", count:500, times:1, isParent:true},
			{name:"1000 nodes", id:"2", count:1000, times:1, isParent:true},
			{name:"2000 nodes", id:"3", count:2000, times:1, isParent:true}
		];

		var log, className = "dark",
		startTime = 0, endTime = 0, perCount = 100, perTime = 100;
		function getUrl(treeId, treeNode) {
			var curCount = (treeNode.children) ? treeNode.children.length : 0;
			var getCount = (curCount + perCount) > treeNode.count ? (treeNode.count - curCount) : perCount;
			var param = "id="+treeNode.id+"_"+(treeNode.times++) +"&count="+getCount;
			return "../asyncData/getNodesForBigData.php?" + param;
		}
		function beforeExpand(treeId, treeNode) {
			if (!treeNode.isAjaxing) {
				startTime = new Date();
				treeNode.times = 1;
				ajaxGetNodes(treeNode, "refresh");
				return true;
			} else {
				alert("Downloading data, Please wait to expand node...");
				return false;
			}
		}
		function onAsyncSuccess(event, treeId, treeNode, msg) {
			if (!msg || msg.length == 0) {
				return;
			}
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			totalCount = treeNode.count;
			if (treeNode.children.length < totalCount) {
				setTimeout(function() {ajaxGetNodes(treeNode);}, perTime);
			} else {
				treeNode.icon = "";
				zTree.updateNode(treeNode);
				zTree.selectNode(treeNode.children[0]);
				endTime = new Date();
				var usedTime = (endTime.getTime() - startTime.getTime())/1000;
				className = (className === "dark" ? "":"dark");
				showLog("[ "+getTime()+" ]&nbsp;&nbsp;treeNode:" + treeNode.name );
				showLog("Child node has finished loading, a total of "+ (treeNode.times-1) +" times the asynchronous load, elapsed time: "+ usedTime + " seconds ");
			}
		}
		function onAsyncError(event, treeId, treeNode, XMLHttpRequest, textStatus, errorThrown) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			alert("ajax error...");
			treeNode.icon = "";
			zTree.updateNode(treeNode);
		}
		function ajaxGetNodes(treeNode, reloadType) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			if (reloadType == "refresh") {
				treeNode.icon = "../../../css/zTreeStyle/img/loading.gif";
				zTree.updateNode(treeNode);
			}
			zTree.reAsyncChildNodes(treeNode, reloadType, true);
		}
		function showLog(str) {
			if (!log) log = $("#log");
			log.append("<li class='"+className+"'>"+str+"</li>");
			if(log.children("li").length > 4) {
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

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);

		});
		//-->
	</SCRIPT>
 </HEAD>

<BODY>
<h1>Loading Data in Batches</h1>
<h6>[ File Path: bigdata/diy_async.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul>
			<li class="highlight_red">&nbsp;&nbsp;&nbsp;&nbsp;Demo for testing load data in batches, each node needs to re-start to load.</li>
		</ul>
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of large data load</h2>
				<ul class="list">
				<li>1) If has nodes for as many as thousands in one level, lazy loading is invalid, this demo shows how to load data in batches.</li>
				<li class="highlight_red">2) This method applies to thousands of nodes must all display needs.</li>
				<li class="highlight_red">3) This method doesn't solve the problem of slow loading, it will only make the final result appear more slowly, but can be limited to avoid browser suspended animation, and more nodes displayed slower.</li>
				<li>4) For at least several thousand nodes in one level case, another solution is to: pagination loading.<br/>
					async load log:<br/>
					<ul id="log" class="log" style="height:85px"></ul></li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of setting</h2>
				<ul class="list">
				<li>Need to set the parameters in setting.async</li>
				<li>Advised to turn off animation effects: setting.view.expandSpeed = "";</li>
				<li>No other special configuration, the user can set their own requirements.</li>
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
