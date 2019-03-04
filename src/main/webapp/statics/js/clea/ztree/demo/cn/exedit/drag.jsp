<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - drag & drop</TITLE>
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
				beforeDrop: beforeDrop
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"随意拖拽 1", open:true},
			{ id:11, pId:1, name:"随意拖拽 1-1"},
			{ id:12, pId:1, name:"随意拖拽 1-2", open:true},
			{ id:121, pId:12, name:"随意拖拽 1-2-1"},
			{ id:122, pId:12, name:"随意拖拽 1-2-2"},
			{ id:123, pId:12, name:"随意拖拽 1-2-3"},
			{ id:13, pId:1, name:"禁止拖拽 1-3", open:true, drag:false},
			{ id:131, pId:13, name:"禁止拖拽 1-3-1", drag:false},
			{ id:132, pId:13, name:"禁止拖拽 1-3-2", drag:false},
			{ id:133, pId:13, name:"随意拖拽 1-3-3"},
			{ id:2, pId:0, name:"随意拖拽 2", open:true},
			{ id:21, pId:2, name:"随意拖拽 2-1"},
			{ id:22, pId:2, name:"禁止拖拽到我身上 2-2", open:true, drop:false},
			{ id:221, pId:22, name:"随意拖拽 2-2-1"},
			{ id:222, pId:22, name:"随意拖拽 2-2-2"},
			{ id:223, pId:22, name:"随意拖拽 2-2-3"},
			{ id:23, pId:2, name:"随意拖拽 2-3"}
		];

		function beforeDrag(treeId, treeNodes) {
			for (var i=0,l=treeNodes.length; i<l; i++) {
				if (treeNodes[i].drag === false) {
					return false;
				}
			}
			return true;
		}
		function beforeDrop(treeId, treeNodes, targetNode, moveType) {
			return targetNode ? targetNode.drop !== false : true;
		}
		
		function setCheck() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			isCopy = $("#copy").attr("checked"),
			isMove = $("#move").attr("checked"),
			prev = $("#prev").attr("checked"),
			inner = $("#inner").attr("checked"),
			next = $("#next").attr("checked");
			zTree.setting.edit.drag.isCopy = isCopy;
			zTree.setting.edit.drag.isMove = isMove;
			showCode(1, ['setting.edit.drag.isCopy = ' + isCopy, 'setting.edit.drag.isMove = ' + isMove]);

			zTree.setting.edit.drag.prev = prev;
			zTree.setting.edit.drag.inner = inner;
			zTree.setting.edit.drag.next = next;
			showCode(2, ['setting.edit.drag.prev = ' + prev, 'setting.edit.drag.inner = ' + inner, 'setting.edit.drag.next = ' + next]);
		}
		function showCode(id, str) {
			var code = $("#code" + id);
			code.empty();
			for (var i=0, l=str.length; i<l; i++) {
				code.append("<li>"+str[i]+"</li>");
			}
		}
		
		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			setCheck();
			$("#copy").bind("change", setCheck);
			$("#move").bind("change", setCheck);
			$("#prev").bind("change", setCheck);
			$("#inner").bind("change", setCheck);
			$("#next").bind("change", setCheck);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>拖拽节点基本控制</h1>
<h6>[ 文件路径: exedit/drag.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1、setting 配置信息说明</h2>
				<ul class="list">
				<li>此 Demo 仅从功能上演示实现拖拽的基本方法和配置参数</li>
				<li class="highlight_red">1)、使用 拖拽功能，必须设置 setting.edit 中的各个属性，详细请参见 API 文档中的相关内容</li>
				<li class="highlight_red">2)、使用 拖拽功能的事件回调函数，必须设置 setting.callback.beforeDrag / onDrag / beforeDrop / onDrop 等属性，详细请参见 API 文档中的相关内容</li>
				<li><p>基本拖拽设置：<br/>
						<input type="checkbox" id="copy" class="checkbox first" checked /><span>允许复制</span>
						<input type="checkbox" id="move" class="checkbox " checked /><span>允许移动</span><br/>
						<ul id="code1" class="log" style="height:42px;"></ul></p>
				</li>
				<li><p>拖拽相对位置设置：<br/>
						<input type="checkbox" id="prev" class="checkbox first" checked /><span>prev</span>
						<input type="checkbox" id="inner" class="checkbox " checked /><span>inner</span>
						<input type="checkbox" id="next" class="checkbox " checked /><span>next</span><br/>
						<ul id="code2" class="log" style="height:65px;"></ul></p>
				</li>
				</ul>
			</li>
			<li class="title"><h2>2、treeNode 节点数据说明</h2>
				<ul class="list">
				<li>对 节点数据 没有特殊要求，用户可以根据自己的需求添加自定义属性</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
