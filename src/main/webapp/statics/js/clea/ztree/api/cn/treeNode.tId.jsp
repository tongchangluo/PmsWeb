<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">treeNode.</span>tId</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>treeNode 节点的唯一标识 tId。</p>
			<p class="highlight_red">初始化节点数据时，由 zTree 增加此属性，请勿提前赋值</p>
		</div>
	</div>
	<h3>String 格式说明</h3>
	<div class="desc">
	<p>生成规则：setting.treeId + "_" + 内部计数</p>
	</div>
	<h3>treeNode 举例</h3>
	<h4>1. 查看当前被选中的节点的 tId</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var sNodes = treeObj.getSelectedNodes();
if (sNodes.length > 0) {
	var tId = sNodes[0].tId;
}
</code></pre>
</div>
</div>
