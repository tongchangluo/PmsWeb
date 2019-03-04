<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(expandFlag)</span><span class="path">zTreeObj.</span>expandAll</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Expand or collapse all nodes.</p>
			<p class="highlight_red">This method does not trigger 'beforeExpand / onExpand' or 'beforeCollapse / onCollapse' callback function.</p>
			<p class="highlight_red">Please use zTree object to executing the method.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>expandFlag</b><span>Boolean</span></h4>
	<p>expandFlag = true means: expand all nodes.</p>
	<p>expandFlag =  false means: collapse all nodes.</p>
	<h4 class="topLine"><b>Return </b><span>Boolean</span></h4>
	<p>return the result of expand or collapse.</p>
	<p>true means: expand all nodes</p>
	<p>false means: collapse all nodes</p>
	<p>null means: have no parent node to expand or collapse.</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. Expand all nodes</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
treeObj.expandAll(true);
</code></pre>
</div>
</div>
