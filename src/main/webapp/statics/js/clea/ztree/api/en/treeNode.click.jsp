<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">treeNode.</span>click</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Simple click event operations. As same as : (onclick ="...") the code. If the operation is more complex, please use the onClick callback.</p>
			<p class="highlight_red">Because IE is different to other browsers in operating the event of ‘onclick’ and ‘click’ coexistence, please do not use this parameter to control whether to allow the redirection operation (for example: treeNode.click = "return false;"). If there is similar requirements, please do not use the 'url' attribute to save the website address, but use the 'onClick' callback to control jumps.</p>
			<p>Default: undefined</p>
		</div>
	</div>
	<h3>String Format</h3>
	<div class="desc">
	<p>Standard javascript syntax, for example: alert ("test"); etc.</p>
	</div>
	<h3>Examples of treeNode</h3>
	<h4>1. When click this node, will alert msg.</h4>
	<pre xmlns=""><code>var nodes = [
	{ "id":1, "name":"Google CN", "url":"http://g.cn", "click":"alert('test');"},
	......
]</code></pre>
</div>
</div>
