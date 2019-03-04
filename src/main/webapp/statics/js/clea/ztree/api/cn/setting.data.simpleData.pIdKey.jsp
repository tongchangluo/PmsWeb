<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.data.simpleData.</span>pIdKey</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>节点数据中保存其父节点唯一标识的属性名称。<span class="highlight_red">[setting.data.simpleData.enable = true 时生效]</span></p>
			<p>默认值："pId"</p>
		</div>
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
