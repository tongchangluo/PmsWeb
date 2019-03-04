<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.view.</span>txtSelectedEnable</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Set to allow or don't allow to select the text which in zTree's DOM.</p>
			<p>Default: false</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p> true means: Allow to select the txt which in zTree's DOM.</p>
	<p> false means: Don't allow to select the txt which in zTree's DOM.</p>
	</div>
	<h3>Examples of setting & function</h3>
	<h4>1. Allow to select the txt which in zTree's DOM.</h4>
	<pre xmlns=""><code>var setting = {
	view: {
		txtSelectedEnable: true
	}
};
......</code></pre>
</div>
</div>
