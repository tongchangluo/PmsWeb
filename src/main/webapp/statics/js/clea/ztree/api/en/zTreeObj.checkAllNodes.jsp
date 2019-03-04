<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(checked)</span><span class="path">zTreeObj.</span>checkAllNodes</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.excheck</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Check or unCheck all nodes which have been initialized. It is valid when <span class="highlight_red">[setting.check.enable = true & setting.check.chkStyle = "checkbox"]</span></p>
			<p class="highlight_red">This method does not trigger 'beforeCheck' or 'onCheck' callback function.</p>
			<p class="highlight_red">Please use zTree object to executing the method.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>checked</b><span>Boolean</span></h4>
	<p>checked = true means: check all nodes.</p>
	<p>checked = false means: uncheck all nodes.</p>
	<p class="highlight_red">Don't affect the node which 'nochecked' attribute is true.</p>
	<p class="highlight_red">Don't affect the node is not loaded.</p>
	<h4 class="topLine"><b>Return </b><span>none</span></h4>
	<p>no return value</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. check all nodes</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
treeObj.checkAllNodes(true);
</code></pre>
</div>
</div>
