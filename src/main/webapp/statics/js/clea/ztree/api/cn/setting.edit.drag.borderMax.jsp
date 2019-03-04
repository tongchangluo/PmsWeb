<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Number</span><span class="path">setting.edit.drag.</span>borderMax</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.exedit</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>拖拽节点成为根节点时的 Tree 内边界范围 (单位：px)。<span class="highlight_red">[setting.edit.enable = true 时生效]</span></p>
			<p>默认值：10</p>
			<p class="highlight_red">请根据自己的需求适当调整此值</p>
		</div>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 更改拖拽操作节点成为根节点时的 Tree 内边界范围为20px</h4>
	<pre xmlns=""><code>var setting = {
	edit: {
		enable: true,
		drag: {
			borderMax: 20
		}
	}
};
......</code></pre>
</div>
</div>
