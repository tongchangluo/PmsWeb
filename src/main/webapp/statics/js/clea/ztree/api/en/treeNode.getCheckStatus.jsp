<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function()</span><span class="path">treeNode.</span>getCheckStatus</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.excheck</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Get the node's half-checked status of checkbox or radio. It is valid when <span class="highlight_red">[setting.check.enable = true]</span></p>
			<p class="highlight_red">Do not initialize or modify it, it is created by the zTree.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>Return</b><span>JSON</span></h4>
	<pre xmlns=""><code>{
	checked: true, //As same as 'treeNode.checked'
	half: true  //Rule the table below
}</code></pre>
	<table width="100%" border="0" cellspacing="1" cellpadding="0">
		<thead>
			<tr><td colspan="4">setting.check.checkType = "checkbox"</td></tr>
			<tr><td>treeNode.checked</td><td>treeNode.check_Child_State</td><td>treeNode.halfCheck</td><td> half </td></tr>
		</thead>
		<tbody>
			<tr><td>-</td><td>-</td><td>true</td><td>true</td></tr>
			<tr><td colspan="4">&nbsp;</td></tr>
			<tr><td>true</td><td>-1</td><td>false</td><td>false</td></tr>
			<tr><td>true</td><td>0</td><td>false</td><td>true</td></tr>
			<tr><td>true</td><td>1</td><td>false</td><td>true</td></tr>
			<tr><td>true</td><td>2</td><td>false</td><td>false</td></tr>
			<tr><td colspan="4">&nbsp;</td></tr>
			<tr><td>false</td><td>-1</td><td>false</td><td>false</td></tr>
			<tr><td>false</td><td>0</td><td>false</td><td>false</td></tr>
			<tr><td>false</td><td>1</td><td>false</td><td>true</td></tr>
			<tr><td>false</td><td>2</td><td>false</td><td>true</td></tr>
		</tbody>
	</table>
	<br/>
	<table width="100%" border="0" cellspacing="1" cellpadding="0">
		<thead>
			<tr><td colspan="4">setting.check.checkType = "radio"</td></tr>
			<tr><td>treeNode.checked</td><td>treeNode.check_Child_State</td><td>treeNode.halfCheck</td><td> half </td></tr>
		</thead>
		<tbody>
			<tr><td>-</td><td>-</td><td>true</td><td>true</td></tr>
			<tr><td colspan="4">&nbsp;</td></tr>
			<tr><td>true</td><td>-1</td><td>false</td><td>false</td></tr>
			<tr><td>true</td><td>0</td><td>false</td><td>false</td></tr>
			<tr><td>true</td><td>2</td><td>false</td><td>true</td></tr>
			<tr><td colspan="4">&nbsp;</td></tr>
			<tr><td>false</td><td>-1</td><td>false</td><td>false</td></tr>
			<tr><td>false</td><td>0</td><td>false</td><td>false</td></tr>
			<tr><td>false</td><td>2</td><td>false</td><td>true</td></tr>
		</tbody>
	</table>
	</div>
	<h3>Examples of treeNode</h3>
	<h4>1. Get the first root node's half-checked status</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var halfCheck = treeObj.getNodes()[0].getCheckStatus();
</code></pre>
</div>
</div>
