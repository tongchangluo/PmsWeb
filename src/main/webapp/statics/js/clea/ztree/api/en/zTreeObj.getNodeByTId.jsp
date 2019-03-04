<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(tId)</span><span class="path">zTreeObj.</span>getNodeByTId</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>According the unique identifier tId of zTree, quick get the node's JSON data object.</p>
			<p class="highlight_red">Get the node from the cache, don't need to search from all nodes.</p>
			<p class="highlight_red">Please use zTree object to executing the method.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>tId</b><span>String</span></h4>
	<p>The unique identifier of node.</p>
	<h4 class="topLine"><b>Return </b><span>JSON</span></h4>
	<p>JSON data object of the node which be searched.</p>
	<p class="highlight_red">If no result, return null.</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. 1. Search the node which its 'tId' attribute is 'tree_10'</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var node = treeObj.getNodeByTId("tree_10");
</code></pre>
</div>
</div>
