<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeNode, expandFlag, sonSign, focus, callbackFlag)</span><span class="path">zTreeObj.</span>expandNode</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>展开 / 折叠 指定的节点</p>
			<p class="highlight_red">v3.x 中执行此方法可以触发 beforeExpand / onExpand  或 beforeCollapse / onCollapse 事件回调函数。便于减少冗余代码</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeNode</b><span>JSON</span></h4>
	<p>需要 展开 / 折叠 的节点数据</p>
	<p class="highlight_red">请务必保证此节点数据对象 是 zTree 内部的数据对象</p>
	<h4 class="topLine"><b>expandFlag</b><span>Boolean</span></h4>
	<p>expandFlag = true 表示 展开 节点</p>
	<p>expandFlag = false 表示 折叠 节点</p>
	<p class="highlight_red">省略此参数，则根据对此节点的展开状态进行 toggle 切换</p>
	<h4 class="topLine"><b>sonSign</b><span>Boolean</span></h4>
	<p>sonSign = true 表示 全部子孙节点 进行与 expandFlag 相同的操作</p>
	<p>sonSign = false 表示 只影响此节点，对于其 子孙节点无任何影响</p>
	<p class="highlight_red">sonSign = false 且 treeNode.open = expandFlag 时，不会触发回调函数，直接返回</p>
	<p class="highlight_red">省略此参数，等同于 false</p>
	<h4 class="topLine"><b>focus</b><span>Boolean</span></h4>
	<p>focus = true 表示 展开 / 折叠 操作后，通过设置焦点保证此焦点进入可视区域内</p>
	<p>focus =  false 表示 展开 / 折叠 操作后，不设置任何焦点</p>
	<p class="highlight_red">省略此参数，等同于 true</p>
	<h4 class="topLine"><b>callbackFlag</b><span>Boolean</span></h4>
	<p>callbackFlag = true 表示执行此方法时触发 beforeExpand / onExpand  或 beforeCollapse / onCollapse 事件回调函数</p>
	<p>callbackFlag = false 表示执行此方法时不触发事件回调函数</p>
	<p class="highlight_red">省略此参数，等同于 false</p>
	<h4 class="topLine"><b>返回值</b><span>Boolean</span></h4>
	<p>返回值表示最终实际操作情况</p>
	<p>true 表示 展开 节点</p>
	<p>false 表示 折叠 节点</p>
	<p>null 表示 不是父节点</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 展开当前选择的第一个节点（包括其全部子节点）</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getSelectedNodes();
if (nodes.length>0) {
	treeObj.expandNode(nodes[0], true, true, true);
}
</code></pre>
</div>
</div>
