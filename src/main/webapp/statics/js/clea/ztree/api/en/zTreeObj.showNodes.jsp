<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeNodes)</span><span class="path">zTreeObj.</span>showNodes</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.exhide</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>To show a group of nodes which be hidden.</p>
			<p class="highlight_red">1. This feature can't support the 'exedit' feature, so please don't use this feature in edit mode.</p>
			<p class="highlight_red">2. If you hide or show the nodes, it will effect the 'isFirstNode' and 'isLastNode' attribute.</p>
			<p class="highlight_red">3. Please use zTree object to executing the method.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>treeNodes</b><span>Array(JSON)</span></h4>
	<p>the array of the nodes which will be shown</p>
	<p class="highlight_red">Please ensure that this data object is an internal node data object in zTree.</p>
	<h4 class="topLine"><b>Retrun </b><span>none</span></h4>
	<p>no return value</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. show all of the nodes which be hidden.</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getNodesByParam("isHidden", true);
treeObj.showNodes(nodes);
</code></pre>
</div>
</div>
