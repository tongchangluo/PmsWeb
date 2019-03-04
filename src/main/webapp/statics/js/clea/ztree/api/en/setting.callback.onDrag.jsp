<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(event, treeId, treeNodes)</span><span class="path">setting.callback.</span>onDrag</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.exedit</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Used to capture the drag event when drag node.</p>
			<p class="highlight_red">If you set 'setting.callback.beforeDrag',and return false, zTree will stop drag, and will not trigger the 'onDragMove' & 'onDrag' callback.</p>
			<p>Default: null</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>event</b><span>js event Object</span></h4>
	<p>event Object</p>
	<h4 class="topLine"><b>treeId</b><span>String</span></h4>
	<p>zTree unique identifier: <b class="highlight_red">treeId</b>, the id of the containing tree.</p>
	<h4 class="topLine"><b>treeNodes</b><span>Array(JSON)</span></h4>
	<p>A collection of the nodes which will be dragged</p>
	</div>
	<h3>Examples of setting & function</h3>
	<h4>1. When drag nodes, alert the number of dragged nodes.</h4>
	<pre xmlns=""><code>function myOnDrag(event, treeId, treeNodes) {
    alert(treeNodes.length);
};
var setting = {
	callback: {
		onDrag: myOnDrag
	}
};
......</code></pre>
</div>
</div>
