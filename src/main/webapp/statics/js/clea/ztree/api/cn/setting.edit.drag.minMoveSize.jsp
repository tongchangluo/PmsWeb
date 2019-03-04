<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Number</span><span class="path">setting.edit.drag.</span>minMoveSize</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.exedit</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>判定是否拖拽操作的最小位移值 (单位：px)。<span class="highlight_red">[setting.edit.enable = true 时生效]</span></p>
			<p class="highlight_red">根据自己的需求可适当调整此值，如果太小容易导致点击鼠标时误操作进行拖拽</p>
			<p>默认值：5</p>
		</div>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 更改拖拽操作启动位移值为10px</h4>
	<pre xmlns=""><code>var setting = {
	edit: {
		enable: true,
		drag: {
			minMoveSize: 10
		}
	}
};
......</code></pre>
</div>
</div>
