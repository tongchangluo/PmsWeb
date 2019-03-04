<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.async.</span>enable</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>设置 zTree 是否开启异步加载模式</p>
			<p>默认值：false</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true 表示 开启 异步加载模式</p>
	<p> false 表示 关闭 异步加载模式</p>
	<p class="highlight_red">如果设置为 true，请务必设置 setting.async 内的其它参数。</p>
	<p class="highlight_red">如果需要根节点也异步加载，初始化时 treeNodes 参数设置为 null 即可。</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 需要开启异步加载模式</h4>
	<pre xmlns=""><code>var setting = {
	async: {
		enable: true,
		url: "http://host/getNode.php",
		autoParam: ["id", "name"]
	}
};
......</code></pre>
</div>
</div>
