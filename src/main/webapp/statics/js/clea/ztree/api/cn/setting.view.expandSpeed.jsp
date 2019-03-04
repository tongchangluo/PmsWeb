<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String / Number</span><span class="path">setting.view.</span>expandSpeed</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>zTree 节点展开、折叠时的动画速度，设置方法同 JQuery 动画效果中 speed 参数。</p>
			<p class="highlight_red">IE6 下会自动关闭动画效果，以保证 zTree 的操作速度</p>
			<p>默认值："fast"</p>
		</div>
	</div>
	<h3>String 格式说明</h3>
	<div class="desc">
	<p>三种预定速度之一的字符串("slow", "normal", or "fast")</p>
	<p class="highlight_red">设置为 "" 时，不显示动画效果</p>
	</div>
	<h3>Number 格式说明</h3>
	<div class="desc">
	<p>表示动画时长的毫秒数值 (如：1000)</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 设置为慢速显示动画效果</h4>
	<pre xmlns=""><code>var setting = {
	view: {
		expandSpeed: "slow"
	}
};
......</code></pre>
</div>
</div>
