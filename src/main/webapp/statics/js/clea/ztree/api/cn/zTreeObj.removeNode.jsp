<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeNode, callbackFlag)</span><span class="path">zTreeObj.</span>removeNode</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>删除节点。</p>
			<p class="highlight_red">v3.x 中删除节点可以触发 beforeRemove / onRemove 事件回调函数。便于减少冗余代码</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeNode</b><span>JSON</span></h4>
	<p>需要被删除的节点数据</p>
	<p class="highlight_red">请务必保证此节点数据对象 是 zTree 内部的数据对象</p>
	<h4 class="topLine"><b>callbackFlag</b><span>Boolean</span></h4>
	<p>callbackFlag = true 表示执行此方法时触发 beforeRemove & onRemove 事件回调函数</p>
	<p>callbackFlag = false 表示执行此方法时不触发事件回调函数</p>
	<p class="highlight_red">省略此参数，等同于 false</p>
	<h4 class="topLine"><b>返回值</b><span>无</span></h4>
	<p>目前无任何返回值</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 删除所有选中的节点</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getSelectedNodes();
for (var i=0, l=nodes.length; i < l; i++) {
	treeObj.removeNode(nodes[i]);
}
</code></pre>
</div>
</div>
