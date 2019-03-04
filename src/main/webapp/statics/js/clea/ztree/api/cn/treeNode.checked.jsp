<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">treeNode.</span>checked</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.excheck</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>节点的 checkBox / radio 的 勾选状态。<span class="highlight_red">[setting.check.enable = true & treeNode.nocheck = false 时有效]</span></p>
			<p class="highlight_red">1、如果不使用 checked 属性设置勾选状态，请修改 setting.data.key.checked </p>
			<p class="highlight_red">2、建立 treeNode 数据时设置 treeNode.checked = true 可以让节点的输入框默认为勾选状态</p>
			<p class="highlight_red">3、修改节点勾选状态，可以使用 treeObj.checkNode / checkAllNodes / updateNode 方法，具体使用哪种请根据自己的需求而定</p>
			<p class="highlight_red">4、为了解决部分朋友生成 json 数据出现的兼容问题, 支持 "false","true" 字符串格式的数据</p>
			<p>默认值：false</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p>true 表示节点的输入框被勾选</p>
	<p>false 表示节点的输入框未勾选</p>
	</div>
	<h3>treeNode 举例</h3>
	<h4>1. 初始化的数据设置 默认为勾选状态</h4>
	<pre xmlns=""><code>var nodes = [
{ "id":1, "name":"test1", checked:true },
{ "id":2, "name":"test2", checked:true }
]</code></pre>
	<h4>2. 获取第一个根节点的勾选状态</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var checked = treeObj.getNodes()[0].checked;
</code></pre>
</div>
</div>
