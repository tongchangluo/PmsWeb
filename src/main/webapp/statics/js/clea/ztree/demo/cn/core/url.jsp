<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - url</TITLE>
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
			data: {
				simpleData: {
					enable: true
				}
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"zTree Home", url:"http://www.ztree.me/", target:"_blank"},
			{ id:2, pId:0, name:"zTree in Google", url:"http://code.google.com/p/jquerytree/", target:"_blank"},
			{ id:3, pId:0, name:"zTree in Iteye", url:"http://ztreeapi.iteye.com/", target:"_blank"},
			{ id:4, pId:0, name:"Nothing...", url:"", target:"_blank", click:"alert('我是不会跳转的...');"}
		];

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
 </HEAD>

<BODY>
<h1>超链接演示</h1>
<h6>[ 文件路径: core/url.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1、setting 配置信息说明</h2>
				<ul class="list">
				<li>普通使用，无必须设置的参数</li>
				<li class="highlight_red">如果需要灵活控制超链接跳转，请利用 onClick 事件回调函数进行控制，详细请参见 API 文档中的相关内容</li>
				</ul>
			</li>
			<li class="title"><h2>2、treeNode 节点数据说明</h2>
				<ul class="list">
				<li class="highlight_red">1、url 属性用于设置 页面跳转的路径</li>
				<li class="highlight_red">2、target 属性用于设置 页面跳转的窗口目标</li>
				<li class="highlight_red">3、click 属性用于设置简单的 onClick 事件</li>
				<li>其他属性说明请参考 API 文档中 "treeNode 节点数据详解"</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
