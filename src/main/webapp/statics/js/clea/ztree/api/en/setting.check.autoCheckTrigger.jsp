<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.check.</span>autoCheckTrigger</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.excheck</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>When node is automatically checked or unchecked, this parameter used to set to trigger 'beforeCheck / onCheck' callback. It is valid when <span class="highlight_red">[setting.check.enable = true & setting.check.chkStyle = "checkbox"]</span></p>
			<p class="highlight_red">1. If you set 'setting.check.chkboxType' to { "Y": "", "N": "" }, will not automatically checked or unchecked.</p>
			<p class="highlight_red">2. If you turn on the trigger and there are many more nodes, will affect the performance, because the check or uncheck node can cause many nodes to be automatically checked or unchecked, it will trigger a lot of callbacks, according to the need to decide whether to use this feature.</p>
			<p>Default: false</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p> true means: trigger callback</p>
	<p> false means: don't trigger callback</p>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. When node is automatically checked or unchecked, zTree trigger 'beforeCheck / onCheck' callback.</h4>
	<pre xmlns=""><code>var setting = {
	check: {
		enable: true,
		autoCheckTrigger: true
	}
};
......</code></pre>
</div>
</div>
