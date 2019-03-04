<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - beforeCheck / onCheck</TITLE>
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
			view: {
				selectedMulti: false
			},
			check: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				beforeCheck: beforeCheck,
				onCheck: onCheck
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"can check 1", open:true},
			{ id:11, pId:1, name:"can check 1-1"},
			{ id:12, pId:1, name:"can check 1-2", open:true},
			{ id:121, pId:12, name:"can check 1-2-1"},
			{ id:122, pId:12, name:"can check 1-2-2"},
			{ id:2, pId:0, name:"can't check 2", open:true, doCheck:false},
			{ id:21, pId:2, name:"can't check 2-1", doCheck:false},
			{ id:22, pId:2, name:"can't check 2-2", checked:true, open:true, doCheck:false},
			{ id:221, pId:22, name:"can't chk 2-2-1", doCheck:false},
			{ id:222, pId:22, name:"can't chk 2-2-2", checked:true, doCheck:false},
			{ id:23, pId:2, name:"can't check 2-3", doCheck:false}
		];
		
		var code, log, className = "dark";
		function beforeCheck(treeId, treeNode) {
			className = (className === "dark" ? "":"dark");
			showLog("[ "+getTime()+" beforeCheck ]&nbsp;&nbsp;&nbsp;&nbsp;" + treeNode.name );
			return (treeNode.doCheck !== false);
		}
		function onCheck(e, treeId, treeNode) {
			showLog("[ "+getTime()+" onCheck ]&nbsp;&nbsp;&nbsp;&nbsp;" + treeNode.name );
		}		
		function showLog(str) {
			if (!log) log = $("#log");
			log.append("<li class='"+className+"'>"+str+"</li>");
			if(log.children("li").length > 6) {
				log.get(0).removeChild(log.children("li")[0]);
			}
		}
		function getTime() {
			var now= new Date(),
			h=now.getHours(),
			m=now.getMinutes(),
			s=now.getSeconds(),
			ms=now.getMilliseconds();
			return (h+":"+m+":"+s+ " " +ms);
		}

		function checkNode(e) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			type = e.data.type,
			nodes = zTree.getSelectedNodes();
			if (type.indexOf("All")<0 && nodes.length == 0) {
				alert("Please select one node at first...");
			}

			if (type == "checkAllTrue") {
				zTree.checkAllNodes(true);
			} else if (type == "checkAllFalse") {
				zTree.checkAllNodes(false);
			} else {
				var callbackFlag = $("#callbackTrigger").attr("checked");
				for (var i=0, l=nodes.length; i<l; i++) {
					if (type == "checkTrue") {
						zTree.checkNode(nodes[i], true, false, callbackFlag);
					} else if (type == "checkFalse") {
						zTree.checkNode(nodes[i], false, false, callbackFlag);
					} else if (type == "toggle") {
						zTree.checkNode(nodes[i], null, false, callbackFlag);
					}else if (type == "checkTruePS") {
						zTree.checkNode(nodes[i], true, true, callbackFlag);
					} else if (type == "checkFalsePS") {
						zTree.checkNode(nodes[i], false, true, callbackFlag);
					} else if (type == "togglePS") {
						zTree.checkNode(nodes[i], null, true, callbackFlag);
					}
				}
			}
		}

		function setAutoTrigger(e) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			zTree.setting.check.autoCheckTrigger = $("#autoCallbackTrigger").attr("checked");
			$("#autoCheckTriggerValue").jsp(zTree.setting.check.autoCheckTrigger ? "true" : "false");
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			$("#checkTrue").bind("click", {type:"checkTrue"}, checkNode);
			$("#checkFalse").bind("click", {type:"checkFalse"}, checkNode);
			$("#toggle").bind("click", {type:"toggle"}, checkNode);
			$("#checkTruePS").bind("click", {type:"checkTruePS"}, checkNode);
			$("#checkFalsePS").bind("click", {type:"checkFalsePS"}, checkNode);
			$("#togglePS").bind("click", {type:"togglePS"}, checkNode);
			$("#checkAllTrue").bind("click", {type:"checkAllTrue"}, checkNode);
			$("#checkAllFalse").bind("click", {type:"checkAllFalse"}, checkNode);

			$("#autoCallbackTrigger").bind("change", {}, setAutoTrigger);
		});
		//-->
	</SCRIPT>
</HEAD>

<BODY>
<h1>Checkbox - zTree methods</h1>
<h6>[ File Path: excheck/checkbox_fun.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, 'beforeCheck / onCheck' callback function</h2>
				<ul class="list">
				<li>Use 'beforeCheck / onCheck' callback function can control whether to allow changes to the node check state. This simple demo shows how to monitor the check event.</li>
				<li><p>By the way also demonstrates how to use the 'checkNode / checkAllNodes' method triggers 'beforeCheck / onCheck' callback, Try: <br/>
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" id="autoCallbackTrigger" /> setting.check.autoCheckTrigger: <span id="autoCheckTriggerValue">false</span><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" id="callbackTrigger" checked /> Whether trigger the callback when execution checkNode() method. <br/>
					&nbsp;&nbsp;&nbsp;&nbsp;Node --[ <a id="checkTrue" href="#" title="check..." onclick="return false;">check</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="checkFalse" href="#" title="uncheck..." onclick="return false;">uncheck</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="toggle" href="#" title="toggle..." onclick="return false;">toggle</a> ]<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;Node (relationships) --[ <a id="checkTruePS" href="#" title="check(relationships)..." onclick="return false;">check</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="checkFalsePS" href="#" title="uncheck(maintain relationships)..." onclick="return false;">uncheck</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="togglePS" href="#" title="toggle..." onclick="return false;">toggle</a> ]<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;All Nodes --[ <a id="checkAllTrue" href="#" title="check All!!" onclick="return false;">check</a> ]
					&nbsp;&nbsp;&nbsp;&nbsp;[ <a id="checkAllFalse" href="#" title="uncheck All!!" onclick="return false;">uncheck</a> ]</p>
				</li>
				<li><p><span class="highlight_red">How to use 'zTreeObj.checkNode / checkAllNodes' method,  please see the API documentation.</span><br/>
					beforeCheck / onCheck log:<br/>
					<ul id="log" class="log" style="height:130px;"></ul></p>
				</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of setting</h2>
				<ul class="list">
				<li>Same as 'Checkbox Operation'</li>
				</ul>
			</li>
			<li class="title"><h2>3, Explanation of treeNode</h2>
				<ul class="list">
				<li>Same as 'Checkbox Operation'</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
