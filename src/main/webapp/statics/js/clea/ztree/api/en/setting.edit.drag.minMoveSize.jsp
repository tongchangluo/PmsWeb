<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Number</span><span class="path">setting.edit.drag.</span>minMoveSize</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.exedit</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>The minimum offset which used to determine the drag operator start. (Unit: px) It is valid when <span class="highlight_red">[setting.edit.enable = true]</span></p>
			<p class="highlight_red">Please adjust the value according to needs. Note: If it is too small, will easily lead to misoperation when you click mouse.</p>
			<p>Default: 5</p>
		</div>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. Set the minimum offset is 10px.</h4>
	<pre xmlns=""><code>var setting = {
	edit: {
		enable: true,
		drag: {
			minMoveSize: 10
		}
	}
};
......</code></pre>
</div>
</div>
