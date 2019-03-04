<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">treeNode.</span>isLastNode</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>记录 treeNode 节点是否为同级节点中的最后一个节点。</p>
			<p class="highlight_red">使用 exhide 扩展后，只针对显示的节点设置此属性</p>
			<p class="highlight_red">初始化节点数据时，由 zTree 增加此属性，请勿提前赋值</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true 表示是同级节点中的最后一个节点</p>
	<p> false 表示不是同级节点中的最后一个节点</p>
	<p class="highlight_red">节点被隐藏后，isLastNode = false</p>
	</div>
	<h3>treeNode 举例</h3>
	<h4>1. 查看当前被选中的节点是否是同级节点中的最后一个节点</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var sNodes = treeObj.getSelectedNodes();
if (sNodes.length > 0) {
	var isLastNode = sNodes[0].isLastNode;
}
</code></pre>
</div>
</div>
