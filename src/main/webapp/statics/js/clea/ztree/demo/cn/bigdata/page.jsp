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
			{name:"分页测试", t:"请点击分页按钮", id:"1", count:2000, page:0, pageSize:100, isParent:true}
		];
		var curPage = 0;
		function getUrl(treeId, treeNode) {
			var param = "id="+ treeNode.id +"_"+treeNode.page +"&count="+treeNode.pageSize,
			aObj = $("#" + treeNode.tId + "_a");
			aObj.attr("title", "当前第 " + treeNode.page + " 页 / 共 " + treeNode.maxPage + " 页")
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
			alert("异步获取数据出现异常。");
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
<h1>分页加载大数据量</h1>
<h6>[ 文件路径: bigdata/page.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>1、大数据量加载说明</h2>
				<ul class="list">
				<li>1)、分页方案可以有效解决某一级节点数据超大的情况。</li>
				<li>2)、分页按钮通过自定义控件的方法实现。</li>
				<li class="highlight_red">3)、分页方案对于 checkbox 的关联关系无能为力，只能每次翻页后进行修正。由于时间关系，Demo 中不对 checkbox 的关联进行任何修正处理。</li>
				<li class="highlight_red">4)、分页方案中，从 zTree 得到的节点数据只有当前页的节点数据，可以在每次翻页后自行保存每页的数据，作为缓存，具体情况要根据实际需求来决定。</li>
			</li>
			<li class="title"><h2>2、setting 配置信息说明</h2>
				<ul class="list">
				<li>需要设置 setting.async 异步加载部分的参数</li>
				<li>其他不需要进行特殊的配置，根据自己的需求自行设置</li>
				</ul>
			</li>
			<li class="title"><h2>3、treeNode 节点数据说明</h2>
				<ul class="list">
				<li>对 节点数据 没有特殊要求，用户可以根据自己的需求添加自定义属性</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
