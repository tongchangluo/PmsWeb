<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.async.</span>type</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Ajax 的 http 请求模式。<span class="highlight_red">[setting.async.enable = true 时生效]</span></p>
			<p>默认值："post"</p>
		</div>
	</div>
	<h3>String 格式说明</h3>
	<div class="desc">
	<p> type = "post" 表示异步加载采用 post 方法请求</p>
	<p> type = "get" 表示异步加载采用 get 方法请求</p>
	<p class="highlight_red">对应于 jQuery ajax 中的 type 参数</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 设置使用 get 方式请求数据</h4>
	<pre xmlns=""><code>var setting = {
	async: {
		enable: true,
		type: "get",
		url: "http://host/getNode.php",
		autoParam: ["id", "name"]
	}
};
......</code></pre>
</div>
</div>
