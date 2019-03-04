<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String / Function(treeId, treeNode)</span><span class="path">setting.edit.</span>removeTitle</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.exedit</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>删除按钮的 Title 辅助信息。<span class="highlight_red">[setting.edit.enable = true & setting.edit.showRemoveBtn = true 时生效]</span></p>
			<p>默认值："remove"</p>
		</div>
	</div>
	<h3>String 格式说明</h3>
	<div class="desc">
	<p>鼠标移动到 删除按钮 上时，浏览器自动弹出的辅助信息内容，可根据用户需要自行修改</p>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>对应 zTree 的 <b class="highlight_red">treeId</b>，便于用户操控</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>需要设置删除按钮 Title 信息的节点 JSON 数据对象</p>
	<h4 class="topLine"><b>返回值</b><span>String</span></h4>
	<p>返回值同 String 格式的数据</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 设置删除按钮的 Title 辅助信息为: "删除节点"</h4>
	<pre xmlns=""><code>var setting = {
	edit: {
		enable: true,
		showRemoveBtn: true,
		removeTitle: "删除节点"
	}
};
......</code></pre>
	<h4>2. 设置父节点删除按钮的 Title 辅助信息为: "删除父节点"</h4>
	<pre xmlns=""><code>function setRemoveTitle(treeId, treeNode) {
	return treeNode.isParent ? "删除父节点":"删除叶子节点";
}
var setting = {
	edit: {
		enable: true,
		showRemoveBtn: true,
		removeTitle: setRemoveTitle
	}
};
......</code></pre>
</div>
</div>
