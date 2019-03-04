<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(event, treeId, treeNode, msg)</span><span class="path">setting.callback.</span>onAsyncSuccess</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>用于捕获异步加载正常结束的事件回调函数</p>
			<p class="highlight_red">如果设置了 setting.callback.beforeAsync 方法，且返回 false，将无法触发 onAsyncSuccess / onAsyncError 事件回调函数。</p>
			<p>默认值：null</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>event</b><span>js event 对象</span></h4>
	<p>标准的 js event 对象</p>
	<h4 class="topLine"><b>treeId</b><span>String</span></h4>
	<p>对应 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>进行异步加载的父节点 JSON 数据对象</p>
	<p class="highlight_red">针对根进行异步加载时，treeNode = null</p>
	<h4 class="topLine"><b>msg</b><span>String / Object</span></h4>
	<p>异步获取的节点数据字符串，主要便于用户调试使用。</p>
	<p class="highlight_red">实际数据类型会受 setting.async.dataType 的设置影响，请参考 JQuery API 文档。</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 异步加载成功后，弹出提示信息</h4>
	<pre xmlns=""><code>function zTreeOnAsyncSuccess(event, treeId, treeNode, msg) {
    alert(msg);
};
var setting = {
	callback: {
		onAsyncSuccess: zTreeOnAsyncSuccess
	}
};
......</code></pre>
</div>
</div>
