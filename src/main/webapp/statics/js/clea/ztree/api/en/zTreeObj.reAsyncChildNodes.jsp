<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(parentNode, reloadType, isSilent)</span><span class="path">zTreeObj.</span>reAsyncChildNodes</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Forced asynchronous loading child nodes of parent node. It is valid when <span class="highlight_red">[setting.async.enable = true]</span></p>
			<p class="highlight_red">You can use this method to reload child nodes.</p>
			<p class="highlight_red">Please use zTree object to executing the method.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>parentNode</b><span>JSON</span></h4>
	<p>The parent node which will asynchronous loading child nodes.</p>
	<p class="highlight_red">1. If parentNode = null, it is same as reload root nodes.</p>
	<p class="highlight_red">2. If parentNode.isParent = false, don't load nodes.</p>
	<p class="highlight_red">3. Please ensure that this data object is an internal node data object in zTree.</p>
	<h4 class="topLine"><b>reloadType</b><span>String</span></h4>
	<p>reloadType = "refresh" means: reload child nodes.</p>
	<p>reloadType != "refresh" means: append to load child nodes.</p>
	<h4 class="topLine"><b>isSilent</b><span>Boolean</span></h4>
	<p>Set whether to automatically expand the parent node, after load nodes.</p>
	<p>isSilent = true means: don't auto expand the parent node. Otherwise auto expand.</p>
	<h4 class="topLine"><b>Return </b><span>none</span></h4>
	<p>no return value</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. reload root nodes</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
treeObj.reAsyncChildNodes(null, "refresh");
</code></pre>
	<h4>2. reload the first selected node's child nodes.</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getSelectedNodes();
if (nodes.length>0) {
	treeObj.reAsyncChildNodes(nodes[0], "refresh");
}
</code></pre>
</div>
</div>
