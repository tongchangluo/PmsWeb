<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeId, treeNode)</span><span class="path">setting.callback.</span>beforeAsync</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>用于捕获异步加载之前的事件回调函数，zTree 根据返回值确定是否允许进行异步加载</p>
			<p>默认值：null</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>对应 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>进行异步加载的父节点 JSON 数据对象</p>
	<p class="highlight_red">针对根进行异步加载时，treeNode = null</p>
	<h4 class="topLine"><b>返回值</b><span>Boolean</span></h4>
	<p>返回值是 true / false</p>
	<p class="highlight_red">如果返回 false，zTree 将不进行异步加载，也无法触发 onAsyncSuccess / onAsyncError 事件回调函数</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 禁止 id 为 1 的父节点进行异步加载操作</h4>
	<pre xmlns=""><code>function zTreeBeforeAsync(treeId, treeNode) {
    return (treeNode.id !== 1);
};
var setting = {
	callback: {
		beforeAsync: zTreeBeforeAsync
	}
};
......</code></pre>
</div>
</div>
