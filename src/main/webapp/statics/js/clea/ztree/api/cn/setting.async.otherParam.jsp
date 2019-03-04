<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Array(String) / JSON</span><span class="path">setting.async.</span>otherParam</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Ajax 请求提交的静态参数键值对。<span class="highlight_red">[setting.async.enable = true 时生效]</span></p>
			<p>默认值：[ ]</p>
		</div>
	</div>
	<h3>Array(String) 格式说明</h3>
	<div class="desc">
	<p>可以为空[ ]，如果有 key，则必须存在 value。 例如：[key, value]</p>
	</div>
	<h3>JSON 格式说明</h3>
	<div class="desc">
	<p>直接用 JSON 格式制作键值对，例如：{ key1:value1, key2:value2 }</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 设置 Array(String) 格式的参数</h4>
	<pre xmlns=""><code>var setting = {
	async: {
		enable: true,
		url: "http://host/getNode.php",
		otherParam: ["id", "1", "name", "test"]
	}
};
进行异步加载时，将提交参数 id=1&name=test</code></pre>
	<h4>2. 设置 JSON 格式的参数</h4>
	<pre xmlns=""><code>var setting = {
	async: {
		enable: true,
		url: "http://host/getNode.php",
		otherParam: { "id":"1", "name":"test"}
	}
};
进行异步加载时，将提交参数 id=1&name=test</code></pre>
</div>
</div>
