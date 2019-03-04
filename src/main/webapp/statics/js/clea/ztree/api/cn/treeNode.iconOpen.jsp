<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">treeNode.</span>iconOpen</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>父节点自定义展开时图标的 URL 路径。</p>
			<p class="highlight_red">1、此属性只针对父节点有效</p>
			<p class="highlight_red">2、此属性必须与 iconClose 同时使用</p>
			<p class="highlight_red">3、如果想利用 className 设置个性化图标，需要设置 treeNode.iconSkin 属性</p>
			<p>默认值：无</p>
		</div>
	</div>
	<h3>String 格式说明</h3>
	<div class="desc">
	<p>图标图片的 url 可以是相对路径也可以是绝对路径</p>
	<p class="highlight_red">设置相对路径请注意页面与图片之间的关系，确保图片能够正常加载</p>
	</div>
	<h3>treeNode 举例</h3>
	<h4>1. 设置节点的个性化图标</h4>
	<pre xmlns=""><code>var nodes = [
	//父节点展开 折叠时使用相同的图标
	{ name:"父节点1", icon:"/img/parent.gif"},

	//父节点展开 折叠时分别使用不同的图标
	{ name:"父节点2", iconOpen:"/img/open.gif", iconClose:"/img/close.gif"}, 

	//叶子节点个性化图标
	{ name:"叶子节点", icon:"/img/leaf.gif"}
]</code></pre>
</div>
</div>
