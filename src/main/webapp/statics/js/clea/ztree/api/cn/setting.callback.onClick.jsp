<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(event, treeId, treeNode, clickFlag)</span><span class="path">setting.callback.</span>onClick</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>用于捕获节点被点击的事件回调函数</p>
			<p class="highlight_red">如果设置了 setting.callback.beforeClick 方法，且返回 false，将无法触发 onClick 事件回调函数。</p>
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
	<p>被点击的节点 JSON 数据对象</p>
	<h4 class="topLine"><b>clickFlag</b><span>Number</span></h4>
	<p>节点被点击后的选中操作类型，详细看下表</p>
	<table width="100%" border="0" cellspacing="1" cellpadding="0">
		<thead><tr><td>clickFlag</td><td title="是否允许多点选中">selectedMulti</td><td title="是否按下 Ctrl 或 Cmd 键">autoCancelSelected<br/>&&<br/>event.ctrlKey / metaKey</td><td title="节点当前选择状态">isSelected</td><td>选中操作</td></tr></thead>
		<tbody>
			<tr><td>1</td><td>true</td><td>false</td><td>false</td><td>普通选中</td></tr>
			<tr><td>1</td><td>true</td><td>false</td><td>true</td><td>普通选中</td></tr>
			<tr><td>2</td><td>true</td><td>true</td><td>false</td><td>追加选中</td></tr>
			<tr><td>0</td><td>true</td><td>true</td><td>true</td><td>取消选中</td></tr>
			<tr><td>1</td><td>false</td><td>false</td><td>false</td><td>普通选中</td></tr>
			<tr><td>1</td><td>false</td><td>false</td><td>true</td><td>普通选中</td></tr>
			<tr><td>1</td><td>false</td><td>true</td><td>false</td><td>普通选中</td></tr>
			<tr><td>0</td><td>false</td><td>true</td><td>true</td><td>取消选中</td></tr>
		</tbody>
	</table>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 每次点击节点后， 弹出该节点的 tId、name 的信息</h4>
	<pre xmlns=""><code>function zTreeOnClick(event, treeId, treeNode) {
    alert(treeNode.tId + ", " + treeNode.name);
};
var setting = {
	callback: {
		onClick: zTreeOnClick
	}
};
......</code></pre>
</div>
</div>
