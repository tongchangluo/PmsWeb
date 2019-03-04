<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">treeNode.</span>parentTId</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>The unique identifier of node's parent node.</p>
			<p class="highlight_red">1. zTree v3.x using 'parentTId' replaced the original 'parentNode' attribute, and increased getParentNode () method, in order to avoid the original 'parentNode' cause the clone () method infinite loop.</p>
			<p class="highlight_red">2. Do not initialize or modify it, it is created by the zTree.</p>
		</div>
	</div>
	<h3>String Format</h3>
	<div class="desc">
	<p>String object of node's parent node's tId. please see API about 'treeNode.tId'</p>
	<p class="highlight_red">If treeNode is root node, parentTId is null.</p>
	</div>
	<h3>Examples of treeNode</h3>
	<h4>1. Get the first selected node's parent node's tId</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var sNodes = treeObj.getSelectedNodes();
if (sNodes.length > 0) {
	var parentTId = sNodes[0].parentTId;
}
</code></pre>
</div>
</div>
