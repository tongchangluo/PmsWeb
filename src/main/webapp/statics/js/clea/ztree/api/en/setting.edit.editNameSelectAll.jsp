<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.edit.</span>editNameSelectAll</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.exedit</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>When edit node's name, the text in input is selected or unselected. It is valid when <span class="highlight_red">[setting.edit.enable = true]</span></p>
			<p>Default: false</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p> true means: when show the input, the text in input is selected</p>
	<p> false means: when show the input, the text in input is not selected</p>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. When edit node's name, the text in input is selected.</h4>
	<pre xmlns=""><code>var setting = {
	edit: {
		enable: true,
		editNameSelectAll: true
	}
};
......</code></pre>
</div>
</div>
