<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String / Function(treeId, treeNode)</span><span class="path">setting.edit.</span>removeTitle</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.exedit</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>the title of the remove button DOM. It is valid when <span class="highlight_red">[setting.edit.enable = true & setting.edit.showRemoveBtn = true]</span></p>
			<p>Default: "remove"</p>
		</div>
	</div>
	<h3>String Format</h3>
	<div class="desc">
	<p>When the mouse over the remove button, the browser auto pop-up message content.</p>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>zTree unique identifier: <b class="highlight_red">treeId</b>.</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>JSON data object of the node which show the remove button</p>
	<h4 class="topLine"><b>Return </b><span>String</span></h4>
	<p>Return value is same as 'String Format'</p>
	</div>
	<h3>Examples of setting & function</h3>
	<h4>1. Set title is 'remove the node' about all the remove button</h4>
	<pre xmlns=""><code>var setting = {
	edit: {
		enable: true,
		showRemoveBtn: true,
		removeTitle: "remove the node"
	}
};
......</code></pre>
	<h4>2. Set title is 'remove the parent node' about the parent node, and is 'remove the leaf node' about the leaf node</h4>
	<pre xmlns=""><code>function setRemoveTitle(treeId, treeNode) {
	return treeNode.isParent ? "remove the parent node":"remove the leaf node";
}
var setting = {
	edit: {
		enable: true,
		showRemoveBtn: true,
		removeTitle: setRemoveTitle
	}
};
......</code></pre>
</div>
</div>
