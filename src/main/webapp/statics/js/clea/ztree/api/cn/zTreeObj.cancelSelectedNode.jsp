<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeNode)</span><span class="path">zTreeObj.</span>cancelSelectedNode</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>取消节点的选中状态。</p>
			<p class="highlight_red">v3.x 支持多点同时选中，因此取消选中状态可以全部取消，也可以单独取消某个节点的选中状态。</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeNode</b><span>JSON</span></h4>
	<p>需要取消选中状态的节点。</p>
	<p class="highlight_red">请务必保证此节点数据对象 是 zTree 内部的数据对象</p>
	<p class="highlight_red">如果省略此参数，则将取消全部被选中节点的选中状态。</p>
	<h4 class="topLine"><b>返回值</b><span>无</span></h4>
	<p>目前无任何返回值</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 取消当前所有被选中节点的选中状态</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
treeObj.cancelSelectedNode();
</code></pre>
	<h4>2. 取消当前第一个被选中节点的选中状态</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getSelectedNodes();
if (nodes.length>0) { 
	treeObj.cancelSelectedNode(nodes[0]);
}
</code></pre>
</div>
</div>
