<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.check.</span>chkStyle</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.excheck</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Use the checkbox or radio. It is valid when <span class="highlight_red">[setting.check.enable = true]</span></p>
			<p>Default: "checkbox"</p>
		</div>
	</div>
	<h3>String Format</h3>
	<div class="desc">
	<p>When chkStyle = "checkbox", zTree show checkbox, and '<span class="highlight_red">setting.check.chkboxType</span>' attribute is valid.
<br/>When chkStyle = "radio", zTree show radio, and '<span class="highlight_red">setting.check.radioType</span>' attribute is valid.</p>
	<p class="highlight_red">Please note that letter case, do not change.</p>
	</div>
	<h3>checkbox States Descriptions</h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p><button type="button" class="chk checkbox_false_full"></button>not checked; <span class="highlight_red">If node is parent, so its child nodes have been not checked.</span> when mouse over: <button type="button" class="chk checkbox_false_full_focus"></button></p>
			<p><button type="button" class="chk checkbox_false_part"></button>not checked; (only parent node) <span class="highlight_red">some of its child nodes have been checked.</span> when mouse over: <button type="button" class="chk checkbox_false_part_focus"></button></p>
			<p><button type="button" class="chk checkbox_true_full"></button>be checked; <span class="highlight_red">If node is parent, so its all child nodes have been checked.</span> when mouse over: <button type="button" class="chk checkbox_true_full_focus"></button></p>
			<p><button type="button" class="chk checkbox_true_part"></button>be checked; (only parent node) <span class="highlight_red">some of its child nodes or all have been not checked.</span> when mouse over: <button type="button" class="chk checkbox_true_part_focus"></button></p>
		</div>
	</div>
	<h3>radio States Descriptions</h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p><button type="button" class="chk radio_false_full"></button>not checked; <span class="highlight_red">If node is parent, so its child have been not checked.</span> when mouse over: <button type="button" class="chk radio_false_full_focus"></button></p>
			<p><button type="button" class="chk radio_false_part"></button>not checked; (only parent node) <span class="highlight_red">some of its child have been checked.</span> when mouse over: <button type="button" class="chk radio_false_part_focus"></button></p>
			<p><button type="button" class="chk radio_true_full"></button>be checked; <span class="highlight_red">If node is parent, so its child have been not checked.</span> when mouse over: <button type="button" class="chk radio_true_full_focus"></button></p>
			<p><button type="button" class="chk radio_true_part"></button>be checked; (only parent node) <span class="highlight_red">some of its child have been checked.</span> when mouse over: <button type="button" class="chk radio_true_part_focus"></button></p>
		</div>
	</div>
	<h3>Examples of setting</h3>
	<h4>1. use radio</h4>
	<pre xmlns=""><code>var setting = {
	check: {
		enable: true,
		chkStyle: "radio"
	}
};
......</code></pre>
</div>
</div>
