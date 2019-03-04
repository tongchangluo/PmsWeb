<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(event, treeId, treeNode)</span><span class="path">setting.callback.</span>onMouseUp</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Callback for mouse up.</p>
			<p class="highlight_red">If you set 'setting.callback.beforeMouseUp',and return false, zTree will not trigger the 'onMouseUp' callback.</p>
			<p>Default: null</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>event</b><span>js event Object</span></h4>
	<p>event Object</p>
	<h4 class="topLine"><b>treeId</b><span>String</span></h4>
	<p>zTree unique identifier: <b class="highlight_red">treeId</b>.</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>JSON data object of the node which mouse over</p>
	<p class="highlight_red">If the DOM which mouse over isn't a node, it will return null.</p>
	</div>
	<h3>Examples of setting & function</h3>
	<h4>1. When mouse up, alert info about 'tId' and 'name'.</h4>
	<pre xmlns=""><code>function myOnMouseUp(event, treeId, treeNode) {
    alert(treeNode ? treeNode.tId + ", " + treeNode.name : "isRoot");
};
var setting = {
	callback: {
		onMouseUp: myOnMouseUp
	}
};
......</code></pre>
</div>
</div>
