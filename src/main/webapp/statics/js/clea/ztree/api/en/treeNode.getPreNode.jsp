<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function()</span><span class="path">treeNode.</span>getPreNode</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Get the treeNode's previous sibling node.</p>
			<p class="highlight_red">Do not initialize or modify it, it is created by the zTree.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>Return</b><span>JSON</span></h4>
	<p>JSON data object of the treeNode's previous sibling node</p>
	<p class="highlight_red">If have not the previous node, return null.</p>
	</div>
	<h3>Examples of treeNode</h3>
	<h4>1. Get the first selected node's previous sibling node.</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var sNodes = treeObj.getSelectedNodes();
if (sNodes.length > 0) {
	var node = sNodes[0].getPreNode();
}
</code></pre>
</div>
</div>
