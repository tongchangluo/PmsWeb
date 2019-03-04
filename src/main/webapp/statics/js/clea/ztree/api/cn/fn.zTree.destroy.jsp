<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeId)</span><span class="path">$.fn.zTree.</span>destroy</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>从 zTree v3.4 开始提供销毁 zTree 的方法。 </p>
			<p>1、用此方法可以销毁指定 treeId 的 zTree，也可以销毁当前页面全部的 zTree。</p>
			<p class="highlight_red">2、销毁指定 treeId 的 zTree 也可以使用 zTreeObj.destroy() 方法。</p>
			<p class="highlight_red">3、重新使用已经被销毁的树，必须要使用 init 方法进行初始化。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>zTree 的 DOM 容器的 id</p>
	<p class="highlight_red">省略 treeId，表示销毁当前页面全部的 zTree</p>
	<h4 class="topLine"><b>返回值</b><span>无</span></h4>
	<p>目前无任何返回值</p>
	</div>
	<h3>function 举例</h3>
	<h4>1. 销毁 id 为 "treeDemo" 的 zTree</h4>
	<pre xmlns=""><code>$.fn.zTree.destroy("treeDemo");</code></pre>
	<h4>2. 销毁全部 的 zTree</h4>
	<pre xmlns=""><code>$.fn.zTree.destroy();</code></pre>
</div>
</div>
