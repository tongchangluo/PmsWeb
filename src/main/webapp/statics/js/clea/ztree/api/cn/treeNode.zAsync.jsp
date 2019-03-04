<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">treeNode.</span>zAsync</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>记录 treeNode 节点是否已经进行过异步加载，避免父节点反复异步加载数据。</p>
			<p class="highlight_red">初始化节点数据时，由 zTree 增加此属性，请勿提前赋值</p>
			<p class="highlight_red">默认值：false （无子节点的父节点）； true （有子节点的父节点 & 叶子节点）</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true 表示父节点展开时不需要自动异步加载</p>
	<p> false 表示父节点展开时需要自动异步加载</p>
	<p class="highlight_red"> 此参数不会对 reAsyncChildNodes 方法造成任何影响</p>
	</div>
	<h3>treeNode 举例</h3>
	<h4>1. 查看当前被选中的节点是否节点是否需要自动异步加载</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var sNodes = treeObj.getSelectedNodes();
if (sNodes.length > 0) {
	var zAsync = sNodes[0].zAsync;
}
</code></pre>
</div>
</div>
