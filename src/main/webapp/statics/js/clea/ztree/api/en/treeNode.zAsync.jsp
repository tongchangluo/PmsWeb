<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">treeNode.</span>zAsync</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Judge whether the parent node's child nodes will be loaded asynchronously when the parent node is expanded.</p>
			<p class="highlight_red">Do not initialize or modify it, it is created by the zTree.</p>
			<p class="highlight_red">Default：false (the parent node which have no child nodes); true (the parent node which have child nodes or the leaf node)</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p> true means: the node's child nodes will not be loaded asynchronously when the parent node is expanded.</p>
	<p> false means: the node's child nodes will be loaded asynchronously when the parent node is expanded.</p>
	<p class="highlight_red"> This attribute will not effect to 'reAsyncChildNodes()' method</p>
	</div>
	<h3>Examples of treeNode</h3>
	<h4>1. Judge whether the first selected node's child nodes has been loaded asynchronously</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var sNodes = treeObj.getSelectedNodes();
if (sNodes.length > 0) {
	var zAsync = sNodes[0].zAsync;
}
</code></pre>
</div>
</div>
