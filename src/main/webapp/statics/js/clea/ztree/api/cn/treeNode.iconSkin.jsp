<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">treeNode.</span>iconSkin</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>节点自定义图标的 className</p>
			<p class="highlight_red">1、需要修改 css，增加相应 className 的设置</p>
			<p class="highlight_red">2、css 方式简单、方便，并且同时支持父节点展开、折叠状态切换图片</p>
			<p class="highlight_red">3、css 建议采用图片分割渲染的方式以减少反复加载图片，并且避免图片闪动</p>
			<p class="highlight_red">4、zTree v3.x 的 iconSkin 同样支持 IE6</p>
			<p class="highlight_red">5、如果想直接使用 图片的Url路径 设置节点的个性化图标，需要设置 treeNode.icon / treeNode.iconOpen / treeNode.iconClose 属性</p>
			<p>默认值：无</p>
		</div>
	</div>
	<h3>String 格式说明</h3>
	<div class="desc">
	<p>设置个性图标的 className</p>
	</div>
	<h3>css & treeNode 举例</h3>
	<h4>1. 设置节点的个性化图标</h4>
	<pre xmlns=""><code>css 内容：
.ztree li span.button.diy01_ico_open, .ztree li span.button.diy01_ico_close{...}

.ztree li span.button.diy02_ico_open{...}
.ztree li span.button.diy02_ico_close{...}

.ztree li span.button.diy03_ico_docu{...}

js中节点数据：
var nodes = [
	//父节点展开 折叠时使用相同的图标
	{ name:"父节点1", iconSkin:"diy01"},

	//父节点展开 折叠时分别使用不同的图标
	{ name:"父节点2", iconSkin:"diy02"},

	//叶子节点个性化图标
	{ name:"叶子节点", iconSkin:"diy03"}
]</code></pre>
</div>
</div>
