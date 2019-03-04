<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">treeNode.</span>checkedOld</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.excheck</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>The checked status about node's checkbox or radio when zTree was initialized. It is valid when <span class="highlight_red">[setting.check.enable = true & treeNode.nocheck = false]</span></p>
			<p class="highlight_red">1. Do not initialize it, it will be initialized when the node is initialized.</p>
			<p class="highlight_red">2. If you need to achieve special features, you can use the zTreeObj.getChangeCheckedNodes method and modify the value of 'checkedOld' attribute.</p>
			<p>Default: the value of 'checked' attribute when zTree is initialized</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p>true means: the checkbox or radio is checked when zTree is initialized.</p>
	<p>false means: the checkbox or radio is not checked when zTree is initialized.</p>
	</div>
	<h3>Examples of treeNode</h3>
	<h4>1. Get the original checked status of the first root node</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var checkedOld = treeObj.getNodes()[0].checkedOld;
</code></pre>
</div>
</div>
