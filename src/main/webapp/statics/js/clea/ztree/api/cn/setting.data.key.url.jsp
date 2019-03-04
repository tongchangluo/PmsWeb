<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.data.key.</span>url</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>zTree 节点数据保存节点链接的目标 URL 的属性名称。</p>
			<p class="highlight_red">特殊用途：当后台数据只能生成 url 属性，又不想实现点击节点跳转的功能时，可以直接修改此属性为其他不存在的属性名称</p>
			<p>默认值："url"</p>
		</div>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 设置 zTree 显示节点时，将 treeNode 的 xUrl 属性当做节点链接的目标 URL</h4>
	<pre xmlns=""><code>var setting = {
	data: {
		key: {
			url: "xUrl"
		}
	}
};
......</code></pre>
</div>
</div>
