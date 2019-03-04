<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - addHoverDom / removeHoverDom / addDiyDom</TITLE>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="../../../css/demo.css" type="text/css">
	<link rel="stylesheet" href="../../../css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="../../../js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.core.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.excheck.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.exedit.js"></script>
	<SCRIPT type="text/javascript">
		<!--

		var IDMark_Switch = "_switch",
		IDMark_Icon = "_ico",
		IDMark_Span = "_span",
		IDMark_Input = "_input",
		IDMark_Check = "_check",
		IDMark_Edit = "_edit",
		IDMark_Remove = "_remove",
		IDMark_Ul = "_ul",
		IDMark_A = "_a";
		
		var setting = {
			view: {
				addHoverDom: addHoverDom,
				removeHoverDom: removeHoverDom,
				addDiyDom: addDiyDom
			}
		};

		var zNodes =[
			{id:1, name:"Hover DOM", open:true,
				children:[
					   {id:11, name:"button 1-1"},
					   {id:12, name:"button 1-2"},
					   {id:13, name:"select box 1-3"},
					   {id:141, name:"text 1-4-1"},
					   {id:142, name:"text 1-4-2"},
					   {id:15, name:"hyperlinks 1-5"}

				]},
			{id:2, name:"General DOM", open:true,
				children:[
					   {id:21, name:"button 2-1"},
					   {id:22, name:"button 2-2"},
					   {id:23, name:"select box 2-3"},
					   {id:24, name:"text 2-4"},
					   {id:25, name:"hyperlinks 2-5"}
				]}
	 	];

		function addHoverDom(treeId, treeNode) {
			if (treeNode.parentNode && treeNode.parentNode.id!=1) return;
			var aObj = $("#" + treeNode.tId + IDMark_A);
			if (treeNode.id == 11) {
				if ($("#diyBtn_"+treeNode.id).length>0) return;
				var editStr = "<span id='diyBtn_space_" +treeNode.id+ "' >&nbsp;</span><span class='button icon03' id='diyBtn_" +treeNode.id+ "' title='"+treeNode.name+"' onfocus='this.blur();'></span>";
				aObj.append(editStr);
				var btn = $("#diyBtn_"+treeNode.id);
				if (btn) btn.bind("click", function(){alert("diy Button for " + treeNode.name);});
			} else if (treeNode.id == 12) {
				if ($("#diyBtn_"+treeNode.id).length>0) return;
				var editStr = "<span class='button icon04' id='diyBtn_" +treeNode.id+ "' title='"+treeNode.name+"' onfocus='this.blur();'></span>";
				aObj.after(editStr);
				var btn = $("#diyBtn_"+treeNode.id);
				if (btn) btn.bind("click", function(){alert("diy Button for " + treeNode.name);});
			} else if (treeNode.id == 13) {
				if ($("#diyBtn_"+treeNode.id).length>0) return;
				var editStr = "<span id='diyBtn_space_" +treeNode.id+ "' >&nbsp;</span><select class='selDemo ' id='diyBtn_" +treeNode.id+ "'><option value=1>1</option><option value=2>2</option><option value=3>3</option></select>";
				aObj.after(editStr);
				var btn = $("#diyBtn_"+treeNode.id);
				if (btn) btn.bind("change", function(){alert("diy Select value="+btn.attr("value")+" for " + treeNode.name);});
			} else if (treeNode.id == 141) {
				if ($("#diyBtn_"+treeNode.id).length>0) return;
				var editStr = "<span class='test' id='diyBtn_" +treeNode.id+ "'>Text Demo...</span>";
				aObj.append(editStr);
			} else if (treeNode.id == 142) {
				if ($("#diyBtn_"+treeNode.id).length>0) return;
				var editStr = "<span id='diyBtn_" +treeNode.id+ "'>Text Demo...</span>";
				aObj.after(editStr);
			} else if (treeNode.id == 15) {
				if ($("#diyBtn1_"+treeNode.id).length>0) return;
				if ($("#diyBtn2_"+treeNode.id).length>0) return;
				var editStr = "<a id='diyBtn1_" +treeNode.id+ "' onclick='alert(1);return false;' style='margin:0 0 0 5px;'>link_1</a>" +
					"<a id='diyBtn2_" +treeNode.id+ "' onclick='alert(2);return false;' style='margin:0 0 0 5px;'>link_2</a>";
				aObj.append(editStr);
			}
		}

		function removeHoverDom(treeId, treeNode) {
			if (treeNode.parentTId && treeNode.getParentNode().id!=1) return;
			if (treeNode.id == 15) {
				$("#diyBtn1_"+treeNode.id).unbind().remove();
				$("#diyBtn2_"+treeNode.id).unbind().remove();
			} else {
				$("#diyBtn_"+treeNode.id).unbind().remove();
				$("#diyBtn_space_" +treeNode.id).unbind().remove();
			}
		}

		function addDiyDom(treeId, treeNode) {
			if (treeNode.parentNode && treeNode.parentNode.id!=2) return;
			var aObj = $("#" + treeNode.tId + IDMark_A);
			if (treeNode.id == 21) {
				var editStr = "<span class='demoIcon' id='diyBtn_" +treeNode.id+ "' title='"+treeNode.name+"' onfocus='this.blur();'><span class='button icon01'></span></span>";
				aObj.append(editStr);
				var btn = $("#diyBtn_"+treeNode.id);
				if (btn) btn.bind("click", function(){alert("diy Button for " + treeNode.name);});
			} else if (treeNode.id == 22) {
				var editStr = "<span class='demoIcon' id='diyBtn_" +treeNode.id+ "' title='"+treeNode.name+"' onfocus='this.blur();'><span class='button icon02'></span></span>";
				aObj.after(editStr);
				var btn = $("#diyBtn_"+treeNode.id);
				if (btn) btn.bind("click", function(){alert("diy Button for " + treeNode.name);});
			} else if (treeNode.id == 23) {
				var editStr = "<select class='selDemo' id='diyBtn_" +treeNode.id+ "'><option value=1>1</option><option value=2>2</option><option value=3>3</option></select>";
				aObj.after(editStr);
				var btn = $("#diyBtn_"+treeNode.id);
				if (btn) btn.bind("change", function(){alert("diy Select value="+btn.attr("value")+" for " + treeNode.name);});
			} else if (treeNode.id == 24) {
				var editStr = "<span id='diyBtn_" +treeNode.id+ "'>Text Demo...</span>";
				aObj.after(editStr);
			} else if (treeNode.id == 25) {
				var editStr = "<a id='diyBtn1_" +treeNode.id+ "' onclick='alert(1);return false;'>链接1</a>" +
					"<a id='diyBtn2_" +treeNode.id+ "' onclick='alert(2);return false;'>链接2</a>";
				aObj.after(editStr);
			}
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
	<style type="text/css">
.ztree li span.demoIcon{padding:0 2px 0 10px;}
.ztree li span.button.icon01{margin:0; background: url(../../../css/zTreeStyle/img/diy/3.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
.ztree li span.button.icon02{margin:0; background: url(../../../css/zTreeStyle/img/diy/4.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
.ztree li span.button.icon03{margin:0; background: url(../../../css/zTreeStyle/img/diy/5.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
.ztree li span.button.icon04{margin:0; background: url(../../../css/zTreeStyle/img/diy/6.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
.ztree li span.button.icon05{margin:0; background: url(../../../css/zTreeStyle/img/diy/7.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
.ztree li span.button.icon06{margin:0; background: url(../../../css/zTreeStyle/img/diy/8.png) no-repeat scroll 0 0 transparent; vertical-align:top; *vertical-align:middle}
	</style>
 </HEAD>

<BODY>
<h1>Adding Custom DOM</h1>
<h6>[ File Path: super/diydom.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of implementation method</h2>
				<ul class="list">
				<li>Use 'setting.view.addHoverDom / removeHoverDom / addDiyDom' attributes can easily display custom DOM.</li>
				<li class="highlight_red">Adding custom DOM, is important to understand zTree node object naming rules to ensure the normal controls add DOM.</li>
				<li class="highlight_red">If you add the browser's default ’select / checkbox / radio‘ DOM, please adjust the css, to ensure correctly display zTree.</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of setting</h2>
				<ul class="list">
				<li>Set 'setting.view.addHoverDom / removeHoverDom / addDiyDom' attributes, see the API documentation for more related contents.</li>
				</ul>
			</li>
			<li class="title"><h2>3, Explanation of treeNode</h2>
				<ul class="list">
				<li>No special requirements on the node data, the user can add custom attributes.</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
