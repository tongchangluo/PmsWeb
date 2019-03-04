<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(parentNode, [index], newNodes, isSilent)</span><span class="path">zTreeObj.</span>addNodes</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>添加节点。</p>
			<p class="highlight_red">v3.x 为了避免原先反复初始化造成的数据重复问题，在 初始化 和 添加节点 时内部进行 clone 操作。如果需要获取数据在 zTree 内的对象，请获取此方法的返回值。</p>
			<p class="highlight_red">请通过 zTree 对象执行此方法。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>parentNode</b><span>JSON</span></h4>
	<p>指定的父节点，如果增加根节点，请设置 parentNode 为 null 即可。</p>
	<p class="highlight_red">请务必保证此节点数据对象 是 zTree 内部的数据对象</p>
	<h4><b>[index]</b><span>Number</span></h4>
	<p>新节点插入的位置（从 0 开始）</p>
	<p>index = -1 时，插入到最后</p>
	<p>此参数可忽略</p>
	<p class="highlight_red">v3.5.19+</p>
	<h4 class="topLine"><b>newNodes</b><span>JSON / Array(JSON)</span></h4>
	<p>需要增加的节点数据 JSON 对象集合，数据只需要满足 zTree 的节点数据必需的属性即可，详细请参考“treeNode 节点数据详解”</p>
	<p class="highlight_red">1、v3.x 支持单独添加一个节点，即如果只新增一个节点，不用必须包在数组中</p>
	<p class="highlight_red">2、使用简单数据模式，请参考 setting.data.simpleData 内的属性说明</p>
	<h4 class="topLine"><b>isSilent</b><span>Boolean</span></h4>
	<p>设定增加节点后是否自动展开父节点。</p>
	<p>isSilent = true 时，不展开父节点，其他值或缺省状态都自动展开。</p>
	<h4 class="topLine"><b>返回值</b><span>Array(JSON)</span></h4>
	<p>返回值是 zTree 最终添加的节点数据集合</p>
	<p class="highlight_red">如果 newNodes 是单个节点数据 JSON，返回值也是将其包在 Array 内</p>
	<p class="highlight_red">请务必记住：返回值中的数据对象 是 newNodes 被 clone 后的，所以绝对不相等！</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 对于 id = "tree" 的 zTree 增加 1 个根节点</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var newNode = {name:"newNode1"};
newNode = treeObj.addNodes(null, newNode);
</code></pre>
	<h4>2. 对于 id = "tree" 的 zTree 增加 3 个根节点</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var newNodes = [{name:"newNode1"}, {name:"newNode2"}, {name:"newNode3"}];
newNodes = treeObj.addNodes(null, newNodes);
</code></pre>
</div>
</div>
