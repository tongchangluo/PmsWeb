<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span class="path">setting.callback.</span>onAsyncError</h2>
	<h2><span>Function(event, treeId, treeNode, XMLHttpRequest, textStatus, errorThrown)</span>&nbsp;</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Used to capture the error event when execute ajax.</p>
			<p class="highlight_red">If you set 'setting.callback.beforeAsync',and return false, zTree will not execute ajax, and will not trigger the 'onAsyncSuccess / onAsyncError' callback.</p>
			<p>Default: null</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>event</b><span>js event Object</span></h4>
	<p>event Object</p>
	<h4 class="topLine"><b>treeId</b><span>String</span></h4>
	<p>zTree unique identifier: <b class="highlight_red">treeId</b>.</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>JSON data object of the parent node</p>
	<p class="highlight_red">When load root nodes, treeNode = null</p>
	<h4 class="topLine"><b>XMLHttpRequest</b><span>String</span></h4>
	<p>XMLHttpRequest Object, please refer to JQuery API documentation.</p>
	<h4 class="topLine"><b>textStatus</b><span>String</span></h4>
	<p>a string categorizing the status of the request("success", "error"...), please refer to JQuery API documentation.</p>
	<h4 class="topLine"><b>errorThrown</b><span>String</span></h4>
	<p>eWhen an HTTP error occurs, errorThrown receives the textual portion of the HTTP status, please refer to JQuery API documentation.</p>
	</div>
	<h3>Examples of setting & function</h3>
	<h4>1. When execute ajax make error, alert message.</h4>
	<pre xmlns=""><code>function myOnAsyncError(event, treeId, treeNode, XMLHttpRequest, textStatus, errorThrown) {
    alert(XMLHttpRequest);
};
var setting = {
	callback: {
		onAsyncError: myOnAsyncError
	}
};
......</code></pre>
</div>
</div>
