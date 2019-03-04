<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">treeNode.</span>isParent</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>记录 treeNode 节点是否为父节点。</p>
			<p class="highlight_red">1、初始化节点数据时，根据 treeNode.children 属性判断，有子节点则设置为 true，否则为 false</p>
			<p class="highlight_red">2、初始化节点数据时，如果设定 treeNode.isParent = true，即使无子节点数据，也会设置为父节点</p>
			<p class="highlight_red">3、为了解决部分朋友生成 json 数据出现的兼容问题, 支持 "false","true" 字符串格式的数据</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true 表示是父节点</p>
	<p> false 表示不是父节点</p>
	</div>
	<h3>treeNode 举例</h3>
	<h4>1. 查看当前被选中的节点是否是父节点</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var sNodes = treeObj.getSelectedNodes();
if (sNodes.length > 0) {
	var isParent = sNodes[0].isParent;
}
</code></pre>
</div>
</div>
