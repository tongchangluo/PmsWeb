<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean / Function(treeId, treeNode)</span><span class="path">setting.view.</span>showTitle</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>设置 zTree 是否显示节点的 title 提示信息(即节点 DOM 的 title 属性)。</p>
			<p class="highlight_red">请务必与 <span class="highlight_red">setting.data.key.title</span> 同时使用。</p>
			<p>默认值：true</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true / false 分别表示 显示 / 隐藏 提示信息</p>
	<p class="highlight_red">如果 setting.view.showTitle = true & setting.data.key.title = ''，zTree 会自动使用 setting.data.key.name 指定的节点名称当做 title</p>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>对应 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>需要设置是否显示提示信息的节点 JSON 数据对象</p>
	<h4 class="topLine"><b>返回值</b><span>Boolean</span></h4>
	<p>返回值同 Boolean 格式的数据</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 设置 zTree 不显示提示信息</h4>
	<pre xmlns=""><code>var setting = {
	view: {
		showTitle: false
	}
};
......</code></pre>
	<h4>2. 设置 zTree 仅仅 level=2 的节点不显示提示信息</h4>
	<pre xmlns=""><code>function showTitleForTree(treeId, treeNode) {
	return treeNode.level != 2;
};
var setting = {
	view: {
		showTitle: showTitleForTree
	}
};
......</code></pre>
</div>
</div>
