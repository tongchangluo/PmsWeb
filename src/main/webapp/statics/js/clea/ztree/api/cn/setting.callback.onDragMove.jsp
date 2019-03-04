<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(event, treeId, treeNodes)</span><span class="path">setting.callback.</span>onDragMove</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.exedit</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>用于捕获节点被拖拽过程中移动的事件回调函数</p>
			<p class="highlight_red">主要用于捕获 zTree 节点拖拽到的 DOM，从而操作对应的 DOM。</p>
			<p>默认值：null</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>event</b><span>js event 对象</span></h4>
	<p>标准的 js event 对象</p>
	<h4 class="topLine"><b>treeId</b><span>String</span></h4>
	<p>被拖拽的节点 treeNodes 所在 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控</p>
	<h4 class="topLine"><b>treeNodes</b><span>Array(JSON)</span></h4>
	<p>要被拖拽的节点 JSON 数据集合</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 拖拽节点时，随时输出 当前拖拽到的目标 DOM</h4>
	<pre xmlns=""><code>function zTreeOnDragMove(event, treeId, treeNodes) {
    console.log(event.target);
};
var setting = {
	callback: {
		onDragMove: zTreeOnDragMove
	}
};
......</code></pre>
</div>
</div>
