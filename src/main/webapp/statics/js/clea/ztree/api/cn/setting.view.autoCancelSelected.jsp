<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.view.</span>autoCancelSelected</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>点击节点时，按下 Ctrl 或 Cmd 键是否允许取消选择操作。</p>
			<p class="highlight_red">如果不需要此功能，请设置为 false。</p>
			<p>默认值: true</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true / false 分别表示 支持 / 不支持 配合 Ctrl 或 Cmd 键进行取消节点选择的操作</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 禁止配合 Ctrl 或 Cmd 键进行取消节点选择的操作</h4>
	<pre xmlns=""><code>var setting = {
	view: {
		autoCancelSelected: false
	}
};
......</code></pre>
</div>
</div>
