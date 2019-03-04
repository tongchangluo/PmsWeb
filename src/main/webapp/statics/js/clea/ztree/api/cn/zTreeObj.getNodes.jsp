<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function()</span><span class="path">zTreeObj.</span>getNodes</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>获取 zTree 的全部节点数据</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>返回值</b><span>Array(JSON)</span></h4>
	<p>全部节点数据</p>
	<p class="highlight_red">1、Array 仅仅是根节点的集合（默认情况子节点都处于 children 属性下）； </p>
	<p class="highlight_red">2、如需遍历全部节点需要利用递归，或利用 transformToArray 方法 将数据变成简单的 Array 集合</p>
	<p class="highlight_red">3、对于异步加载模式下，尚未加载的子节点是无法通过此方法获取的。</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 获取全部节点数据</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getNodes();
</code></pre>
</div>
</div>
