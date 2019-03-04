<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(event, treeId, treeNodes, targetNode, moveType, isCopy)</span><span class="path">setting.callback.</span>onDrop</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.exedit</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>用于捕获节点拖拽操作结束的事件回调函数</p>
			<p class="highlight_red">如果设置了 setting.callback.beforeDrop 方法，且返回 false，将无法触发 onDrop 事件回调函数。</p>
			<p>默认值：null</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>event</b><span>js event 对象</span></h4>
	<p>标准的 js event 对象</p>
	<h4 class="topLine"><b>treeId</b><span>String</span></h4>
	<p>目标节点 targetNode 所在 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控</p>
	<h4 class="topLine"><b>treeNodes</b><span>Array(JSON)</span></h4>
	<p>被拖拽的节点 JSON 数据集合</p>
	<p class="highlight_red">如果拖拽操作为 移动，treeNodes 是当前被拖拽节点的数据集合。</p>
	<p class="highlight_red">如果拖拽操作为 复制，treeNodes 是复制后 clone 得到的新节点数据。</p>
	<h4 class="topLine"><b>targetNode</b><span>JSON</span></h4>
	<p>成为 treeNodes 拖拽结束的目标节点 JSON 数据对象。</p>
	<p class="highlight_red">如果拖拽成为根节点，则 targetNode = null</p>
	<h4 class="topLine"><b>moveType</b><span>String</span></h4>
	<p>指定移动到目标节点的相对位置</p>
	<p class="highlight_red">"inner"：成为子节点，"prev"：成为同级前一个节点，"next"：成为同级后一个节点</p>
	<p class="highlight_red">如果 moveType = null，表明拖拽无效</p>
	<h4 class="topLine"><b>isCopy</b><span>Boolean</span></h4>
	<p>拖拽节点操作是 复制 或 移动</p>
	<p class="highlight_red">true：复制；false：移动</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 每次拖拽操作结束后， 弹出该被拖拽节点的个数以及目标节点的 tId、name 的信息</h4>
	<pre xmlns=""><code>function zTreeOnDrop(event, treeId, treeNodes, targetNode, moveType) {
    alert(treeNodes.length + "," + (targetNode ? (targetNode.tId + ", " + targetNode.name) : "isRoot" ));
};
var setting = {
	callback: {
		onDrop: zTreeOnDrop
	}
};
......</code></pre>
</div>
</div>
