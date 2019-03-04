<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">treeNode.</span>isLastNode</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Judge whether the node is the sibling nodes's last node.</p>
			<p class="highlight_red">If you use the 'exhide' pack, so this attribute will only support the node which be shown. </p>
			<p class="highlight_red">Do not initialize or modify it, it is created by the zTree.</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p> true means: the node is last node.</p>
	<p> false means: the node is not last node.</p>
	<p class="highlight_red">If the node has been hidden, isLastNode = false</p>
	</div>
	<h3>Examples of treeNode</h3>
	<h4>1. Judge whether the first selected node is the sibling nodes's last node.</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var sNodes = treeObj.getSelectedNodes();
if (sNodes.length > 0) {
	var isLastNode = sNodes[0].isLastNode;
}
</code></pre>
</div>
</div>
