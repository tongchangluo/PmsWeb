<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Number</span><span class="path">treeNode.</span>level</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>The level of node</p>
			<p class="highlight_red">Do not initialize or modify it, it is created by the zTree.</p>
		</div>
	</div>
	<h3>Number Format</h3>
	<div class="desc">
	<p class="highlight_red">The root node's level = 0, and next level = 1, ...</p>
	</div>
	<h3>Examples of treeNode</h3>
	<h4>1. Get the first selected node's level</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var sNodes = treeObj.getSelectedNodes();
if (sNodes.length > 0) {
	var level = sNodes[0].level;
}
</code></pre>
</div>
</div>
