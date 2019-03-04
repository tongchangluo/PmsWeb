<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeNode)</span><span class="path">zTreeObj.</span>getNodeIndex</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>获取某节点在同级节点中的序号（从0开始）</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeNode</b><span>JSON</span></h4>
	<p>需要查询顺序的节点 JSON 数据对象</p>
	<p class="highlight_red">请务必保证此节点数据对象 是 zTree 内部的数据对象</p>
	<h4 class="topLine"><b>返回值</b><span>Number</span></h4>
	<p class="highlight_red">返回值从 0 开始计数</p>
	<p class="highlight_red">如果不存在该节点数据，返回 -1</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 获取当前选中的第一个节点在同级节点中的序号</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getSelectedNodes();
if (nodes.length>0) {
	var index = treeObj.getNodeIndex(nodes[0]);
}
</code></pre>
</div>
</div>
