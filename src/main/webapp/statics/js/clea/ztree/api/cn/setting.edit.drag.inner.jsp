<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean / Function(treeId, treeNodes, targetNode)</span><span class="path">setting.edit.drag.</span>inner</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.exedit</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>拖拽到目标节点时，设置是否允许成为目标节点的子节点。<span class="highlight_red">[setting.edit.enable = true 时生效]</span></p>
			<p class="highlight_red">拖拽目标是 根 的时候，不触发 prev 和 next，只会触发 inner</p>
			<p class="highlight_red">此功能主要作用是对拖拽进行适当限制（辅助箭头），需要结合 prev、next 一起使用，才能实现完整功能。</p>
			<p>默认值：true</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true / false 分别表示 允许 / 不允许 成为目标节点的子节点</p>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>对应 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控（多棵树拖拽时，是目标节点所在树的 treeId）</p>
	<h4 class="topLine"><b>treeNodes</b><span>Array(JSON)</span></h4>
	<p>被拖拽的节点 JSON 数据集合</p>
	<h4 class="topLine"><b>targetNode</b><span>JSON</span></h4>
	<p>拖拽时的目标节点 JSON 数据对象</p>
	<p class="highlight_red">如果拖拽的节点要成为根节点，则 targetNode = null</p>
	<h4 class="topLine"><b>返回值</b><span>Boolean</span></h4>
	<p>返回值同 Boolean 格式的数据</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 禁止拖拽成为目标节点的子节点</h4>
	<pre xmlns=""><code>var setting = {
	edit: {
		enable: true,
		drag: {
			prev: true,
			next: true,
			inner: false
		}
	}
};
......</code></pre>
	<h4>2. 禁止拖拽成为根节点的子节点</h4>
	<pre xmlns=""><code>function canInner(treeId, nodes, targetNode) {
	return !(targetNode && targetNode.level === 0);
}
var setting = {
	edit: {
		enable: true,
		drag: {
			prev: true,
			next: true,
			inner: canInner
		}
	}
};
......</code></pre>
</div>
</div>
