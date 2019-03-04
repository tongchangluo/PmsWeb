<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.data.simpleData.</span>enable</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>确定 zTree 初始化时的节点数据、异步加载时的节点数据、或 <span class="highlight_red">addNodes</span> 方法中输入的 newNodes 数据是否采用简单数据模式 (Array)</p>
			<p>不需要用户再把数据库中取出的 List 强行转换为复杂的 JSON 嵌套格式</p>
			<p>默认值：false</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true / false 分别表示 使用 / 不使用 简单数据模式</p>
	<p class="highlight_red">如果设置为 true，请务必设置 setting.data.simpleData 内的其他参数: idKey / pIdKey / rootPId，并且让数据满足父子关系。</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 使用简单 Array 格式的数据</h4>
	<pre xmlns=""><code>var setting = {
	data: {
		simpleData: {
			enable: true,
			idKey: "id",
			pIdKey: "pId",
			rootPId: 0
		}
	}
};
var treeNodes = [
    {"id":1, "pId":0, "name":"test1"},
    {"id":11, "pId":1, "name":"test11"},
    {"id":12, "pId":1, "name":"test12"},
    {"id":111, "pId":11, "name":"test111"}
];
......</code></pre>
</div>
</div>
