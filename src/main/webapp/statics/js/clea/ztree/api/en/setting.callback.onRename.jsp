<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(event, treeId, treeNode, isCancel)</span><span class="path">setting.callback.</span>onRename</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.exedit</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Callback for remove node.</p>
			<p class="highlight_red">1. If you set 'setting.callback.beforeRename',and return false, zTree will keep the editing name, and will not trigger the 'onRename' callback.</p>
			<p class="highlight_red">2. If you modify treeNode data, and use 'updateNode' function, zTree will not trigger the 'onRename' callback.</p>
			<p class="highlight_red">3. From v3.5.13, zTree will trigger this callback when user cancel edit name. please see 'isCancel' parameter.</p>
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
	<p>JSON data object of the node which was rename.</p>
	<h4 class="topLine"><b>isCancel</b><span>Boolean</span></h4>
	<p>the status about cancel edit name (v3.5.13+)</p>
	<p class="highlight_red">isCancel = true means: user cancel edit name. (press ESC or use cancelEditName() function)</p>
	<p class="highlight_red">isCancel = false means: user submit edit name.</p>
	</div>
	<h3>Examples of setting & function</h3>
	<h4>1. When rename node, alert info about 'tId' and 'name'.</h4>
	<pre xmlns=""><code>function myOnRename(event, treeId, treeNode, isCancel) {
	alert(treeNode.tId + ", " + treeNode.name);
}
var setting = {
	callback: {
		onRename: myOnRename
	}
};
......</code></pre>
</div>
</div>
