<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - no checkbox</TITLE>
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
				nocheckInherit: true
			},
			data: {
				simpleData: {
					enable: true
				}
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"can check 1", open:true},
			{ id:11, pId:1, name:"can check 1-1", open:true},
			{ id:111, pId:11, name:"no checkbox 1-1-1", nocheck:true},
			{ id:112, pId:11, name:"can check 1-1-2"},
			{ id:12, pId:1, name:"no checkbox 1-2", nocheck:true, open:true},
			{ id:121, pId:12, name:"no checkbox 1-2-1"},
			{ id:122, pId:12, name:"no checkbox 1-2-2"},
			{ id:2, pId:0, name:"can check 2", checked:true, open:true},
			{ id:21, pId:2, name:"can check 2-1"},
			{ id:22, pId:2, name:"can check 2-2", open:true},
			{ id:221, pId:22, name:"can check 2-2-1", checked:true},
			{ id:222, pId:22, name:"can check 2-2-2"},
			{ id:23, pId:2, name:"can check 2-3"}
		];
		function nocheckNode(e) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nocheck = e.data.nocheck,
			nodes = zTree.getSelectedNodes();
			if (nodes.length == 0) {
				alert("Please select one node at first...");
			}

			for (var i=0, l=nodes.length; i<l; i++) {
				nodes[i].nocheck = nocheck;
				zTree.updateNode(nodes[i]);
			}
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			$("#nocheckTrue").bind("click", {nocheck: true}, nocheckNode);
			$("#nocheckFalse").bind("click", {nocheck: false}, nocheckNode);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>Checkbox nocheck Demo</h1>
<h6>[ File Path: excheck/checkbox_nocheck.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of setting</h2>
				<ul class="list">
				<li>This Demo only shows how use the ‘nocheck’ attribute, detailed configuration information, please refer to 'Checkbox Operation'</li>
				<li class="highlight_red">setting.check.nocheckInherit can set the child nodes to automatically inherit the parent node's 'nocheck' attribute. See the API documentation for more related contents.</li>
				<li><p>Try:<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="nocheckTrue" href="#" title="set checkbox to be hidden." onclick="return false;">hide checkbox</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="nocheckFalse" href="#" title="set checkbox to be show." onclick="return false;">show checkbox</a> ]
				</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of treeNode</h2>
				<ul class="list">
				<li class="highlight_red">1), If you need to initialize the node don't show checkbox, please set treeNode.nocheck attribute. See the API documentation for more related contents.</li>
				<li>2), By the way, please see the 'Checkbox Operation' Demo.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
