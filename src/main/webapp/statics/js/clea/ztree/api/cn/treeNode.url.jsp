<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">treeNode.</span>url</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>节点链接的目标 URL</p>
			<p class="highlight_red">1、编辑模式 (setting.edit.enable = true) 下此属性功能失效，如果必须使用类似功能，请利用 onClick 事件回调函数自行控制。</p>
			<p class="highlight_red">2、如果需要在 onClick 事件回调函数中进行跳转控制，那么请将 URL 地址保存在其他自定义的属性内，请勿使用 url</p>
			<p>默认值：无</p>
		</div>
	</div>
	<h3>String 格式说明</h3>
	<div class="desc">
	<p>同超链接 href 属性</p>
	</div>
	<h3>treeNode 举例</h3>
	<h4>1. 设置某节点点击时，跳转到 g.cn</h4>
	<pre xmlns=""><code>var nodes = [
	{ "id":1, "name":"Google CN", "url":"http://g.cn"},
	......
]</code></pre>
</div>
</div>
