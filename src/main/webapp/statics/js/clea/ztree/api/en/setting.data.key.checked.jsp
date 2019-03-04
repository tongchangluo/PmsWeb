<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.data.key.</span>checked</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.excheck</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>The node data's attribute to save the checked state.</p>
			<p>Default: "checked"</p>
			<p class="highlight_red">Please don't set the other node attribute which zTree used. (e.g., checkedOld)</p>
		</div>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. set the 'isChecked' attribute to save the checked state.</h4>
	<pre xmlns=""><code>var setting = {
	data: {
		key: {
			checked: "isChecked"
		}
	}
};
......</code></pre>
</div>
</div>
