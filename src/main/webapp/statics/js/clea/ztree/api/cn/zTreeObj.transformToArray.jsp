<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeNodes)</span><span class="path">zTreeObj.</span>transformToArray</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>将 zTree 使用的标准 JSON 嵌套格式的数据转换为简单 Array 格式。(免去用户自行编写递归遍历全部节点的麻烦)</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeNodes</b><span>Array(JSON) / JSON</span></h4>
	<p>需要被转换的 zTree 节点数据对象集合 或 某个单独节点的数据对象</p>
	<h4 class="topLine"><b>返回值</b><span>Array(JSON)</span></h4>
	<p>转换后的简单 Array 数据格式</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 将 zTree 节点数据转换为简单 Array 格式</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.transformToArray(treeObj.getNodes());
</code></pre>
</div>
</div>
