<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeId, treeNode)</span><span class="path">setting.callback.</span>beforeRightClick</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>用于捕获 zTree 上鼠标右键点击之前的事件回调函数，并且根据返回值确定触发 onRightClick 事件回调函数</p>
			<p>默认值：null</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>对应 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>鼠标右键点击时所在节点的 JSON 数据对象</p>
	<p class="highlight_red">如果不在节点上，则返回 null</p>
	<h4 class="topLine"><b>返回值</b><span>Boolean</span></h4>
	<p>返回值是 true / false</p>
	<p class="highlight_red">如果返回 false，将仅仅无法触发 onRightClick 事件回调函数，对其他操作无任何影响</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 禁止 onRightClick 事件</h4>
	<pre xmlns=""><code>function zTreeBeforeRightClick(treeId, treeNode) {
    return false;
};
var setting = {
	callback: {
		beforeRightClick: zTreeBeforeRightClick
	}
};
......</code></pre>
</div>
</div>
