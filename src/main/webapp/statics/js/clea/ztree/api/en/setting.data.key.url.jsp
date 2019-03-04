<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.data.key.</span>url</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>The node data's attribute to save the node link's url.</p>
			<p class="highlight_red">Special: If the nodes's data can only use the 'url' attribute, and don't use the link to jump feature, you can modify this attribute to any nonexistent attribute.</p>
			<p>Default: "url"</p>
		</div>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. Set the 'xUrl' attribute to save the node link's url.</h4>
	<pre xmlns=""><code>var setting = {
	data: {
		key: {
			url: "xUrl"
		}
	}
};
......</code></pre>
</div>
</div>
