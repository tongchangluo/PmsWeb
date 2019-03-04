<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(key, value, parentNode)</span><span class="path">zTreeObj.</span>getNodesByParam</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>According to the node data attribute, search the nodes which exactly matches, and get the JSON objects collection of nodes.</p>
			<p class="highlight_red">Please use zTree object to executing the method.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>key</b><span>String</span></h4>
	<p>The name of attribute which need to exactly match</p>
	<h4 class="topLine"><b>value</b><span>?</span></h4>
	<p>The value which need to exactly match, can be any type, please ensure its type consistent with the attribute values.</p>
	<h4 class="topLine"><b>parentNode</b><span>JSON</span></h4>
	<p>The search range, you can search node from a parent node's child nodes.</p>
	<p class="highlight_red">If this parameter is omitted, zTree will search node from all nodes.</p>
	<h4 class="topLine"><b>Return </b><span>Array(JSON)</span></h4>
	<p>The JSON data objects collection of the nodes which be searched.</p>
	<p class="highlight_red">If search none node, return [ ].</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. Search the nodes which their 'name' attribute is 'test'.</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getNodesByParam("name", "test", null);
</code></pre>
</div>
</div>
