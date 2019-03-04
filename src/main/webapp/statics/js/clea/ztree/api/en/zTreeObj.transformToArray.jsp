<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeNodes)</span><span class="path">zTreeObj.</span>transformToArray</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p></p>
			<p>Transform the zTree nodes data into simple array.  (To avoid the user to write code to traverse all nodes)</p>
			<p class="highlight_red">Please use zTree object to executing the method.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>treeNodes</b><span>Array(JSON) / JSON</span></h4>
	<p>JSON data object of the node which need to be transformed.</p>
	<p>or JSON data objects collection of the nodes which need to be transformed.</p>
	<h4 class="topLine"><b>Return </b><span>Array(JSON)</span></h4>
	<p>The JSON data objects array of the nodes which be transformed.</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. Transform the zTree nodes data into simple array.</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.transformToArray(treeObj.getNodes());
</code></pre>
</div>
</div>
