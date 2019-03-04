<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - big data page</TITLE>
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
			async: {
				enable: true,
				url: getUrl
			},
			check: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			view: {
				addDiyDom: addDiyDom
			},
			callback: {
				beforeExpand: beforeExpand,
				onAsyncSuccess: onAsyncSuccess,
				onAsyncError: onAsyncError
			}
		};

		var zNodes =[
			{name:"page test", t:"Please click the paging buttons.", id:"1", count:2000, page:0, pageSize:100, isParent:true}
		];
		var curPage = 0;
		function getUrl(treeId, treeNode) {
			var param = "id="+ treeNode.id +"_"+treeNode.page +"&count="+treeNode.pageSize,
			aObj = $("#" + treeNode.tId + "_a");
			aObj.attr("title", "Page " + treeNode.page + " / " + treeNode.maxPage + "")
			return "../asyncData/getNodesForBigData.php?" + param;
		}
		function goPage(treeNode, page) {
			treeNode.page = page;
			if (treeNode.page<1) treeNode.page = 1;
			if (treeNode.page>treeNode.maxPage) treeNode.page = treeNode.maxPage;
			if (curPage == treeNode.page) return;
			curPage = treeNode.page;
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			zTree.reAsyncChildNodes(treeNode, "refresh");
		}
		function beforeExpand(treeId, treeNode) {
			if (treeNode.page == 0) treeNode.page = 1;
			return !treeNode.isAjaxing;
		}
		function onAsyncSuccess(event, treeId, treeNode, msg) {
			
		}
		function onAsyncError(event, treeId, treeNode, XMLHttpRequest, textStatus, errorThrown) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			alert("ajax error...");
			treeNode.icon = "";
			zTree.updateNode(treeNode);
		}
		function addDiyDom(treeId, treeNode) {
			if (treeNode.level>0) return;
			var aObj = $("#" + treeNode.tId + "_a");
			if ($("#addBtn_"+treeNode.id).length>0) return;
			var addStr = "<span class='button lastPage' id='lastBtn_" + treeNode.id
				+ "' title='last page' onfocus='this.blur();'></span><span class='button nextPage' id='nextBtn_" + treeNode.id
				+ "' title='next page' onfocus='this.blur();'></span><span class='button prevPage' id='prevBtn_" + treeNode.id
				+ "' title='prev page' onfocus='this.blur();'></span><span class='button firstPage' id='firstBtn_" + treeNode.id
				+ "' title='first page' onfocus='this.blur();'></span>";
			aObj.after(addStr);
			var first = $("#firstBtn_"+treeNode.id);
			var prev = $("#prevBtn_"+treeNode.id);
			var next = $("#nextBtn_"+treeNode.id);
			var last = $("#lastBtn_"+treeNode.id);
			treeNode.maxPage = Math.round(treeNode.count/treeNode.pageSize - .5) + (treeNode.count%treeNode.pageSize == 0 ? 0:1);
			first.bind("click", function(){
				if (!treeNode.isAjaxing) {
					goPage(treeNode, 1);
				}
			});
			last.bind("click", function(){
				if (!treeNode.isAjaxing) {
					goPage(treeNode, treeNode.maxPage);
				}
			});
			prev.bind("click", function(){
				if (!treeNode.isAjaxing) {
					goPage(treeNode, treeNode.page-1);
				}
			});
			next.bind("click", function(){
				if (!treeNode.isAjaxing) {
					goPage(treeNode, treeNode.page+1);
				}
			});
		};
		
		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
	<style type="text/css">
.ztree li span.button.firstPage {float:right; margin-left:2px; margin-right: 0; background-position:-144px -16px; vertical-align:top; *vertical-align:middle}
.ztree li span.button.prevPage {float:right; margin-left:2px; margin-right: 0; background-position:-144px -48px; vertical-align:top; *vertical-align:middle}
.ztree li span.button.nextPage {float:right; margin-left:2px; margin-right: 0; background-position:-144px -64px; vertical-align:top; *vertical-align:middle}
.ztree li span.button.lastPage {float:right; margin-left:2px; margin-right: 0; background-position:-144px -32px; vertical-align:top; *vertical-align:middle}
	</style>
 </HEAD>

<BODY>
<h1>Loading Data By Pagination</h1>
<h6>[ File Path: bigdata/page.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1, Explanation of large data load</h2>
				<ul class="list">
				<li>1) Pagination can be an effective solution to the large number of child nodes of the situation.</li>
				<li>2) Using custom method to display the pagination button.</li>
				<li class="highlight_red">3) Pagination lead to the association  of checkbox can not be achieved, only correction after show each page . Because of the time limitation, Demo does not deal with association of checkbox.</li>
				<li class="highlight_red">4) The use of pagination, you can only get the current page node data from zTree. You can save the data after each page loading as the cache, according to the demand to determine the specific methods.</li>
			</li>
			<li class="title"><h2>2, Explanation of setting</h2>
				<ul class="list">
				<li>Need to set the parameters in setting.async</li>
				<li>No other special configuration, the user can set their own requirements.</li>
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
