<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(targetNode, treeNode, moveType, isSilent)</span><span class="path">zTreeObj.</span>copyNode</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.exedit</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>复制节点。</p>
			<p class="highlight_red">v3.x 复制节点时进行 clone 操作。如果需要获取数据在 zTree 内的对象，请获取此方法的返回值。</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>targetNode</b><span>JSON</span></h4>
	<p>要复制到的目标节点 JSON 数据</p>
	<p class="highlight_red">如果复制成为根节点，请设置 targetNode 为 null 即可</p>
	<p class="highlight_red">请务必保证此节点数据对象 是 zTree 内部的数据对象</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>需要被复制的节点数据</p>
	<p class="highlight_red">请务必保证此节点数据对象 是 zTree 内部的数据对象</p>
	<h4 class="topLine"><b>moveType</b><span>String</span></h4>
	<p>复制到目标节点的相对位置</p>
	<p class="highlight_red">"inner"：成为子节点，"prev"：成为同级前一个节点，"next"：成为同级后一个节点</p>
	<h4 class="topLine"><b>isSilent</b><span>Boolean</span></h4>
	<p>设定复制节点后是否自动展开父节点。</p>
	<p>isSilent = true 时，不展开父节点，其他值或缺省状态都自动展开。</p>
	<h4 class="topLine"><b>返回值</b><span>JSON</span></h4>
	<p>返回值是最终加入到 zTree 内的节点数据</p>
	<p class="highlight_red">请务必记住：返回值中的数据对象 是 treeNode 被 clone 后的，所以绝对不相等！</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 将根节点中第二个节点 复制成为 第一个节点的子节点</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getNodes();
treeObj.copyNode(nodes[0], nodes[1], "inner");
</code></pre>
	<h4>2. 将根节点中第二个节点 复制成为 第一个节点的前一个节点</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var nodes = treeObj.getNodes();
treeObj.copyNode(nodes[0], nodes[1], "before");
</code></pre>
</div>
</div>
