<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.edit.drag.</span>autoExpandTrigger</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.exedit</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>When drag node cause the parent node is automatically expanded, set whether to allow to trigger the 'onExpand' callback. It is valid when <span class="highlight_red">[setting.edit.enable = true]</span></p>
			<p>Default: false</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p> true means: trigger the 'onExpand' callback.</p>
	<p> false means: don't trigger the 'onExpand' callback.</p>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. Set to allow to trigger the 'onExpand' callback</h4>
	<pre xmlns=""><code>var setting = {
	edit: {
		enable: true,
		drag: {
			autoExpandTrigger: true
		}
	}
};
......</code></pre>
</div>
</div>
