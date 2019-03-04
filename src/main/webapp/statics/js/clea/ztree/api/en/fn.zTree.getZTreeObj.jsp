<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeId)</span><span class="path">$.fn.zTree.</span>getZTreeObj</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>zTree v3.x provides this method to get zTree object from the tree's Id.</p>
			<p class="highlight_red">Please initialize zTree first, then you can use this method.</p>
			<p>Users don't need to use a global variable to reference the zTree object, 
                            as all of the callback methods will pass 'treeId' parameters, 
                            and you can always call this method to get the zTree object.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>zTree unique identifier</p>
	<h4 class="topLine"><b>Return </b><span>JSON</span></h4>
	<p>zTree object</p>
	<p>This is a reference to the zTree object.</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. Get the zTree object with id='tree'</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");</code></pre>
</div>
</div>
