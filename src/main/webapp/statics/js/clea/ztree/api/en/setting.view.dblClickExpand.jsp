<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean / Function(treeId, treeNode)</span><span class="path">setting.view.</span>dblClickExpand</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>When double-click the parent node, 'dblClickExpand' is used to decide whether to expand the parent node.</p>
			<p>Default: true</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p> true means: When double-click the parent node, zTree will expand the parent node.</p>
	<p> false means: When double-click the parent node, zTree will not expand the parent node.</p>
	</div>
	<h3>Function Pamameter Descriptions</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>zTree unique identifier: <b class="highlight_red">treeId</b>.</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>JSON data object of the node which be double-clicked.</p>
	<h4 class="topLine"><b>Return </b><span>Boolean</span></h4>
	<p>Return value is same as 'Boolean Format'</p>
	</div>
	<h3>Example of setting</h3>
	<h4>1. When double-click the parent node, zTree will not expand the parent node.</h4>
	<pre xmlns=""><code>var setting = {
	view: {
		dblClickExpand: false
	}
};
......</code></pre>
	<h4>2. When double-click the parent node, zTree will expand the parent node which level>0.</h4>
	<pre xmlns=""><code>function dblClickExpand(treeId, treeNode) {
	return treeNode.level > 0;
};
var setting = {
	view: {
		dblClickExpand: dblClickExpand
	}
};
......</code></pre>
</div>
</div>
