<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeNode, addFlag, isSilent)</span><span class="path">zTreeObj.</span>selectNode</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Select a node</p>
			<p class="highlight_red">zTree v3.x supports select multiple nodes.</p>
			<p class="highlight_red">Please use zTree object to executing the method.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>treeNode</b><span>JSON</span></h4>
	<p>JSON data object of the node to be selected.</p>
	<p class="highlight_red">Please ensure that this data object is an internal node data object in zTree.</p>
	<h4 class="topLine"><b>addFlag</b><span>Boolean</span></h4>
	<p>addFlag = true means: append to select node, don't affect the previously selected node, can select multiple nodes.</p>
	<p>addFlag = false (default) means: select single node, prior the selected node is deselected.</p>
	<p class="highlight_red">If setting.view.selectedMulti = false, this para, this parameter is not valid, always select single node</p>
	<p>isSilent = true means: when you select node, zTree will not scroll the node into view.</p>
	<p>isSilent = false (default) means: when you select node, zTree will scroll the node into view.</p>
	<p class="highlight_red">(v3.5.23+)</p>
	<h4 class="topLine"><b>Return </b><span>none</span></h4>
	<p>no return value</p>
	</div>
	<h3>Exampleso of function</h3>
	<h4>1. Select single node which be first selected.</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getNodes();
if (nodes.length>0) {
	treeObj.selectNode(nodes[0]);
}
</code></pre>
</div>
</div>
