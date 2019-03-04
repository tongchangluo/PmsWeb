<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - getNodeByParam / getNodesByParam / getNodesByParamFuzzy</TITLE>
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
				key: {
					title: "t"
				},
				simpleData: {
					enable: true
				}
			},
			view: {
				fontCss: getFontCss
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"search node demo 1", t:"id=1", open:true},
			{ id:11, pId:1, name:"can search 'name'", t:"id=11"},
			{ id:12, pId:1, name:"can search 'level'", t:"id=12"},
			{ id:13, pId:1, name:"can search 'id'", t:"id=13"},
			{ id:14, pId:1, name:"can search other attr", t:"id=14"},
			{ id:2, pId:0, name:"search node demo 2", t:"id=2", open:true},
			{ id:21, pId:2, name:"can search single node", t:"id=21"},
			{ id:22, pId:2, name:"can search nodes array", t:"id=22"},
			{ id:23, pId:2, name:"search me", t:"id=23"},
			{ id:3, pId:0, name:"search node demo 3", t:"id=3", open:true },
			{ id:31, pId:3, name:"My id is : 31", t:"id=31"},
			{ id:32, pId:31, name:"My id is : 32", t:"id=32"},
			{ id:33, pId:32, name:"My id is : 33", t:"id=33"}
		];

		function focusKey(e) {
			if (key.hasClass("empty")) {
				key.removeClass("empty");
			}
		}
		function blurKey(e) {
			if (key.get(0).value === "") {
				key.addClass("empty");
			}
		}
		var lastValue = "", nodeList = [], fontCss = {};
		function clickRadio(e) {
			lastValue = "";
			searchNode(e);
		}
		function searchNode(e) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			if (!$("#getNodesByFilter").attr("checked")) {
				var value = $.trim(key.get(0).value);
				var keyType = "";
				if ($("#name").attr("checked")) {
					keyType = "name";
				} else if ($("#level").attr("checked")) {
					keyType = "level";
					value = parseInt(value);
				} else if ($("#id").attr("checked")) {
					keyType = "id";
					value = parseInt(value);
				}
				if (key.hasClass("empty")) {
					value = "";
				}
				if (lastValue === value) return;
				lastValue = value;
				if (value === "") return;
				updateNodes(false);

				if ($("#getNodeByParam").attr("checked")) {
					var node = zTree.getNodeByParam(keyType, value);
					if (node === null) {
						nodeList = [];
					} else {
						nodeList = [node];
					}
				} else if ($("#getNodesByParam").attr("checked")) {
					nodeList = zTree.getNodesByParam(keyType, value);
				} else if ($("#getNodesByParamFuzzy").attr("checked")) {
					nodeList = zTree.getNodesByParamFuzzy(keyType, value);
				}
			} else {
				updateNodes(false);
				nodeList = zTree.getNodesByFilter(filter);
			}
			updateNodes(true);

		}
		function updateNodes(highlight) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			for( var i=0, l=nodeList.length; i<l; i++) {
				nodeList[i].highlight = highlight;
				zTree.updateNode(nodeList[i]);
			}
		}
		function getFontCss(treeId, treeNode) {
			return (!!treeNode.highlight) ? {color:"#A60000", "font-weight":"bold"} : {color:"#333", "font-weight":"normal"};
		}
		function filter(node) {
			return !node.isParent && node.isFirstNode;
		}

		var key;
		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			key = $("#key");
			key.bind("focus", focusKey)
			.bind("blur", blurKey)
			.bind("propertychange", searchNode)
			.bind("input", searchNode);
			$("#name").bind("change", clickRadio);
			$("#level").bind("change", clickRadio);
			$("#id").bind("change", clickRadio);
			$("#getNodeByParam").bind("change", clickRadio);
			$("#getNodesByParam").bind("change", clickRadio);
			$("#getNodesByParamFuzzy").bind("change", clickRadio);
			$("#getNodesByFilter").bind("change", clickRadio);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>Search Nodes</h1>
<h6>[ File Path: core/searchNodes.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of getNodeByParam / getNodesByParam / getNodesByParamFuzzy</h2>
				<ul class="list">
				<li class="highlight_red">How to use ’zTreeObj.getNodeByParam / getNodesByParam / getNodesByParamFuzzy / getNodeByTId‘ method,  please see the API documentation.</li>
				<li><p>Try to search: <br/>
						attribute( value ): <input type="text" id="key" value="" class="empty" /><br/>
						attribute( key ): <input type="radio" id="name" name="keyType" class="radio first" checked /><span>name (string)</span><br/>
						<input type="radio" id="level" name="keyType" class="radio" style="margin-left:68px;" /><span>level (number) ... root node's level is 0</span><br/>
						<input type="radio" id="id" name="keyType" class="radio" style="margin-left:68px;" /><span>id (number)</span><br/>
						method: <input type="radio" id="getNodeByParam" name="funType" class="radio first" /><span>getNodeByParam</span><br/>
						<input type="radio" id="getNodesByParam" name="funType" class="radio" style="margin-left:36px;" /><span>getNodesByParam</span><br/>
						<input type="radio" id="getNodesByParamFuzzy" name="funType" class="radio" style="margin-left:36px;" checked /><span>getNodesByParamFuzzy (only string)</span><br/>
						<input type="radio" id="getNodesByFilter" name="funType" class="radio" style="margin-left:36px;" /><span>getNodesByFilter (see source: function filter)</span><br/>
					</p>
				</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of setting</h2>
				<ul class="list">
				<li>Do not need to set the setting.</li>
				</ul>
			</li>
			<li class="title"><h2>3, Explanation of treeNode</h2>
				<ul class="list">
				<li class="highlight_red">Note: Please ensure that the incoming value type is  the same as  type of attribute.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
