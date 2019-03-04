<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.view.</span>txtSelectedEnable</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>设置 zTree 是否允许可以选择 zTree DOM 内的文本。</p>
			<p>默认值：false</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true / false 分别表示 允许 / 不允许 选择 zTree Dom 内的文本</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 设置 zTree 允许选择文本</h4>
	<pre xmlns=""><code>var setting = {
	view: {
		txtSelectedEnable: true
	}
};
......</code></pre>
</div>
</div>
