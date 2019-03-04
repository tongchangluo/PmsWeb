<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Number</span><span class="path">treeNode.</span>check_Child_State</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.excheck</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Used to record the node's half-checked state about its all child nodes's checkbox or radio. It is valid when <span class="highlight_red">[setting.check.enable = true]</span></p>
			<p class="highlight_red">zTree v3.x provides treeNode.getCheckStatus () method to get an accurate the half-checked status.</p>
			<p class="highlight_red">Do not initialize or modify it, it is an internal argument.</p>
			<p>Default: true</p>
		</div>
	</div>
	<h3>Number Format</h3>
	<div class="desc">
	<p>Rules:</p>
	<table width="100%" border="0" cellspacing="1" cellpadding="0">
		<thead>
			<tr><td colspan="4">setting.check.checkType = "checkbox"</td></tr>
			<tr><td>treeNode.check_Child_State</td><td>Checked Status Description</td></tr>
		</thead>
		<tbody>
			<tr><td>-1</td><td>Has no child nodes or all child nodes's 'nocheck' attribute is true.</td></tr>
			<tr><td>0</td><td>All of the child nodes has not been checked.</td></tr>
			<tr><td>1</td><td>Some of the child nodes has been checked.</td></tr>
			<tr><td>2</td><td>All of the child nodes has been checked.</td></tr>
		</tbody>
	</table>
	<br/>
	<table width="100%" border="0" cellspacing="1" cellpadding="0">
		<thead>
			<tr><td colspan="4">setting.check.checkType = "radio"</td></tr>
			<tr><td>treeNode.check_Child_State</td><td>Checked Status Description</td></tr>
		</thead>
		<tbody>
			<tr><td>-1</td><td>Has no child nodes or all child nodes's 'nocheck' attribute is true.</td></tr>
			<tr><td>0</td><td>All of the child nodes has not been checked.</td></tr>
			<tr><td>2</td><td>Some of the child nodes has been checked.</td></tr>
		</tbody>
	</table>
	</div>
</div>
</div>
