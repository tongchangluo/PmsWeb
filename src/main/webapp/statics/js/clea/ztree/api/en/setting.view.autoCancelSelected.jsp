<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Boolean</span><span class="path">setting.view.</span>autoCancelSelected</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>When click the selected node while pressing the Ctrl-key or Cmd-key, allow to cancel selected the node.</p>
			<p class="highlight_red">If you don't need this function, please set to false.</p>
			<p>Default: true</p>
		</div>
	</div>
	<h3>Boolean Format</h3>
	<div class="desc">
	<p> true means: press the Ctrl-key or Cmd-key, can cancel selected node.</p>
	<p> false means: press the Ctrl-key or Cmd-key, can't cancel selected node.</p>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. Press the Ctrl-key or Cmd-key, can't cancel selected node.</h4>
	<pre xmlns=""><code>var setting = {
	view: {
		autoCancelSelected: false
	}
};
......</code></pre>
</div>
</div>
