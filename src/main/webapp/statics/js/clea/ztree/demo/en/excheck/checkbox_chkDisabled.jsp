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
			{ id:1, pId:0, name:"can check 1", open:true},
			{ id:11, pId:1, name:"can check 1-1", open:true},
			{ id:111, pId:11, name:"disabled 1-1-1", chkDisabled:true},
			{ id:112, pId:11, name:"can check 1-1-2"},
			{ id:12, pId:1, name:"disabled 1-2", chkDisabled:true, checked:true, open:true},
			{ id:121, pId:12, name:"disabled 1-2-1", checked:true},
			{ id:122, pId:12, name:"disabled 1-2-2"},
			{ id:2, pId:0, name:"can check 2", checked:true, open:true},
			{ id:21, pId:2, name:"can check 2-1"},
			{ id:22, pId:2, name:"can check 2-2", open:true},
			{ id:221, pId:22, name:"can check 2-2-1", checked:true},
			{ id:222, pId:22, name:"can check 2-2-2"},
			{ id:23, pId:2, name:"can check 2-3"}
		];

		function disabledNode(e) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			disabled = e.data.disabled,
			nodes = zTree.getSelectedNodes();
			if (nodes.length == 0) {
				alert("Please select one node at first...");
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
<h1>Checkbox chkDisabled Demo</h1>
<h6>[ File Path: excheck/checkbox_chkDisabled.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of 'setChkDisabled' method</h2>
				<ul class="list">
				<li>'setChkDisabled' method can set the node's checkbox / radio to be disabled or abled. See the API documentation for more related contents.</li>
				<li><p>Try:<br/>
					disabled: <input type="checkbox" id="py" class="checkbox first" /><span>affect the parent</span>
					<input type="checkbox" id="sy" class="checkbox first" checked /><span>affect the child</span><br/>
					unDisabled: <input type="checkbox" id="pn" class="checkbox first" checked /><span>affect the parent</span>
					<input type="checkbox" id="sn" class="checkbox first" checked /><span>affect the child</span><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="disabledTrue" href="#" title="set checkbox to be disabled." onclick="return false;">be disabled</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="disabledFalse" href="#" title="set checkbox to be abled." onclick="return false;">be abled</a> ]</p>
				</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of setting</h2>
				<ul class="list">
				<li>This Demo only shows how use the ‘chkDisabled’ attribute, detailed configuration information, please refer to 'Checkbox Operation'</li>
				</ul>
			</li>
			<li class="title"><h2>3, Explanation of treeNode</h2>
				<ul class="list">
				<li class="highlight_red">1), If you need to initialize the node's checkbox is disabled, please set treeNode.chkDisabled attribute. See the API documentation for more related contents.</li>
				<li>2), By the way, please see the 'Checkbox Operation' Demo.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
