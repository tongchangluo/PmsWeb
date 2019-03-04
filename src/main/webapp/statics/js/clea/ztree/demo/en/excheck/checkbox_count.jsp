<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - getChangeCheckedNodes / getCheckedNodes</TITLE>
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
			view: {
				selectedMulti: false
			},
			check: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				onCheck: onCheck
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"can check 1", open:true},
			{ id:11, pId:1, name:"can check 1-1"},
			{ id:12, pId:1, name:"can check  1-2", open:true},
			{ id:121, pId:12, name:"can check 1-2-1", checked:true},
			{ id:122, pId:12, name:"can check 1-2-2"},
			{ id:123, pId:12, name:"can check 1-2-3"},
			{ id:13, pId:1, name:"can check 1-3"},
			{ id:2, pId:0, name:"can check 2", open:true},
			{ id:21, pId:2, name:"can check 2-1"},
			{ id:22, pId:2, name:"can check 2-2", open:true},
			{ id:221, pId:22, name:"can check 2-2-1", checked:true},
			{ id:222, pId:22, name:"can check 2-2-2"},
			{ id:223, pId:22, name:"can check 2-2-3"},
			{ id:23, pId:2, name:"can check 2-3", checked:true}
		];

		var clearFlag = false;
		function onCheck(e, treeId, treeNode) {
			count();
			if (clearFlag) {
				clearCheckedOldNodes();
			}
		}
		function clearCheckedOldNodes() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nodes = zTree.getChangeCheckedNodes();
			for (var i=0, l=nodes.length; i<l; i++) {
				nodes[i].checkedOld = nodes[i].checked;
			}
		}
		function count() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			checkCount = zTree.getCheckedNodes(true).length,
			nocheckCount = zTree.getCheckedNodes(false).length,
			changeCount = zTree.getChangeCheckedNodes().length;
			$("#checkCount").text(checkCount);
			$("#nocheckCount").text(nocheckCount);
			$("#changeCount").text(changeCount);

		}
		function createTree() {
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			count();
			clearFlag = $("#last").attr("checked");
		}

		$(document).ready(function(){
			createTree();			
			$("#init").bind("change", createTree);
			$("#last").bind("change", createTree);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>Statistics Checkbox is Checked</h1>
<h6>[ File Path: excheck/checkbox_count.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of getChangeCheckedNodes / getCheckedNodes</h2>
				<ul class="list">
				<li class="highlight_red">How to use zTreeObj.getChangeCheckedNodes / getCheckedNodes method,  please see the API documentation.</li>
				<li><p>Check the checkbox, observe the number of changes:<br/>
					<ul id="log" class="log" style="height:130px;">
						<li>Total check node: <span id="checkCount" class="highlight_red"></span></li>
						<li>Total uncheck node: <span id="nocheckCount" class="highlight_red"></span></li>
						<li>Modify the state of checkbox: <br/>
							<input type="radio" id="init" name="stateType" class="radio first" checked style="margin-left:68px;"/><span>Compared with zTree initialization</span><br/>
							<input type="radio" id="last" name="stateType" class="radio first" style="margin-left:68px;"/><span>Compared with the last check</span></li>
						<li>Total change the checkbox state of node: <span id="changeCount" class="highlight_red"></span></li>
					</ul></p>
				</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of setting</h2>
				<ul class="list">
				<li>Same as 'Checkbox Operation'</li>
				</ul>
			</li>
			<li class="title"><h2>3, Explanation of treeNode</h2>
				<ul class="list">
				<li>Same as 'Checkbox Operation'</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
