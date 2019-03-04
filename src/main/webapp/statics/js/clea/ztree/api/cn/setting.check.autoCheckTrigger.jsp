<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.check.</span>autoCheckTrigger</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.excheck</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>设置自动关联勾选时是否触发 beforeCheck / onCheck 事件回调函数。<span class="highlight_red">[setting.check.enable = true 且 setting.check.chkStyle = "checkbox" 时生效]</span></p>
			<p class="highlight_red">1、如果设置 setting.check.chkboxType = { "Y": "", "N": "" }，将不会有任何自动关联勾选的操作。</p>
			<p class="highlight_red">2、如果开启触发，对于节点较多的树将会影响性能，因为所有被联动勾选的操作都会触发事件回调函数，请根据需要决定是否使用此功能。</p>
			<p>默认值: false</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true / false 分别表示 触发 / 不触发 事件回调函数</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 需要触发自动关联勾选操作</h4>
	<pre xmlns=""><code>var setting = {
	check: {
		enable: true,
		autoCheckTrigger: true
	}
};
......</code></pre>
</div>
</div>
