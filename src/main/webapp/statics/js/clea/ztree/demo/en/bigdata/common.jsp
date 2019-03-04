<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - big data common</TITLE>
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
			check: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				onNodeCreated: onNodeCreated
			}
		};

		var dataMaker = function(count) {
			var nodes = [], pId = -1,
			min = 10, max = 90, level = 0, curLevel = [], prevLevel = [], levelCount,
			i = 0,j,k,l,m;

			while (i<count) {
				if (level == 0) {
					pId = -1;
					levelCount = Math.round(Math.random() * max) + min;
					for (j=0; j<levelCount && i<count; j++, i++) {
						var n = {id:i, pId:pId, name:"Big-" +i};
						nodes.push(n);
						curLevel.push(n);
					}
				} else {
					for (l=0, m=prevLevel.length; l<m && i<count; l++) {
						pId = prevLevel[l].id;
						levelCount = Math.round(Math.random() * max) + min;
						for (j=0; j<levelCount && i<count; j++, i++) {
							var n = {id:i, pId:pId, name:"Big-" +i};
							nodes.push(n);
							curLevel.push(n);
						}
					}
				}
				prevLevel = curLevel;
				curLevel = [];
				level++;
			}
			return nodes;
		}

		var ruler = {
			doc: null,
			ruler: null,
			cursor: null,
			minCount: 5000,
			count: 5000,
			stepCount:500,
			minWidth: 30,
			maxWidth: 215,
			init: function() {
				ruler.doc = $(document);
				ruler.ruler = $("#ruler");
				ruler.cursor = $("#cursor");
				if (ruler.ruler) {
					ruler.ruler.bind("mousedown", ruler.onMouseDown);
					
				}
			},
			onMouseDown: function(e) {
				ruler.drawRuler(e, true);
				ruler.doc.bind("mousemove", ruler.onMouseMove);
				ruler.doc.bind("mouseup", ruler.onMouseUp);
				ruler.doc.bind("selectstart", ruler.onSelect);
				$("body").css("cursor", "pointer");
			},
			onMouseMove: function(e) {
				ruler.drawRuler(e);
				return false;
			},
			onMouseUp: function(e) {
				$("body").css("cursor", "auto");
				ruler.doc.unbind("mousemove", ruler.onMouseMove);
				ruler.doc.unbind("mouseup", ruler.onMouseUp);
				ruler.doc.unbind("selectstart", ruler.onSelect);
				ruler.drawRuler(e);
			},
			onSelect: function (e) {
				return false;
			},
			getCount: function(end) {
				var start = ruler.ruler.offset().left+1;
				var c = Math.max((end - start), ruler.minWidth);
				c = Math.min(c, ruler.maxWidth);
				return {width:c, count:(c - ruler.minWidth)*ruler.stepCount + ruler.minCount};
			},
			drawRuler: function(e, animate) {
				var c = ruler.getCount(e.clientX);
				ruler.cursor.stop();
				if ($.browser.msie || !animate) {
					ruler.cursor.css({width:c.width});
				} else {
					ruler.cursor.animate({width:c.width}, {duration: "fast",easing: "swing", complete:null});
				}
				ruler.count = c.count;
				ruler.cursor.text(c.count);
			}
		}
		var showNodeCount = 0;
		function onNodeCreated(event, treeId, treeNode) {
			showNodeCount++;
		}

		function createTree () {
			var zNodes = dataMaker(ruler.count);
			showNodeCount = 0;
			$("#treeDemo").empty();
			setting.check.enable = $("#showChk").attr("checked");
			var time1 = new Date();
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			var time2 = new Date();

			alert(" " + zNodes.length + " nodes are initialized, " + showNodeCount + " nodes generate the DOM object."
				+ "\n\n Initialization zTree total time: " + (time2.getTime() - time1.getTime()) + " ms");
		}


		$(document).ready(function(){
			ruler.init("ruler");
			$("#createTree").bind("click", createTree);

		});
		//-->
	</SCRIPT>
 </HEAD>

<BODY>
<h1>One-time Large Data Loading</h1>
<h6>[ File Path: bigdata/common.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul>
		<li><span>Adjust the total number of nodes to the test load speed: </span>
			<div id="ruler" class="ruler" title="can drag to adjust the number of nodes">
				<div id="cursor" class="cursor">5000</div>
			</div>
			<div style="width:220px; text-align: center;">
				<span>checkbox</span><input type="checkbox" id="showChk" title="whether to display checkbox" class="checkbox first" />&nbsp;&nbsp;&nbsp;&nbsp;
				[ <a id="createTree" href="#" title="Initialize zTree" onclick="return false;">Initialize zTree</a> ]
			</div>
		</li>
		</ul>
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of large data load</h2>
				<ul class="list">
				<li>1) zTree v3.x optimized for one-time large data loading capacity, using a lazy loading technique, which does not expand the node does not create child nodes of the DOM.</li>
				<li class="highlight_red">2) If a maximum of 100 nodes each, but a total number of several thousand or even tens of thousands of nodes, and the parent node is collapsed by default to optimize the most obvious effect, very fast.</li>
				<li class="highlight_red">3) For the next level there are thousands of sub-node case, the optimization of lazy loading is invalid, proposal to consider asynchronous page loading.</li>
				<li class="highlight_red">4) if you set the data to all the parent nodes are expanded, the optimization  of lazy loading is invalid, proposal to not expand all parent node when you initialize zTree.</li>
				<li>5) set the display checkbox / radio will affect some of the performance.</li>
				<li>6) DOM generated using addDiyDom function will affect the speed, the number of nodes determines the number of impact situations.</li>
				<li>7) Using 'onNodeCreated' callback function to manipulate nodes object will affect the speed, the degree of influence determined by the number of nodes.</li>
				</ul>
			</li>
			<li class="title"><h2>2, Explanation of setting</h2>
				<ul class="list">
				<li>No special configuration.</li>
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
