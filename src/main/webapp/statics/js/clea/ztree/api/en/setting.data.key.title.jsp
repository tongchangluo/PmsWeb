<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.data.key.</span>title</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>The node data's attribute to save the 'title' attribute of node DOM. It is valid when <span class="highlight_red">[setting.view.showTitle = true]</span></p>
			<p class="highlight_red">If set it to "", the title of node DOM will be same as 'setting.data.key.name' attribute.</p>
			<p>Default: ""</p>
		</div>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. Set the 'fullName' attribute to save the title of node DOM.</h4>
	<pre xmlns=""><code>var setting = {
	data: {
		key: {
			title: "fullName"
		}
	}
};
......</code></pre>
</div>
</div>
