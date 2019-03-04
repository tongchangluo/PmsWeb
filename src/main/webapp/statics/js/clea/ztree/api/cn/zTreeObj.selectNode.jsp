<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeNode, addFlag, isSilent)</span><span class="path">zTreeObj.</span>selectNode</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>选中指定节点</p>
			<p class="highlight_red">v3.x 支持同时选中多个节点。</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeNode</b><span>JSON</span></h4>
	<p>需要被选中的节点数据</p>
	<p class="highlight_red">请务必保证此节点数据对象 是 zTree 内部的数据对象</p>
	<h4 class="topLine"><b>addFlag</b><span>Boolean</span></h4>
	<p>addFlag = true 表示追加选中，会出现多点同时被选中的情况</p>
	<p>addFlag = false （默认）表示单独选中，原先被选中的节点会被取消选中状态</p>
	<p class="highlight_red">setting.view.selectedMulti = false 时，此参数无效，始终进行单独选中</p>
	<h4 class="topLine"><b>isSilent</b><span>Boolean</span></h4>
	<p>isSilent = true 选中节点时，不会让节点自动滚到到可视区域内</p>
	<p>isSilent = false （默认）表示选中节点时，会让节点自动滚到到可视区域内</p>
	<p class="highlight_red">(v3.5.23+)</p>
	<h4 class="topLine"><b>返回值</b><span>无</span></h4>
	<p>目前无任何返回值</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 单独选中根节点中第一个节点</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getNodes();
if (nodes.length>0) {
	treeObj.selectNode(nodes[0]);
}
</code></pre>
</div>
</div>
