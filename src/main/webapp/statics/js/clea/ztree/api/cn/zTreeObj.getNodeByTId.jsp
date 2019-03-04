<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(tId)</span><span class="path">zTreeObj.</span>getNodeByTId</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>根据 zTree 的唯一标识 tId 快速获取节点 JSON 数据对象</p>
			<p class="highlight_red">通过内部的 cache 获取，不需要遍历节点。</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>tId</b><span>String</span></h4>
	<p>节点在 zTree 内的唯一标识 tId</p>
	<h4 class="topLine"><b>返回值</b><span>JSON</span></h4>
	<p>tId 对应的节点 JSON 数据对象</p>
	<p class="highlight_red">如无结果，返回 null</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 获取 tId = "tree_10" 的节点数据</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var node = treeObj.getNodeByTId("tree_10");
</code></pre>
</div>
</div>
