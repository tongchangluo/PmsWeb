<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.check.</span>nocheckInherit</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.excheck</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>When the parent node's 'nocheck' attribute is true, set the child nodes automatically inherit the 'nocheck' attribute. It is valid when <span class="highlight_red">[setting.check.enable = true]</span></p>
			<p class="highlight_red">1. Only be used to initialize the nodes, easy batch operations. Please use the 'updateNode' method modify existing node.</p>
			<p>Default: false</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p> true means: When add new child nodes, if parent node's 'nocheck' attribute is true, the child nodes automatically inherit the 'nocheck' attribute.</p>
	<p> false means: When add new child nodes, the child nodes don't inherit the 'nocheck' attribute from parent node.</p>
	</div>
	<h3>Examples of setting</h3>
	<h4>1.  When add new child nodes, the child nodes automatically inherit the 'nocheck' attribute from parent node.</h4>
	<pre xmlns=""><code>var setting = {
	check: {
		enable: true,
		nocheckInherit: true
	}
};
......</code></pre>
</div>
</div>
