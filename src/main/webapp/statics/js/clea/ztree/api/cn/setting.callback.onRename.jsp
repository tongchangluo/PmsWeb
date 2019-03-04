<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(event, treeId, treeNode, isCancel)</span><span class="path">setting.callback.</span>onRename</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.exedit</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>用于捕获节点编辑名称结束之后的事件回调函数。</p>
			<p>1、节点进入编辑名称状态，并且修改节点名称后触发此回调函数。<span class="highlight_red">如果用户设置了 beforeRename 回调函数，并返回 false，将无法触发 onRename 事件回调函数。</span></p>
			<p>2、<span class="highlight_red">如果通过直接修改 treeNode 的数据，并且利用 updateNode 方法更新，是不会触发此回调函数的。</span></p>
			<p class="highlight_red">3、从 v3.5.13 开始，取消编辑状态也会触发此回调，根据 isCancel 参数判断</p>
			<p>默认值：null</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>event</b><span>js event 对象</span></h4>
	<p>标准的 js event 对象</p>
	<h4 class="topLine"><b>treeId</b><span>String</span></h4>
	<p>对应 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>被修改名称的节点 JSON 数据对象</p>
	<h4 class="topLine"><b>isCancel</b><span>Boolean</span></h4>
	<p>是否取消操作 (v3.5.13+)</p>
	<p class="highlight_red">isCancel = true 表示取消编辑操作（按下 ESC 或 使用 cancelEditName 方法）</p>
	<p class="highlight_red">isCancel = false 表示确认修改操作</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 修改名称后，弹出被修改名称的节点的 tId 以及 name 信息</h4>
	<pre xmlns=""><code>function zTreeOnRename(event, treeId, treeNode, isCancel) {
	alert(treeNode.tId + ", " + treeNode.name);
}
var setting = {
	callback: {
		onRename: zTreeOnRename
	}
};
......</code></pre>
</div>
</div>
