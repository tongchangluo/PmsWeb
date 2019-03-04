<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String / Function(treeId, treeNode)</span><span class="path">setting.async.</span>url</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Ajax 获取数据的 URL 地址。<span class="highlight_red">[setting.async.enable = true 时生效]</span></p>
			<p>默认值：""</p>
		</div>
	</div>
	<h3>String 格式说明</h3>
	<div class="desc">
	<p>设置固定的异步加载 url 字符串，请注意地址的路径，确保页面能正常加载</p>
	<p class="highlight_red">url 内也可以带参数，这些参数就只能是通过 get 方式提交了，并且请注意进行转码</p>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>对应 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>需要异步加载子节点的的父节点 JSON 数据对象</p>
	<p class="highlight_red">针对根进行异步加载时，treeNode = null</p>
	<h4 class="topLine"><b>返回值</b><span>String</span></h4>
	<p>返回值同 String 格式的数据</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 设置异步获取节点的 URL 为 nodes.php</h4>
	<pre xmlns=""><code>var setting = {
	async: {
		enable: true,
		url: "nodes.php",
		autoParam: ["id", "name"]
	}
};
......</code></pre>
	<h4>2. 设置异步获取节点的 URL 为 function 动态获取</h4>
	<pre xmlns=""><code>function getAsyncUrl(treeId, treeNode) {
    return treeNode.isParent ? "nodes1.php" : "nodes2.php";
};
var setting = {
	async: {
		enable: true,
		url: getAsyncUrl,
		autoParam: ["id", "name"]
	}
};
......</code></pre>
</div>
</div>
