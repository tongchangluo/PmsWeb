<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeId)</span><span class="path">zTreeObj.</span>destroy</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>From zTree v3.4, zTree support the method for destruction.</p>
			<p>1. This method can destroy the zTreeObj's zTree.</p>
			<p class="highlight_red">2. If you want to destory all of the zTrees, you can use the '$.fn.zTree.destroy()' method.</p>
			<p class="highlight_red">3. If you want to use the tree which has been destroyed, you must use the 'init()' method at first.</p>
		</div>
	</div>
        <h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>Return </b><span>none</span></h4>
	<p>no return value</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. destroy the zTree which its id is 'treeDemo'</h4>
	<pre xmlns=""><code>var zTreeObj = $.fn.zTree.getZTreeObj("treeDemo");
zTreeObj.destroy();
</code></pre>
</div>
</div>
