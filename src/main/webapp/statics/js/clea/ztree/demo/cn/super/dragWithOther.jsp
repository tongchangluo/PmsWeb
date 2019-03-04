<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> ZTREE DEMO - drag with other DOM</TITLE>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="../../../css/demo.css" type="text/css">
	<link rel="stylesheet" href="../../../css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="../../../js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../../../js/jquery.ztree.core.js"></script>
	<!--<script type="text/javascript" src="../../../js/jquery.ztree.excheck.js"></script>-->
	<script type="text/javascript" src="../../../js/jquery.ztree.exedit.js"></script>
	<SCRIPT type="text/javascript">
		<!--
		var MoveTest = {
			errorMsg: "放错了...请选择正确的类别！",
			curTarget: null,
			curTmpTarget: null,
			noSel: function() {
				try {
					window.getSelection ? window.getSelection().removeAllRanges() : document.selection.empty();
				} catch(e){}
			},
			dragTree2Dom: function(treeId, treeNodes) {
				return !treeNodes[0].isParent;
			},
			prevTree: function(treeId, treeNodes, targetNode) {
				return !targetNode.isParent && targetNode.parentTId == treeNodes[0].parentTId;
			},
			nextTree: function(treeId, treeNodes, targetNode) {
				return !targetNode.isParent && targetNode.parentTId == treeNodes[0].parentTId;
			},
			innerTree: function(treeId, treeNodes, targetNode) {
				return targetNode!=null && targetNode.isParent && targetNode.tId == treeNodes[0].parentTId;
			},
			dragMove: function(e, treeId, treeNodes) {
				var p = null, pId = 'dom_' + treeNodes[0].pId;
				if (e.target.id == pId) {
					p = $(e.target);
				} else {
					p = $(e.target).parent('#' + pId);
					if (!p.get(0)) {
						p = null;
					}
				}

				$('.domBtnDiv .active').removeClass('active');
				if (p) {
					p.addClass('active');
				}
			},
			dropTree2Dom: function(e, treeId, treeNodes, targetNode, moveType) {
				var domId = "dom_" + treeNodes[0].getParentNode().id;
				if (moveType == null && (domId == e.target.id || $(e.target).parents("#" + domId).length > 0)) {
					var zTree = $.fn.zTree.getZTreeObj("treeDemo");
					zTree.removeNode(treeNodes[0]);

					var newDom = $("span[domId=" + treeNodes[0].id + "]");
					if (newDom.length > 0) {
						newDom.removeClass("domBtn_Disabled");
						newDom.addClass("domBtn");
					} else {
						$("#" + domId).append("<span class='domBtn' domId='" + treeNodes[0].id + "'>" + treeNodes[0].name + "</span>");
					}
					MoveTest.updateType();
				} else if ( $(e.target).parents(".domBtnDiv").length > 0) {
					alert(MoveTest.errorMsg);
				}
			},
			dom2Tree: function(e, treeId, treeNode) {
				var target = MoveTest.curTarget, tmpTarget = MoveTest.curTmpTarget;
				if (!target) return;
				var zTree = $.fn.zTree.getZTreeObj("treeDemo"), parentNode;
				if (treeNode != null && treeNode.isParent && "dom_" + treeNode.id == target.parent().attr("id")) {
					parentNode = treeNode;
				} else if (treeNode != null && !treeNode.isParent && "dom_" + treeNode.getParentNode().id == target.parent().attr("id")) {
					parentNode = treeNode.getParentNode();
				}

				if (tmpTarget) tmpTarget.remove();
				if (!!parentNode) {
					var nodes = zTree.addNodes(parentNode, {id:target.attr("domId"), name: target.text()});
					zTree.selectNode(nodes[0]);
				} else {
					target.removeClass("domBtn_Disabled");
					target.addClass("domBtn");
					alert(MoveTest.errorMsg);
				}
				MoveTest.updateType();
				MoveTest.curTarget = null;
				MoveTest.curTmpTarget = null;
			},
			updateType: function() {
				var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
				nodes = zTree.getNodes();
				for (var i=0, l=nodes.length; i<l; i++) {
					var num = nodes[i].children ? nodes[i].children.length : 0;
					nodes[i].name = nodes[i].name.replace(/ \(.*\)/gi, "") + " (" + num + ")";
					zTree.updateNode(nodes[i]);
				}
			},
			bindDom: function() {
				$(".domBtnDiv").bind("mousedown", MoveTest.bindMouseDown);
			},
			bindMouseDown: function(e) {
				var target = e.target;
				if (target!=null && target.className=="domBtn") {
					var doc = $(document), target = $(target),
					docScrollTop = doc.scrollTop(),
					docScrollLeft = doc.scrollLeft();
					target.addClass("domBtn_Disabled");
					target.removeClass("domBtn");
					curDom = $("<span class='dom_tmp domBtn'>" + target.text() + "</span>");
					curDom.appendTo("body");

					curDom.css({
						"top": (e.clientY + docScrollTop + 3) + "px",
						"left": (e.clientX + docScrollLeft + 3) + "px"
					});
					MoveTest.curTarget = target;
					MoveTest.curTmpTarget = curDom;

					doc.bind("mousemove", MoveTest.bindMouseMove);
					doc.bind("mouseup", MoveTest.bindMouseUp);
					doc.bind("selectstart", MoveTest.docSelect);
				}
				if(e.preventDefault) {
					e.preventDefault();
				}
			},
			bindMouseMove: function(e) {
				MoveTest.noSel();
				var doc = $(document), 
				docScrollTop = doc.scrollTop(),
				docScrollLeft = doc.scrollLeft(),
				tmpTarget = MoveTest.curTmpTarget;
				if (tmpTarget) {
					tmpTarget.css({
						"top": (e.clientY + docScrollTop + 3) + "px",
						"left": (e.clientX + docScrollLeft + 3) + "px"
					});
				}
				return false;
			},
			bindMouseUp: function(e) {
				var doc = $(document);
				doc.unbind("mousemove", MoveTest.bindMouseMove);
				doc.unbind("mouseup", MoveTest.bindMouseUp);
				doc.unbind("selectstart", MoveTest.docSelect);

				var target = MoveTest.curTarget, tmpTarget = MoveTest.curTmpTarget;
				if (tmpTarget) tmpTarget.remove();

				if ($(e.target).parents("#treeDemo").length == 0) {
					if (target) {
						target.removeClass("domBtn_Disabled");
						target.addClass("domBtn");
					}
					MoveTest.curTarget = null;
					MoveTest.curTmpTarget = null;
				}
			},
			bindSelect: function() {
				return false;
			}
		};

		var setting = {
			edit: {
				enable: true,
				showRemoveBtn: false,
				showRenameBtn: false,
				drag: {
					prev: MoveTest.prevTree,
					next: MoveTest.nextTree,
					inner: MoveTest.innerTree
				}
			},
			data: {
				keep: {
					parent: true,
					leaf: true
				},
				simpleData: {
					enable: true
				}
			},
			callback: {
				beforeDrag: MoveTest.dragTree2Dom,
				onDrop: MoveTest.dropTree2Dom,
				onDragMove: MoveTest.dragMove,
				onMouseUp: MoveTest.dom2Tree
			},
			view: {
				selectedMulti: false
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"植物", isParent: true, open:true},
			{ id:2, pId:0, name:"动物", isParent: true, open:true},
			{ id:20, pId:2, name:"大象"},
			{ id:29, pId:2, name:"鲨鱼"},
			{ id:10, pId:1, name:"大白菜"},
			{ id:19, pId:1, name:"西红柿"}
		];

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			MoveTest.updateType();
			MoveTest.bindDom();
		});
		//-->
	</SCRIPT>
	<style type="text/css">
