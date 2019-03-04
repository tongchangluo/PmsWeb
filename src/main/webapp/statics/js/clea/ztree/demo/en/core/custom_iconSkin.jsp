<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - Custom Icon Skin </TITLE>
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
			{ id:1, pId:0, name:"Custom Icon 01", open:true, iconSkin:"pIcon01"},
			{ id:11, pId:1, name:"leaf node 01", iconSkin:"icon01"},
			{ id:12, pId:1, name:"leaf node 02", iconSkin:"icon02"},
			{ id:13, pId:1, name:"leaf node 03", iconSkin:"icon03"},
			{ id:2, pId:0, name:"Custom Icon 02", open:true, iconSkin:"pIcon02"},
			{ id:21, pId:2, name:"leaf node 01", iconSkin:"icon04"},
			{ id:22, pId:2, name:"leaf node 02", iconSkin:"icon05"},
			{ id:23, pId:2, name:"leaf node 03", iconSkin:"icon06"},
			{ id:3, pId:0, name:"no Custom Icon", open:true },
			{ id:31, pId:3, name:"leaf node 01"},
			{ id:32, pId:3, name:"leaf node 02"},
			{ id:33, pId:3, name:"leaf node 03"}

		];

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
	<style type="text/css">
.ztree li span.button.pIcon01_ico_open{margin-right:2px; background: url(../../../css/zTreeStyle/img/diy/1_open.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
.ztree li span.button.pIcon01_ico_close{margin-right:2px; background: url(../../../css/zTreeStyle/img/diy/1_close.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
.ztree li span.button.pIcon02_ico_open, .ztree li span.button.pIcon02_ico_close{margin-right:2px; background: url(../../../css/zTreeStyle/img/diy/2.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
.ztree li span.button.icon01_ico_docu{margin-right:2px; background: url(../../../css/zTreeStyle/img/diy/3.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
.ztree li span.button.icon02_ico_docu{margin-right:2px; background: url(../../../css/zTreeStyle/img/diy/4.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
.ztree li span.button.icon03_ico_docu{margin-right:2px; background: url(../../../css/zTreeStyle/img/diy/5.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
.ztree li span.button.icon04_ico_docu{margin-right:2px; background: url(../../../css/zTreeStyle/img/diy/6.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
.ztree li span.button.icon05_ico_docu{margin-right:2px; background: url(../../../css/zTreeStyle/img/diy/7.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
.ztree li span.button.icon06_ico_docu{margin-right:2px; background: url(../../../css/zTreeStyle/img/diy/8.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
	</style>
</HEAD>

<BODY>
<h1>Custom Icon - iconSkin</h1>
<h6>[ File Path: core/custom_iconSkin.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of setting</h2>
				<ul class="list">
				<li>Custom icon does not require special configuration setting.</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of treeNode</h2>
				<ul class="list">
				<li>Use the node data iconSkin attributes and  css show custom icon.</li>
				<li class="highlight_red">See the API documentation for more related contents.</li>
				</ul>
			</li>
			<li class="title"><h2>3、Other explanation</h2>
				<ul class="list">
				<li class="highlight_red">Because of the time limitation, demo uses png images, if you need transparent images in IE6 browser, make a gif image, or use a special 'css filter' on ie6 browser.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
