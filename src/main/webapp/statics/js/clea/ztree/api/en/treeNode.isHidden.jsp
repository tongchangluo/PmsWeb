<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">treeNode.</span>isHidden</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.exhide</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Judge whether the node has been hidden.</p>
			<p class="highlight_red">1. When initialize zTree, the nodes which be set 'isHidden = true' will be hidden.</p>
			<p class="highlight_red"></p>
			<p class="highlight_red">2. Please don't change this attribute of the nodes which have been created. If you want to hide or show nodes, please use 'hideNode() / hideNodes() / showNode() / showNodes()' methods.</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p> true means: this node is hidden.</p>
	<p> false means: this node is shown.</p>
	</div>
	<h3>Examples of treeNode</h3>
	<h4>1. Judge whether the first root node has been hidden.</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var sNodes = treeObj.getNodes();
if (sNodes.length > 0) {
	var isHidden = sNodes[0].isHidden;
}
</code></pre>
</div>
</div>
