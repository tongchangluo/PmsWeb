<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeNode, checked, checkTypeFlag, callbackFlag)</span><span class="path">zTreeObj.</span>checkNode</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.excheck</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>勾选 或 取消勾选 单个节点。<span class="highlight_red">[setting.check.enable = true 时有效]</span></p>
			<p class="highlight_red">v3.x 中 checkNode() 方法可以触发 beforeCheck / onCheck 事件回调函数。便于减少冗余代码</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeNode</b><span>JSON</span></h4>
	<p>需要勾选 或 取消勾选 的节点数据</p>
	<p class="highlight_red">请务必保证此节点数据对象 是 zTree 内部的数据对象</p>
	<h4 class="topLine"><b>checked</b><span>Boolean</span></h4>
	<p>checked = true  表示勾选节点</p>
	<p>checked = false 表示节点取消勾选</p>
	<p class="highlight_red">省略此参数，则根据对此节点的勾选状态进行 toggle 切换</p>
	<p class="highlight_red">不影响 treeNode.nochecked = true 的节点。</p>
	<h4 class="topLine"><b>checkTypeFlag</b><span>Boolean</span></h4>
	<p>checkTypeFlag = true 表示按照 setting.check.chkboxType 属性进行父子节点的勾选联动操作</p>
	<p>checkTypeFlag = false 表示只修改此节点勾选状态，无任何勾选联动操作</p>
	<p class="highlight_red">checkTypeFlag = false 且 treeNode.checked = checked 时，不会触发回调函数，直接返回</p>
	<p class="highlight_red">不影响父子节点中 treeNode.nochecked = true 的节点。</p>
	<h4 class="topLine"><b>callbackFlag</b><span>Boolean</span></h4>
	<p>callbackFlag = true 表示执行此方法时触发 beforeCheck & onCheck 事件回调函数</p>
	<p>callbackFlag = false 表示执行此方法时不触发事件回调函数</p>
	<p class="highlight_red">省略此参数，等同于 false</p>
	<h4 class="topLine"><b>返回值</b><span>无</span></h4>
	<p>目前无任何返回值</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 勾选当前选中的节点</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getSelectedNodes();
for (var i=0, l=nodes.length; i < l; i++) {
	treeObj.checkNode(nodes[i], true, true);
}
</code></pre>
</div>
</div>
