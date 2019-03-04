<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.check.</span>nocheckInherit</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.excheck</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>当父节点设置 nocheck = true 时，设置子节点是否自动继承 nocheck = true 。<span class="highlight_red">[setting.check.enable = true 时生效]</span></p>
			<p class="highlight_red">1、只使用于初始化节点时，便于批量操作。 对于已存在的节点请利用 updateNode 方法单个节点设置。</p>
			<p>默认值: false</p>
		</div>
	</div>
	<h3>Boolean 格式说明</h3>
	<div class="desc">
	<p> true 表示 新加入子节点时，自动继承父节点 nocheck = true 的属性。</p>
	<p> false 表示 新加入子节点时，不继承父节点 nocheck 的属性。</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 需要子节点自动继承 nocheck = true</h4>
	<pre xmlns=""><code>var setting = {
	check: {
		enable: true,
		nocheckInherit: true
	}
};
......</code></pre>
</div>
</div>
