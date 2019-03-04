<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean / Function(treeId, treeNode)</span><span class="path">setting.view.</span>dblClickExpand</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>双击节点时，是否自动展开父节点的标识</p>
			<p>默认值: true</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true / false 分别表示双击节点 切换 / 不切换 展开状态</p>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>对应 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>需要设置是否双击切换展开状态的节点 JSON 数据对象</p>
	<h4 class="topLine"><b>返回值</b><span>Boolean</span></h4>
	<p>返回值同 Boolean 格式的数据</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 取消默认双击展开父节点的功能</h4>
	<pre xmlns=""><code>var setting = {
	view: {
		dblClickExpand: false
	}
};
......</code></pre>
	<h4>2. 设置 zTree 仅仅 level=0 的父节点取消双击展开的功能</h4>
	<pre xmlns=""><code>function dblClickExpand(treeId, treeNode) {
	return treeNode.level > 0;
};
var setting = {
	view: {
		dblClickExpand: dblClickExpand
	}
};
......</code></pre>
</div>
</div>
