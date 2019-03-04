<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Array(String)</span><span class="path">setting.async.</span>autoParam</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>During asynchronous loading, a request is sent to the server, which contains the identify of the parent node, 
                            so it can retrieve the children.
                            This attribute is an array of strings, which is the identity parameter (or parameters).
                            It applies when <span class="highlight_red">[setting.async.enable = true]</span></p>
			<p>Default：[ ]</p>
		</div>
	</div>
	<h3>Array(String) Format</h3>
	<div class="desc">
	<p>1. Put the attribute name(s) of node to the array. For example: ["id", "name"]</p>
	<p>2. You can rename the parameter name as sent to the server. For example: server only accepts "zId" -- ["id=zId"]</p>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. set auto commit 'id' attribute</h4>
	<pre xmlns=""><code>var setting = {
	async: {
		enable: true,
		url: "http://host/getNode.php",
		autoParam: ["id"]
	}
};
If we have a parent node: {id:1, name:"test"}, When we are asynchronously loading this parent node's children, it will be submitted to the server with parameters: id=1
......</code></pre>
	<h4>2. set auto commit 'id' attribute, but the parameter name expected by the server is 'zId'</h4>
	<pre xmlns=""><code>var setting = {
	async: {
		enable: true,
		url: "http://host/getNode.php",
		autoParam: ["id=zId"]
	}
};
If we have a parent node: {id:1, name:"test"}, When we are asynchronously loading this parent node's children, it will be submitted to the server with parameters: zId=1
......</code></pre>
</div>
</div>
