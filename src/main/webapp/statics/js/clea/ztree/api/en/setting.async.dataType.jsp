<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.async.</span>dataType</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>The data type of Ajax requests. It is valid when <span class="highlight_red">[setting.async.enable = true]</span></p>
			<p>Default："text"</p>
		</div>
	</div>
	<h3>String Format</h3>
	<div class="desc">
	<p> dataType = "text", There is probably no need to change this.</p>
	<p class="highlight_red">The 'dataType' in zTree and jQuery's ajax requests is same.</p>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. Set the dataType which ajax retrieves to "text".</h4>
	<pre xmlns=""><code>var setting = {
	async: {
		enable: true,
		dataType: "text",
		url: "http://host/getNode.php",
		autoParam: ["id", "name"]
	}
};
......</code></pre>
</div>
</div>
