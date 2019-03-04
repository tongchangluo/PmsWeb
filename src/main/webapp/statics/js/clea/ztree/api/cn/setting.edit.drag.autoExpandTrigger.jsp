<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.edit.drag.</span>autoExpandTrigger</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.exedit</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>拖拽时父节点自动展开是否触发 onExpand 事件回调函数。<span class="highlight_red">[setting.edit.enable = true 时生效]</span></p>
			<p>默认值：false</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true / false 分别表示 触发 / 不触发 onExpand 事件回调函数。</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 设置拖拽时父节点自动展开触发 onExpand 事件回调函数</h4>
	<pre xmlns=""><code>var setting = {
	edit: {
		enable: true,
		drag: {
			autoExpandTrigger: true
		}
	}
};
......</code></pre>
</div>
</div>
