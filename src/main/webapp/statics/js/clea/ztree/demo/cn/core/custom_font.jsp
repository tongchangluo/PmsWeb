<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - Custom Font</TITLE>
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
				fontCss: getFont,
				nameIsHTML: true
			}
		};

		var zNodes =[
			{ name:"粗体字", font:{'font-weight':'bold'} },
			{ name:"斜体字", font:{'font-style':'italic'}},
			{ name:"有背景的字", font:{'background-color':'black', 'color':'white'}},
			{ name:"红色字", font:{'color':'red'}},
			{ name:"蓝色字", font:{'color':'blue'}},
			{ name:"<span style='color:blue;margin-right:0px;'>view</span>.<span style='color:red;margin-right:0px;'>nameIsHTML</span>"},
			{ name:"zTree 默认样式"}
		];

		function getFont(treeId, node) {
			return node.font ? node.font : {};
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>显示自定义字体的树</h1>
<h6>[ 文件路径: core/custom_font.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1、setting 配置信息说明</h2>
				<ul class="list">
				<li class="highlight_red">1、节点自定义字体请设置 setting.view.fontCss 属性，详细请参见 API 文档中的相关内容</li>
				<li class="highlight_red">2、setting.view.nameIsHTML 属性可以允许节点名称支持 HTML 内容，详细请参见 API 文档中的相关内容</li>
				</ul>
			</li>
			<li class="title"><h2>2、treeNode 节点数据说明</h2>
				<ul class="list">
				<li>设置字体不需要 treeNode 设置特殊数据，但如果用于为了区别不同类型的节点，设置不同的样式，可以对相应的数据设置自定义属性</li>
				<li>此 Demo 利用 treeNode 保存样式定义</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
