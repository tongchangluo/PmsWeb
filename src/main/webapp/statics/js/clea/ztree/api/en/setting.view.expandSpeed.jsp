<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String / Number</span><span class="path">setting.view.</span>expandSpeed</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>The animation speed of expand or collapse node. As same as 'speed' parameter in jQuery</p>
			<p class="highlight_red">In order to ensure zTree operating speed,  if use the IE6,  zTree will not use animation.</p>
			<p>Default: "fast"</p>
		</div>
	</div>
	<h3>String Format</h3>
	<div class="desc">
	<p>e.g. "slow", "normal", or "fast"</p>
	<p class="highlight_red">If set to "", zTree will not use animation.</p>
	</div>
	<h3>Number Format</h3>
	<div class="desc">
	<p>How long the animation will run. [Unit: ms] (e.g. 1000)</p>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. Set the animation speed to slow</h4>
	<pre xmlns=""><code>var setting = {
	view: {
		expandSpeed: "slow"
	}
};
......</code></pre>
</div>
</div>
