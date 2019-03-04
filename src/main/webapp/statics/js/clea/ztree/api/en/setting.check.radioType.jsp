<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.check.</span>radioType</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.excheck</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>The group about radio. It is valid when <span class="highlight_red">[setting.check.enable = true &amp; setting.check.chkStyle = "radio"]</span></p>
			<p>Default: "level"</p>
		</div>
	</div>
	<h3>String Format</h3>
	<div class="desc">
	<p>When radioType = "level", will be grouped with same level nodes which have the same parent node.
<br/>When radioType = "all", will be grouped with all nodes.</p>
	<p class="highlight_red">Please note that letter case, do not change.</p>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. Set the group about radio is all nodes.</h4>
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
