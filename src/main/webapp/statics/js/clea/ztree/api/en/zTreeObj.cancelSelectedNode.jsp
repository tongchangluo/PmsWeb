<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeNode)</span><span class="path">zTreeObj.</span>cancelSelectedNode</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>To cancel the selected node.</p>
			<p class="highlight_red">zTree v3.x support to select multiple nodes, so you can cancel a single selected node, and you can cancel all of the selected nodes too.</p>
			<p class="highlight_red">Please use zTree object to executing the method.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>treeNode</b><span>JSON</span></h4>
	<p>JSON data object of the node which need to cancel selected.</p>
	<p class="highlight_red">Please ensure that this data object is an internal node data object in zTree.</p>
	<p class="highlight_red">If you omit this parameter,  zTree will cancel all of the selected nodes.</p>
	<h4 class="topLine"><b>Return </b><span>none</span></h4>
	<p>no return value</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. Cancel all of the selected nodes</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
treeObj.cancelSelectedNode();
</code></pre>
	<h4>2. Cancel the first node of the selected nodes</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getSelectedNodes();
if (nodes.length>0) { 
	treeObj.cancelSelectedNode(nodes[0]);
}
</code></pre>
</div>
</div>
