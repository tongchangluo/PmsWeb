<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(event, treeId, treeNode)</span><span class="path">setting.callback.</span>onCollapse</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>用于捕获节点被折叠的事件回调函数</p>
			<p class="highlight_red">如果设置了 setting.callback.beforeCollapse 方法，且返回 false，将无法触发 onCollapse 事件回调函数。</p>
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
	<p>被折叠的节点 JSON 数据对象</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 每次折叠节点后， 弹出该节点的 tId、name 的信息</h4>
	<pre xmlns=""><code>function zTreeOnCollapse(event, treeId, treeNode) {
    alert(treeNode.tId + ", " + treeNode.name);
};
var setting = {
	callback: {
		onCollapse: zTreeOnCollapse
	}
};
......</code></pre>
</div>
</div>
