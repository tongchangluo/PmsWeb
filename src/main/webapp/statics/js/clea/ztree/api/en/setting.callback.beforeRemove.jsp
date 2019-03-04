<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeId, treeNode)</span><span class="path">setting.callback.</span>beforeRemove</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.exedit</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Specify callback function to be called before remove node, The return value controls the  allow to remove node.</p>
			<p>Default: null</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>zTree unique identifier: <b class="highlight_red">treeId</b>.</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>JSON data object of the node to be removed.</p>
	<h4 class="topLine"><b>Return </b><span>Boolean</span></h4>
	<p>return true or false</p>
	<p class="highlight_red">If return false, zTree will not remove node, and will not trigger the 'onRemove' callback.</p>
	</div>
	<h3>Examples of setting & function</h3>
	<h4>1. disable to remove node</h4>
	<pre xmlns=""><code>function myBeforeRemove(treeId, treeNode) {
	return false;
}
var setting = {
	edit: {
		enable: true
	},
	callback: {
		beforeRemove: myBeforeRemove
	}
};
......</code></pre>
</div>
</div>
