<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.data.key.</span>name</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>zTree 节点数据保存节点名称的属性名称。</p>
			<p>默认值："name"</p>
		</div>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 设置 zTree 显示节点时，将 treeNode 的 ename 属性当做节点名称</h4>
	<pre xmlns=""><code>var setting = {
	data: {
		key: {
			name: "ename"
		}
	}
};
......</code></pre>
</div>
</div>
