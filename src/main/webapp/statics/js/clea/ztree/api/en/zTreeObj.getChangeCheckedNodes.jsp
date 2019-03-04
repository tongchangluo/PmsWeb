<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function()</span><span class="path">zTreeObj.</span>getChangeCheckedNodes</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.excheck</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Get the collection of nodes which be changed checked status. (Compared with the original data checkedOld) It is valid when <span class="highlight_red">[setting.check.enable = true]</span></p>
			<p class="highlight_red">Please use zTree object to executing the method.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>Return </b><span>Array(JSON)</span></h4>
	<p>return the collection of nodes which be changed checked status (Array)</p>
	<p class="highlight_red">If you need to get the collection of nodes which changed the checked status, when nodes be checked or unchecked, so please set treeNode.checkedOld = treeNode.checked ( for all of the be changed checked status nodes ).</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. Get the collection of nodes which be changed checked status</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getChangeCheckedNodes();
</code></pre>
</div>
</div>
