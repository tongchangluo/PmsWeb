<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeId)</span><span class="path">$.fn.zTree.</span>destroy</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>From zTree v3.4, zTree provides a method for destruction.</p>
			<p>1. This method can destroy a zTree by treeId, or destroy all zTree instances.</p>
			<p class="highlight_red">2. If you want to destroy a zTree, you can use the 'zTreeObj.destroy()' method.</p>
			<p class="highlight_red">3. If you want to re-use the tree which has been destroyed, 
                            you must first re-initialise it with the 'init()' method.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>zTree unique identifier</p>
	<p class="highlight_red">If this parameter is omitted, all zTree instances will be destroyed.</p>
	<h4 class="topLine"><b>Return </b><span>none</span></h4>
	<p>no return value</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. Destroy the zTree with id === 'treeDemo'</h4>
	<pre xmlns=""><code>$.fn.zTree.destroy("treeDemo");</code></pre>
	<h4>2. Destroy all zTree instances</h4>
	<pre xmlns=""><code>$.fn.zTree.destroy();</code></pre>
</div>
</div>
