<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(checked)</span><span class="path">zTreeObj.</span>getCheckedNodes</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.excheck</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>获取输入框被勾选 或 未勾选的节点集合。<span class="highlight_red">[setting.check.enable = true 时有效]</span></p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>checked</b><span>Boolean</span></h4>
	<p>checked = true  表示获取 被勾选 的节点集合</p>
	<p>checked = false 表示获取 未勾选 的节点集合</p>
	<p class="highlight_red">省略此参数，等同于 true。</p>
	<p class="highlight_red">对于 treeNode.nochecked = true 的节点不进行获取。</p>
	<h4 class="topLine"><b>返回值</b><span>Array(JSON)</span></h4>
	<p>返回全部符合要求的节点集合 Array</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 获取当前被勾选的节点集合</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getCheckedNodes(true);
</code></pre>
</div>
</div>
