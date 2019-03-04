<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeId, treeNodes, targetNode, moveType, isCopy)</span><span class="path">setting.callback.</span>beforeDrop</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.exedit</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>用于捕获节点拖拽操作结束之前的事件回调函数，并且根据返回值确定是否允许此拖拽操作</p>
			<p>默认值：null</p>
			<p class="highlight_red">如未拖拽到有效位置，则不触发此回调函数，直接将节点恢复原位置</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>目标节点 targetNode 所在 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控</p>
	<h4 class="topLine"><b>treeNodes</b><span>Array(JSON)</span></h4>
	<p>被拖拽的节点 JSON 数据集合</p>
	<p class="highlight_red">无论拖拽操作为 复制 还是 移动，treeNodes 都是当前被拖拽节点的数据集合。</p>
	<h4 class="topLine"><b>targetNode</b><span>JSON</span></h4>
	<p>treeNodes 被拖拽放开的目标节点 JSON 数据对象。</p>
	<p class="highlight_red">如果拖拽成为根节点，则 targetNode = null</p>
	<h4 class="topLine"><b>moveType</b><span>String</span></h4>
	<p>指定移动到目标节点的相对位置</p>
	<p class="highlight_red">"inner"：成为子节点，"prev"：成为同级前一个节点，"next"：成为同级后一个节点</p>
	<h4 class="topLine"><b>isCopy</b><span>Boolean</span></h4>
	<p>拖拽节点操作是 复制 或 移动</p>
	<p class="highlight_red">true：复制；false：移动</p>
	<h4 class="topLine"><b>返回值</b><span>Boolean</span></h4>
	<p>返回值是 true / false</p>
	<p class="highlight_red">如果返回 false，zTree 将恢复被拖拽的节点，也无法触发 onDrop 事件回调函数</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 禁止将节点拖拽成为根节点</h4>
	<pre xmlns=""><code>function zTreeBeforeDrop(treeId, treeNodes, targetNode, moveType) {
    return !(targetNode == null || (moveType != "inner" && !targetNode.parentTId));
};
var setting = {
	edit: {
		enable: true
	},
	callback: {
		beforeDrop: zTreeBeforeDrop
	}
};
......</code></pre>
</div>
</div>
