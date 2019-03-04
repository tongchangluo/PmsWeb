<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.async.</span>type</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Http request tyoe in ajax. It is valid when <span class="highlight_red">[setting.async.enable = true]</span></p>
			<p>Default: "post"</p>
		</div>
	</div>
	<h3>String Format</h3>
	<div class="desc">
	<p> "post" - http request mode</p>
	<p> "get" - http request mode</p>
	<p class="highlight_red">Both zTree and jQuery's this 'type' for ajax requests.</p>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. Set http request mode is 'get'</h4>
	<pre xmlns=""><code>var setting = {
	async: {
		enable: true,
		type: "get",
		url: "http://host/getNode.php",
		autoParam: ["id", "name"]
	}
};
......</code></pre>
</div>
</div>
