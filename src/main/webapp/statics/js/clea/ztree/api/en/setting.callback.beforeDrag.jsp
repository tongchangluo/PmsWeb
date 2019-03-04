<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeId, treeNodes)</span><span class="path">setting.callback.</span>beforeDrag</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.exedit</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Specify callback function to be called before the drag node callback, The return value controls whether the drag node callback will execute.</p>
			<p>Default: null</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>zTree unique identifier: <b class="highlight_red">treeId</b>, the id of the containing tree.</p>
	<h4 class="topLine"><b>treeNodes</b><span>Array(JSON)</span></h4>
	<p>A collection of the nodes being dragged</p>
	<p class="highlight_red">v3.x allows the drag and drop of multiple sibling nodes, so this parameter's type is changed to Array(JSON).</p>
	<p class="highlight_red">If the selected nodes aren't sibling nodes, you can only drag one node.</p>
	<h4 class="topLine"><b>Return </b><span>Boolean</span></h4>
	<p>return true or false</p>
	<p class="highlight_red">If return false, zTree will abort the drag and drop, and will not trigger the 'onDrag / beforeDrop / onDrop' sequence of callbacks.</p>
	</div>
	<h3>Examples of setting & function</h3>
	<h4>1. disable drag completely (by returning false)</h4>
	<pre xmlns=""><code>function myBeforeDrag(treeId, treeNodes) {
    return false;
};
var setting = {
	edit: {
		enable: true
	},
	callback: {
		beforeDrag: myBeforeDrag
	}
};
......</code></pre>
</div>
</div>
