<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean / Function(treeId, treeNode)</span><span class="path">setting.view.</span>showIcon</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Set to show or hide node icon.</p>
			<p>Default: true</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p> true means: show node icon.</p>
	<p> false means: hide node icon.</p>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>zTree unique identifier: <b class="highlight_red">treeId</b>.</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>JSON data object of the node which need to show icon.</p>
	<h4 class="topLine"><b>Return </b><span>Boolean</span></h4>
	<p>Return value is same as 'Boolean Format'</p>
	</div>
	<h3>Examples of setting & function</h3>
	<h4>1. Hide node icon</h4>
	<pre xmlns=""><code>var setting = {
	view: {
		showIcon: false
	}
};
......</code></pre>
	<h4>2. Hide node icon which level=2</h4>
	<pre xmlns=""><code>function showIconForTree(treeId, treeNode) {
	return treeNode.level != 2;
};
var setting = {
	view: {
		showIcon: showIconForTree
	}
};
......</code></pre>
</div>
</div>
