<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(parentNode, reloadType, isSilent)</span><span class="path">zTreeObj.</span>reAsyncChildNodes</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>强行异步加载父节点的子节点。<span class="highlight_red">[setting.async.enable = true 时有效]</span></p>
			<p class="highlight_red">已经加载过的父节点可反复使用此方法重新加载。</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>parentNode</b><span>JSON</span></h4>
	<p>指定需要异步加载的父节点 JSON 数据</p>
	<p class="highlight_red">1、parentNode = null 时，相当于从根节点 Root 进行异步加载</p>
	<p class="highlight_red">2、parentNode.isParent = false 时，不进行异步加载</p>
	<p class="highlight_red">3、请务必保证此节点数据对象 是 zTree 内部的数据对象</p>
	<h4 class="topLine"><b>reloadType</b><span>String</span></h4>
	<p>reloadType = "refresh" 表示清空后重新加载。</p>
	<p>reloadType != "refresh" 时，表示追加子节点处理。</p>
	<h4 class="topLine"><b>isSilent</b><span>Boolean</span></h4>
	<p>设定异步加载后是否自动展开父节点。</p>
	<p>isSilent = true 时，不展开父节点，其他值或缺省状态都自动展开。</p>
	<h4 class="topLine"><b>返回值</b><span>无</span></h4>
	<p>目前无任何返回值</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 重新异步加载 zTree </h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
treeObj.reAsyncChildNodes(null, "refresh");
</code></pre>
	<h4>2. 重新异步加载当前选中的第一个节点</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getSelectedNodes();
if (nodes.length>0) {
	treeObj.reAsyncChildNodes(nodes[0], "refresh");
}
</code></pre>
</div>
</div>
