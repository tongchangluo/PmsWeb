<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">treeNode.</span>name</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>The node's name</p>
			<p class="highlight_red">1. If you want to change 'name' attribute, please modify the 'setting.data.key.name' attribute.</p>
			<p>Default: undenfined</p>
		</div>
	</div>
	<h3>String Format</h3>
	<div class="desc">
	<p>String object. The HTML special characters are escaped</p>
	</div>
	<h3>Examples of treeNode</h3>
	<h4>1. Set node's name to 'test1', 'test2', 'test3'</h4>
	<pre xmlns=""><code>var nodes = [
	{ "id":1, "name":"test1"},
	{ "id":2, "name":"test2"},
	{ "id":3, "name":"test3"}
]</code></pre>
</div>
</div>