.dom_line {margin:2px;border-bottom:1px gray dotted;height:1px}
.domBtnDiv {display:block;padding:2px;border:1px gray dotted;background-color:powderblue}
.categoryDiv {display:inline-block; width:335px}
.domBtn {display:inline-block;cursor:pointer;padding:2px;margin:2px 10px;border:1px gray solid;background-color:#FFE6B0}
.domBtn_Disabled {display:inline-block;cursor:default;padding:2px;margin:2px 10px;border:1px gray solid;background-color:#DFDFDF;color:#999999}
.dom_tmp {position:absolute;font-size:12px;}
.active {background-color: #93C3CF}
	</style>
</HEAD>

<BODY>
<h1>与其他 DOM 拖拽互动</h1>
<h6>[ 文件路径: super/dragWithOther.jsp ]</h6>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
		<ul class="info">
			<li class="title"><h2>实现方法说明</h2>
				<ul class="list">
				<li>zTree v3.2 版本修正了 onDrag/onDrop 中的 event 对象; v3.5.16 版本增加了 onDragMove; 因此可以较容易的控制将节点拖拽到其他 DOM </li>
				<li class="highlight_red">将其他 DOM 拖拽到 zTree 需要自己制作相关的拖拽代码</li>
				<li class="highlight_red">这仅仅是一个最简单的演示，如果需要更炫的效果，需要制作更复杂的代码</li>
				</ul>
			</li>
			<li class="title"><h2>请拖拽下面内容到 树节点上</h2>
				<div class="domBtnDiv">
					<div id="dom_1" class="categoryDiv"><span class="domBtn" domId="11">大树</span><span class="domBtn" domId="12">小草</span><span class="domBtn" domId="13">花朵</span></div>
					<div class="dom_line"></div>
					<div id="dom_2" class="categoryDiv"><span class="domBtn" domId="21">老虎</span><span class="domBtn" domId="22">狗熊</span><span class="domBtn" domId="23">狮子</span></div>
				</div>
				<span class="highlight_red">也可以把二级节点拖拽到以上图层 </span>
			</li>
		</ul>
	</div>
</div>
</BODY>
</HTML>
