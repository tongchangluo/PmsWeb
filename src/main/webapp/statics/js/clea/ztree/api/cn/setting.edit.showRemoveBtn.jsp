<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean / Function(treeId, treeNode)</span><span class="path">setting.edit.</span>showRemoveBtn</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.exedit</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>设置是否显示删除按钮。<span class="highlight_red">[setting.edit.enable = true 时生效]</span></p>
			<p>当点击某节点的删除按钮时：</p>
			<p>1、首先触发 <span class="highlight_red">setting.callback.beforeRemove</span> 回调函数，用户可判定是否进行删除操作。</p>
			<p>2、如果未设置 beforeRemove 或 beforeRemove 返回 true，则删除节点并触发 <span class="highlight_red">setting.callback.onRemove</span> 回调函数。</p>
			<p>默认值：true</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true / false 分别表示 显示 / 隐藏 删除按钮</p>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>对应 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>需要设置是否显示删除按钮的节点 JSON 数据对象</p>
	<h4 class="topLine"><b>返回值</b><span>Boolean</span></h4>
	<p>返回值同 Boolean 格式的数据</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 不显示删除按钮</h4>
	<pre xmlns=""><code>var setting = {
	edit: {
		enable: true,
		showRemoveBtn: false
	}
};
......</code></pre>
	<h4>2. 设置所有的父节点不显示删除按钮</h4>
	<pre xmlns=""><code>function setRemoveBtn(treeId, treeNode) {
	return !treeNode.isParent;
}
var setting = {
	edit: {
		enable: true,
		showRemoveBtn: setRemoveBtn
	}
};
......</code></pre>
</div>
</div>
