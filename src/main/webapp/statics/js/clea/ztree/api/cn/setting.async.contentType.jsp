<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.async.</span>contentType</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Ajax 提交参数的数据类型。<span class="highlight_red">[setting.async.enable = true 时生效]</span></p>
			<p>默认值："application/x-www-form-urlencoded"</p>
		</div>
	</div>
	<h3>String 格式说明</h3>
	<div class="desc">
	<p> contentType = "application/x-www-form-urlencoded" 可以满足绝大部分请求，按照标准的 Form 格式提交参数</p>
	<p> contentType = "application/json" 可以满足 .Net 的编程需要，按照 JSON 格式提交参数</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 设置 Ajax 提交参数的数据类型为 JSON 格式</h4>
	<pre xmlns=""><code>var setting = {
	async: {
		enable: true,
		contentType: "application/json",
		url: "http://host/getNode.php",
		autoParam: ["id", "name"]
	}
};
......</code></pre>
</div>
</div>
