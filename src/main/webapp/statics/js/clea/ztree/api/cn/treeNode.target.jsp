<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">treeNode.</span>target</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>设置点击节点后在何处打开 url。<span class="highlight_red">[treeNode.url 存在时有效]</span></p>
			<p>默认值：无</p>
		</div>
	</div>
	<h3>String 格式说明</h3>
	<div class="desc">
	<p>同超链接 target 属性: "_blank", "_self" 或 其他指定窗口名称 </p>
	<p>省略此属性，则默认为 "_blank"</p>
	</div>
	<h3>treeNode 举例</h3>
	<h4>1. 设置点击某节点时，弹出新页面</h4>
	<pre xmlns=""><code>var nodes = [
	{ "id":1, "name":"test1", "url":"http://myTest.com", "target":"_blank"},
	......
]</code></pre>
</div>
</div>
