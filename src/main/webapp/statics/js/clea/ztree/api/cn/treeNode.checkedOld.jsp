<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">treeNode.</span>checkedOld</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.excheck</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>节点的 checkBox / radio 在初始化时的 勾选状态。<span class="highlight_red">[setting.check.enable = true & treeNode.nocheck = false 时有效]</span></p>
			<p class="highlight_red">1、zTree 初始化节点数据时会对此属性进行赋值，因此请勿对此属性初始化</p>
			<p class="highlight_red">2、如需配合 zTreeObj.getChangeCheckedNodes 方法实现特殊功能，可以根据需求在使用中自行修改 checkedOld 数据</p>
			<p>默认值：checked的初始化值</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p>true 表示节点初始化时 输入框被勾选</p>
	<p>false 表示节点初始化时 输入框未勾选</p>
	</div>
	<h3>treeNode 举例</h3>
	<h4>1. 获取第一个根节点的初始勾选状态</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var checkedOld = treeObj.getNodes()[0].checkedOld;
</code></pre>
</div>
</div>
