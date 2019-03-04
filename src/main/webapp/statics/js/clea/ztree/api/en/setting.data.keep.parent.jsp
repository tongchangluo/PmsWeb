<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.data.keep.</span>parent</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>The parent node's lock, the parent node will lock 'isParent' attribute to true.</p>
			<p>Default: false</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p> true means: lock the parent node, and <span class="highlight_red">if remove all of the parent node's child nodes, its 'isParent' attribute still keep to be true.</span>.</p>
	<p> false means: don't lock the parent node, and <span class="highlight_red">if remove all of the parent node's child nodes, its 'isParent' attribute will change to be false.</span>.</p>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. lock the parent node</h4>
	<pre xmlns=""><code>var setting = {
	data: {
		keep: {
			parent: true
		}
	}
};
......</code></pre>
</div>
</div>
