<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.check.</span>radioType</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.excheck</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>radio 的分组范围。<span class="highlight_red">[setting.check.enable = true 且 setting.check.chkStyle = "radio" 时生效]</span></p>
			<p>默认值："level"</p>
		</div>
	</div>
	<h3>String 格式说明</h3>
	<div class="desc">
	<p>radioType = "level" 时，在每一级节点范围内当做一个分组。
<br/>radioType = "all" 时，在整棵树范围内当做一个分组。</p>
	<p class="highlight_red">请注意大小写，不要改变</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 设置 radio 的判别规则为整棵树内</h4>
	<pre xmlns=""><code>var setting = {
	check: {
		enable: true,
		chkStyle: "radio",
		radioType: "all"
	}
};
......</code></pre>
</div>
</div>
