<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function()</span><span class="path">treeNode.</span>getPreNode</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>获取与 treeNode 节点相邻的前一个节点。</p>
			<p class="highlight_red">初始化节点数据时，由 zTree 增加此属性，请勿提前赋值</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>返回值</b><span>JSON</span></h4>
	<p>与 treeNode 节点相邻的前一个节点。</p>
	<p class="highlight_red">如果 treeNode 是第一个节点，返回 null 。</p>
	</div>
	<h3>treeNode 举例</h3>
	<h4>1. 获取当前被选中的节点的前一个节点</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var sNodes = treeObj.getSelectedNodes();
if (sNodes.length > 0) {
	var node = sNodes[0].getPreNode();
}
</code></pre>
</div>
</div>
