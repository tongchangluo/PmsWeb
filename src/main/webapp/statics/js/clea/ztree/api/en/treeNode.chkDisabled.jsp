<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">treeNode.</span>chkDisabled</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.excheck</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>1. Set node's checkbox / radio to disabled. It is valid when <span class="highlight_red">[setting.check.enable = true]</span></p>
			<p class="highlight_red">2. zTree support identification string 'true' & 'false'.</p>
			<p class="highlight_red">3. Please don't change this attribute of the nodes which have been created. If you want to disable or undisable the nodes, please use 'setChkDisabled()' methods.</p>
			<p class="highlight_red">4. When zTree initialize the nodes, if you need to the child nodes automatically inherit the 'chkDisabled' attribute, please see 'setting.check.chkDisabledInherit'.</p>
			<p>Default: false</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p class="highlight_red">true means: this node's checkbox / radio is disabled.</p>
	<p class="highlight_red">false means: this node's checkbox / radio is able.</p>
	</div>
	<h3>Examples of treeNode</h3>
	<h4>1. disable some node's checkbox / radio </h4>
	<pre xmlns=""><code>var nodes = [
	{ "id":1, "name":"test1", "checked":true, "chkDisabled":true},
	{ "id":2, "name":"test2", "chkDisabled":true},
	{ "id":3, "name":"test3"}
]</code></pre>
</div>
</div>
