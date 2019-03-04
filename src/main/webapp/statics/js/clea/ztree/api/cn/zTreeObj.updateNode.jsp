<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeNode, checkTypeFlag)</span><span class="path">zTreeObj.</span>updateNode</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>更新某节点数据，主要用于该节点显示属性的更新。</p>
			<p class="highlight_red">1、可针对 name、target、 url、icon、 iconSkin、checked、nocheck 等这几个用于显示效果的参数进行更新，其他用于 zTreeNodes 的参数请不要随意更新，对于展开节点，还请调用 expandNode方法，因此请勿随意修改 open 属性。</p>
			<p class="highlight_red">2、用此方法修改 checked 勾选状态不会触发 beforeCheck / onCheck 事件回调函数。</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeNode</b><span>JSON</span></h4>
	<p>指定需要更新的节点 JSON 数据</p>
	<p class="highlight_red">请务必保证此节点数据对象 是 zTree 内部的数据对象</p>
	<h4 class="topLine"><b>checkTypeFlag</b><span>Boolean</span></h4>
	<p>checkTypeFlag = true 表示按照 setting.check.chkboxType 属性进行父子节点的勾选联动操作</p>
	<p>checkTypeFlag = false 表示只修改此节点勾选状态，无任何勾选联动操作</p>
	<p class="highlight_red">当 setting.check.enable = true 且 setting.check.chkStyle = "checkbox" 时才有效</p>
	<p class="highlight_red">不影响父子节点中 treeNode.nochecked = true 的节点。</p>
	<h4 class="topLine"><b>返回值</b><span>无</span></h4>
	<p>目前无任何返回值</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 更新根节点中第一个节点的名称</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getNodes();
if (nodes.length>0) {
	nodes[0].name = "test";
	treeObj.updateNode(nodes[0]);
}
</code></pre>
</div>
</div>
