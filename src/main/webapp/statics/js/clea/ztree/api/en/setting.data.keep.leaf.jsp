<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.data.keep.</span>leaf</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>The leaf node's lock, the leaf node will lock the 'isParent' attribute to false.</p>
			<p>Default: false</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p> true means: lock the leaf node, and <span class="highlight_red">the node which 'isParent' attribute is false can't add child nodes</span>.</p>
	<p> false means: don't lock the leaf node, and <span class="highlight_red">the node which 'isParent' attribute is false can add child nodes</span>.</p>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. lock the leaf node</h4>
	<pre xmlns=""><code>var setting = {
	data: {
		keep: {
			leaf: true
		}
	}
};
......</code></pre>
</div>
</div>
