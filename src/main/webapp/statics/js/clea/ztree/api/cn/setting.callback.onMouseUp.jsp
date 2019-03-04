<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(event, treeId, treeNode)</span><span class="path">setting.callback.</span>onMouseUp</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>用于捕获 zTree 上鼠标按键松开后的事件回调函数</p>
			<p class="highlight_red">如果设置了 setting.callback.beforeMouseUp 方法，且返回 false，将无法触发 onMouseUp 事件回调函数。</p>
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
	<p>鼠标按键松开时所在节点的 JSON 数据对象</p>
	<p class="highlight_red">如果不在节点上，则返回 null</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 每次鼠标按键松开后， 弹出鼠标所在节点的 tId、name 的信息</h4>
	<pre xmlns=""><code>function zTreeOnMouseUp(event, treeId, treeNode) {
    alert(treeNode ? treeNode.tId + ", " + treeNode.name : "isRoot");
};
var setting = {
	callback: {
		onMouseUp: zTreeOnMouseUp
	}
};
......</code></pre>
</div>
</div>
