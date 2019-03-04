<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(newName)</span><span class="path">zTreeObj.</span>cancelEditName</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.exedit</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Cancel the edit name status. Can restore the original name, and can also force assigned to a new name.</p>
			<p class="highlight_red">Please use zTree object to executing the method.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>newName</b><span>String</span></h4>
	<p>Re given a new name</p>
	<p class="highlight_red">If this parameter is omitted, then restore the original name.</p>
	<h4 class="topLine"><b>Return </b><span>none</span></h4>
	<p>no return value</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. Cancel edit name, and restore the original name.</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
treeObj.cancelEditName();
</code></pre>
	<h4>2. Cancel edit name , and set the new name.</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
treeObj.cancelEditName("test_new_name");
</code></pre>
</div>
</div>
