<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">treeNode.</span>name</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>节点名称。</p>
			<p class="highlight_red">1、如果不使用 name 属性保存节点名称，请修改 setting.data.key.name </p>
			<p>默认值：无</p>
		</div>
	</div>
	<h3>String 格式说明</h3>
	<div class="desc">
	<p>节点显示的名称字符串，标准 String 即可，所有特殊字符都会被自动转义</p>
	</div>
	<h3>treeNode 举例</h3>
	<h4>1. 设置节点的名称为 test1、test2、test3</h4>
	<pre xmlns=""><code>var nodes = [
	{ "id":1, "name":"test1"},
	{ "id":2, "name":"test2"},
	{ "id":3, "name":"test3"}
]</code></pre>
</div>
</div>
