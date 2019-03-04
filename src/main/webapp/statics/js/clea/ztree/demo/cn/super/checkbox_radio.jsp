<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - checkbox & radio</TITLE>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="../../../css/demo.css" type="text/css">
	<link rel="stylesheet" href="../../../css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="../../../js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.core.js"></script>
	<!--  <script type="text/javascript" src="../../../js/jquery.ztree.excheck.js"></script>
	  <script type="text/javascript" src="../../../js/jquery.ztree.exedit.js"></script>-->
	<SCRIPT type="text/javascript">
		<!--
		var IDMark_A = "_a";
		var setting = {
			view: {
				addDiyDom: addDiyDom
			},
			data: {
				simpleData: {
					enable: true
				}
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"父节点 1", open:true},
			{ id:11, pId:1, name:"叶子节点 1-1"},
			{ id:12, pId:1, name:"叶子节点 1-2"},
			{ id:13, pId:1, name:"叶子节点 1-3"},
			{ id:2, pId:0, name:"父节点 2", open:true},
			{ id:21, pId:2, name:"叶子节点 2-1"},
			{ id:22, pId:2, name:"叶子节点 2-2"},
			{ id:23, pId:2, name:"叶子节点 2-3"},
			{ id:3, pId:0, name:"父节点 3", open:true},
			{ id:31, pId:3, name:"叶子节点 3-1"},
			{ id:32, pId:3, name:"叶子节点 3-2"},
			{ id:33, pId:3, name:"叶子节点 3-3"}
		];

		function addDiyDom(treeId, treeNode) {
			var aObj = $("#" + treeNode.tId + IDMark_A);
			if (treeNode.level == 0) {
				var editStr = "<input type='checkbox' class='checkboxBtn' id='checkbox_" +treeNode.id+ "' onfocus='this.blur();'></input>";
				aObj.before(editStr);
				var btn = $("#checkbox_"+treeNode.id);
			if (btn) btn.bind("change", function() {checkAccessories(treeNode, btn);});
			} else if (treeNode.level == 1) {
				var editStr = "<input type='radio' class='radioBtn' id='radio_" +treeNode.id+ "' name='radio_"+treeNode.getParentNode().id+"' onfocus='this.blur();'></input>";
				aObj.before(editStr);
				var btn = $("#radio_"+treeNode.id);
				if (btn) btn.bind("click", function() {checkBrand(treeNode, btn);});
			}
		}

		function checkAccessories(treeNode, btn) {
			var checkedRadio = getCheckedRadio("radio_"+treeNode.id);
			if (btn.attr("checked")) {
				if (!checkedRadio) {
					$("#radio_" + treeNode.children[0].id).attr("checked", true);
				}
			} else {
				checkedRadio.attr("checked", false);
			}
		}

		function checkBrand(treeNode, btn) {
			if (btn.attr("checked")) {
				var pObj = $("#checkbox_" + treeNode.getParentNode().id);
				if (!pObj.attr("checked")) {
					pObj.attr("checked", true);
				}
			}
		}

		function getCheckedRadio(radioName) {
			var r = document.getElementsByName(radioName);
			for(var i=0; i<r.length; i++)    {
				if(r[i].checked)    {
					return $(r[i]);
				}
			}
			return null;
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
	<style type="text/css">
	  .radioBtn {height: 16px;vertical-align: middle;}
	  .checkboxBtn {vertical-align: middle;margin-right: 2px;}
	  </style>
 </HEAD>

<BODY>
<h1>checkbox / radio 共存</h1>
<h6>[ 文件路径: super/checkbox_radio.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>实现方法说明</h2>
				<ul class="list">
				<li>zTree 默认的 checkbox 和 radio 是无法共存的，但可以利用 自定义控件 的功能实现此需求，具体需求可以参考 "添加 自定义控件" 的详细说明</li>
				<li class="highlight_red">对于 checkbox / radio 的联动规则，请根据需求制定自己的规则</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
