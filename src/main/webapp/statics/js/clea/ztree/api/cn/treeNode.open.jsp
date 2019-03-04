<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">treeNode.</span>open</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>记录 treeNode 节点的 展开 / 折叠 状态。</p>
			<p class="highlight_red">1、初始化节点数据时，如果设定 treeNode.open = true，则会直接展开此节点</p>
			<p class="highlight_red">2、叶子节点 treeNode.open = false</p>
			<p class="highlight_red">3、为了解决部分朋友生成 json 数据出现的兼容问题, 支持 "false","true" 字符串格式的数据</p>
			<p class="highlight_red">4、非异步加载模式下，无子节点的父节点设置 open=true 后，可显示为展开状态，但异步加载模式下不会生效。（v3.5.15+） </p>
			<p>默认值：false</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true 表示节点为 展开 状态</p>
	<p> false 表示节点为 折叠 状态</p>
	</div>
	<h3>treeNode 举例</h3>
	<h4>1. 查看当前被选中的节点的 展开 / 折叠 状态</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var sNodes = treeObj.getSelectedNodes();
if (sNodes.length > 0) {
	var isOpen = sNodes[0].open;
}
</code></pre>
</div>
</div>
