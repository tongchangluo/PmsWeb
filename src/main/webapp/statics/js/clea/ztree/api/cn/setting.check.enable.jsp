<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.check.</span>enable</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.excheck</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>设置 zTree 的节点上是否显示 checkbox / radio</p>
			<p>默认值: false</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true / false 分别表示 显示 / 不显示 复选框或单选框</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 需要显示 checkbox</h4>
	<pre xmlns=""><code>var setting = {
	check: {
		enable: true
	}
};
......</code></pre>
</div>
</div>
