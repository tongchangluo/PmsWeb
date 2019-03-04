<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(event, treeId, treeNode, clickFlag)</span><span class="path">setting.callback.</span>onClick</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Used to capture the click event when click node.</p>
			<p class="highlight_red">If you set 'setting.callback.beforeClick',and return false, zTree will not change selected state, and will not trigger the 'onClick' callback.</p>
			<p>Default: null</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>event</b><span>js event Object</span></h4>
	<p>event Object</p>
	<h4 class="topLine"><b>treeId</b><span>String</span></h4>
	<p>zTree unique identifier: <b class="highlight_red">treeId</b>.</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>JSON data object of the node which is clicked</p>
	<h4 class="topLine"><b>clickFlag</b><span>Number</span></h4>
	<p>Node is selected or deselected state, please see table below for details</p>
	<table width="100%" border="0" cellspacing="1" cellpadding="0">
		<thead><tr><td>clickFlag</td><td title="Whether to allow multi-select">selectedMulti</td><td title="Whether to press Ctrl-key or Cmd-key">autoCancelSelected<br/>&&<br/>event.ctrlKey / metaKey</td><td title="Node's selection state">isSelected</td><td>operate for selected</td></tr></thead>
		<tbody>
			<tr><td>1</td><td>true</td><td>false</td><td>false</td><td>node is selected (single)</td></tr>
			<tr><td>1</td><td>true</td><td>false</td><td>true</td><td>node is selected (single)</td></tr>
			<tr><td>2</td><td>true</td><td>true</td><td>false</td><td>node is selected (multi)</td></tr>
			<tr><td>0</td><td>true</td><td>true</td><td>true</td><td>node is deselected</td></tr>
			<tr><td>1</td><td>false</td><td>false</td><td>false</td><td>node is selected (single)</td></tr>
			<tr><td>1</td><td>false</td><td>false</td><td>true</td><td>node is selected (single)</td></tr>
			<tr><td>1</td><td>false</td><td>true</td><td>false</td><td>node is selected (single)</td></tr>
			<tr><td>0</td><td>false</td><td>true</td><td>true</td><td>node is deselected</td></tr>
		</tbody>
	</table>
	</div>
	<h3>Examples of setting & function</h3>
	<h4>1. When click node, alert info about 'tId' and 'name'.</h4>
	<pre xmlns=""><code>function myOnClick(event, treeId, treeNode) {
    alert(treeNode.tId + ", " + treeNode.name);
};
var setting = {
	callback: {
		onClick: myOnClick
	}
};
......</code></pre>
</div>
</div>
