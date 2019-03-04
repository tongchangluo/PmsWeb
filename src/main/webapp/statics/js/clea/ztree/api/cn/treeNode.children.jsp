<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Array(JSON)</span><span class="path">treeNode.</span>children</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>节点的子节点数据集合。</p>
			<p class="highlight_red">1、如果不使用 children 属性保存子节点数据，请修改 setting.data.key.children </p>
			<p class="highlight_red">2、异步加载时，对于设置了 isParent = true 的节点，在展开时将进行异步加载</p>
			<p>默认值：无</p>
		</div>
	</div>
	<h3>Array(JSON) 格式说明</h3>
	<div class="desc">
	<p>标准的 JSON 数据对象</p>
	</div>
	<h3>treeNode 举例</h3>
	<h4>1. 初始化的标准嵌套格式的 JSON 数据对象</h4>
	<pre xmlns=""><code>var nodes = [
{ "id":1, "name":"test1",
	children: [
	{ "id":3, "name":"test3"},
	{ "id":4, "name":"test4"},
	{ "id":5, "name":"test5"}
	]
},
{ "id":2, "name":"test2"  }
]</code></pre>
	<h4>2. 获取第一个根节点的子节点</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getNodes()[0].children;
</code></pre>
</div>
</div>
