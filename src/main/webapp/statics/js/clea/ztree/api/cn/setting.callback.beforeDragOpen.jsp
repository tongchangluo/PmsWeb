<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeId, treeNode)</span><span class="path">setting.callback.</span>beforeDragOpen</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.exedit</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>用于捕获拖拽节点移动到折叠状态的父节点后，即将自动展开该父节点之前的事件回调函数，并且根据返回值确定是否允许自动展开操作</p>
			<p>默认值：null</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>需要被展开的父节点 treeNode 所在 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>要被自动展开的父节点 JSON 数据对象</p>
	<h4 class="topLine"><b>返回值</b><span>Boolean</span></h4>
	<p>返回值是 true / false</p>
	<p class="highlight_red">如果返回 false，zTree 将无法进行自动展开操作</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 禁止全部拖拽时的自动展开操作</h4>
	<pre xmlns=""><code>function zTreeBeforeDragOpen(treeId, treeNode) {
    return false;
};
var setting = {
	edit: {
		enable: true
	},
	callback: {
		beforeDragOpen: zTreeBeforeDragOpen
	}
};
......</code></pre>
</div>
</div>
