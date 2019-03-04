<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.data.key.</span>title</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>zTree 节点数据保存节点提示信息的属性名称。<span class="highlight_red">[setting.view.showTitle = true 时生效]</span></p>
			<p class="highlight_red">如果设置为 "" ，则自动与 setting.data.key.name 保持一致，避免用户反复设置</p>
			<p>默认值：""</p>
		</div>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 设置 zTree 显示节点时，将 treeNode 的 fullName 属性当做节点名称</h4>
	<pre xmlns=""><code>var setting = {
	data: {
		key: {
			title: "fullName"
		}
	}
};
......</code></pre>
</div>
</div>
