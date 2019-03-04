<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(key, value, parentNode)</span><span class="path">zTreeObj.</span>getNodesByParam</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>根据节点数据的属性搜索，获取条件完全匹配的节点数据 JSON 对象集合</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>key</b><span>String</span></h4>
	<p>需要精确匹配的属性名称</p>
	<h4 class="topLine"><b>value</b><span>?</span></h4>
	<p>需要精确匹配的属性值，可以是任何类型，只要保证与 key 指定的属性值保持一致即可</p>
	<h4 class="topLine"><b>parentNode</b><span>JSON</span></h4>
	<p>可以指定在某个父节点下的子节点中搜索</p>
	<p class="highlight_red">忽略此参数，表示在全部节点中搜索</p>
	<h4 class="topLine"><b>返回值</b><span>Array(JSON)</span></h4>
	<p>匹配精确搜索的节点数据集合</p>
	<p class="highlight_red">如无结果，返回 [ ]</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 查找 name = "test" 的节点数据</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getNodesByParam("name", "test", null);
</code></pre>
</div>
</div>
