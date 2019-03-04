<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - radio</TITLE>
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
				chkStyle: "radio",
				radioType: "level"
			},
			data: {
				simpleData: {
					enable: true
				}
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"随意勾选 1", open:true},
			{ id:11, pId:1, name:"随意勾选 1-1", open:true},
			{ id:111, pId:11, name:"随意勾选 1-1-1"},
			{ id:112, pId:11, name:"随意勾选 1-1-2"},
			{ id:12, pId:1, name:"随意勾选 1-2", open:true},
			{ id:121, pId:12, name:"随意勾选 1-2-1"},
			{ id:122, pId:12, name:"随意勾选 1-2-2"},
			{ id:2, pId:0, name:"随意勾选 2", open:true},
			{ id:21, pId:2, name:"随意勾选 2-1"},
			{ id:22, pId:2, name:"随意勾选 2-2", open:true},
			{ id:221, pId:22, name:"随意勾选 2-2-1", checked:true},
			{ id:222, pId:22, name:"随意勾选 2-2-2"},
			{ id:23, pId:2, name:"随意勾选 2-3"}
		];
		
		var code;		
		function setCheck() {
			var type = $("#level").attr("checked")? "level":"all";
			setting.check.radioType = type;
			showCode('setting.check.radioType = "' + type + '";');
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		}
		function showCode(str) {
			if (!code) code = $("#code");
			code.empty();
			code.append("<li>"+str+"</li>");
		}
		
		$(document).ready(function(){
			setCheck();			
			$("#level").bind("change", setCheck);
			$("#all").bind("change", setCheck);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>Radio 勾选操作</h1>
<h6>[ 文件路径: excheck/radio.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1、setting 配置信息说明</h2>
				<ul class="list">
				<li class="highlight_red">使用 radio，必须设置 setting.check 中的各个属性，详细请参见 API 文档中的相关内容</li>
				<li><p>radio 分组范围：<input type="radio" id="level" class="radio first" name="radioGroup" checked /><span>同一级内</span>
						<input type="radio" id="all" class="radio" name="radioGroup"/><span>整棵树内</span><br/>
						<ul id="code" class="log" style="height:20px;"></ul></p>
				</li>
				</ul>
			</li>
			<li class="title"><h2>2、treeNode 节点数据说明</h2>
				<ul class="list">
				<li class="highlight_red">1)、如果需要初始化默认节点被勾选，请设置 treeNode.checked 属性，详细请参见 API 文档中的相关内容</li>
				<li class="highlight_red">2)、如果某节点不显示 radio，请设置 treeNode.nocheck 属性，详细请参见 API 文档中的相关内容</li>
				<li class="highlight_red">3)、如果更换 checked 属性，请参考 API 文档中 setting.data.key.checked 的详细说明</li>
				<li>4)、其他请参考 API 文档中 treeNode.checkedOld / getCheckStatus / check_Child_State / check_Focus 的详细说明</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
