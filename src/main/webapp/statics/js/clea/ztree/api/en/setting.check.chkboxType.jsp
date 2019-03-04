<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>JSON</span><span class="path">setting.check.</span>chkboxType</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.excheck</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>When one node is checked or unchecked, control its parent node and its child node auto checked or unchecked. It is valid when <span class="highlight_red">[setting.check.enable = true &amp; setting.check.chkStyle = "checkbox"]</span></p>
			<p>Default: { "Y": "ps", "N": "ps" }</p>
		</div>
	</div>
	<h3>JSON Format</h3>
	<div class="desc">
	<p>"Y" attribute use to set auto check after checkbox was checked.
<br/>"N" attribute use to set auto uncheck after checkbox was unchecked.
<br/>If value has "p", so parent nodes will be checked or unchecked.
<br/>If value has "s", so child nodes will be checked or unchecked.</p>
	<p class="highlight_red">Please note that letter case, do not change.</p>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. If check the node, so only auto check parent nodes; If uncheck the node, so only auto uncheck child nodes;</h4>
	<pre xmlns=""><code>var setting = {
	check: {
		enable: true,
		chkStyle: "checkbox",
		chkboxType: { "Y": "p", "N": "s" }
	}
};
......</code></pre>
</div>
</div>
