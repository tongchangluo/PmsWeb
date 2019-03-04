<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - edit</TITLE>
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
			edit: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				beforeDrag: beforeDrag
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"parent node 1", open:true},
			{ id:11, pId:1, name:"leaf node 1-1"},
			{ id:12, pId:1, name:"leaf node 1-2"},
			{ id:13, pId:1, name:"leaf node 1-3"},
			{ id:2, pId:0, name:"parent node 2", open:true},
			{ id:21, pId:2, name:"leaf node 2-1"},
			{ id:22, pId:2, name:"leaf node 2-2"},
			{ id:23, pId:2, name:"leaf node 2-3"},
			{ id:3, pId:0, name:"parent node 3", open:true },
			{ id:31, pId:3, name:"leaf node 3-1"},
			{ id:32, pId:3, name:"leaf node 3-2"},
			{ id:33, pId:3, name:"leaf node 3-3"}
		];

		function beforeDrag(treeId, treeNodes) {
			return false;
		}
		
		function setEdit() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			remove = $("#remove").attr("checked"),
			rename = $("#rename").attr("checked"),
			removeTitle = $.trim($("#removeTitle").get(0).value),
			renameTitle = $.trim($("#renameTitle").get(0).value);
			zTree.setting.edit.showRemoveBtn = remove;
			zTree.setting.edit.showRenameBtn = rename;
			zTree.setting.edit.removeTitle = removeTitle;
			zTree.setting.edit.renameTitle = renameTitle;
			showCode(['setting.edit.showRemoveBtn = ' + remove, 'setting.edit.showRenameBtn = ' + rename,
				'setting.edit.removeTitle = "' + removeTitle +'"', 'setting.edit.renameTitle = "' + renameTitle + '"']);
		}
		function showCode(str) {
			var code = $("#code");
			code.empty();
			for (var i=0, l=str.length; i<l; i++) {
				code.append("<li>"+str[i]+"</li>");
			}
		}
		
		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			setEdit();
			$("#remove").bind("change", setEdit);
			$("#rename").bind("change", setEdit);
			$("#removeTitle").bind("propertychange", setEdit)
			.bind("input", setEdit);
			$("#renameTitle").bind("propertychange", setEdit)
			.bind("input", setEdit);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>Basic Edit Nodes</h1>
<h6>[ File Path: exedit/edit.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of setting</h2>
				<ul class="list">
				<li>This Demo only shows how to edit nodes using the basic method and configure parameters.</li>
				<li class="highlight_red">1) Must set 'setting.edit' attributes, see the API documentation for more related contents.</li>
				<li class="highlight_red">2) If you want to use remove / rename callback, muse to set 'setting.callback.beforeRemove / onRemove / beforeRename / onRename' attributes, see the API documentation for more related contents.</li>
				<li class="highlight_red">3) zTree do not provide buttons for add nodes, please use the custom control methods 'addHoverDom / removeHoverDom' to achieve added functionality, see the API documentation for more related contents. Another way, you can see the demo named 'Advanced Edit Nodes'.</li>
				<li><p>Edit button setting:<br/>
						<input type="checkbox" id="remove" class="checkbox first" checked /><span>show remove button</span>
						<input type="checkbox" id="rename" class="checkbox " checked /><span>show edit button</span><br/>
						title for remove: <input type="text" id="removeTitle" value="remove" /><br/>
						title for rename: <input type="text" id="renameTitle" value="rename" />
						<ul id="code" class="log" style="height:85px;"></ul></p>
				</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of treeNode</h2>
				<ul class="list">
				<li>No special requirements on the node data, the user can add custom attributes.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
