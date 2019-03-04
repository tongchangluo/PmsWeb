<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(treeId, treeNode, newName, isCancel)</span><span class="path">setting.callback.</span>beforeRename</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.exedit</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Specify callback function to be called before rename(when input DOM blur or press Enter Key), The return value controls the  allow to rename node.</p>
			<p class="highlight_red">When node is editing name, press the ESC key to restore the original name and stop edit name.</p>
			<p class="highlight_red">From v3.5.13, zTree will trigger this callback when user cancel edit name. please see 'isCancel' parameter.</p>
			<p>Default: null</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>treeId</b><span>String</span></h4>
	<p>zTree unique identifier: <b class="highlight_red">treeId</b>.</p>
	<h4 class="topLine"><b>treeNode</b><span>JSON</span></h4>
	<p>JSON data object of the node to be rename.</p>
	<h4 class="topLine"><b>newName</b><span>String</span></h4>
	<p>the new name</p>
	<h4 class="topLine"><b>isCancel</b><span>Boolean</span></h4>
	<p>the status about cancel edit name (v3.5.13+)</p>
	<p class="highlight_red">isCancel = true means: user cancel edit name. (press ESC or use cancelEditName() function)</p>
	<p class="highlight_red">isCancel = false means: user submit edit name.</p>
	<h4 class="topLine"><b>Return </b><span>Boolean</span></h4>
	<p>return true or false</p>
	<p class="highlight_red">If return false, the treeNode will keep the editing name, don't trigger the 'onRename' callback, and will ignore other enents, until the callback return true.</p>
	<p class="highlight_red">If returns false, zTree will not set the input box to get focus to avoid the warning message which led to repeated triggering ‘beforeRename’ callback. Please use editName() method to set the input box to get focus when user close the warning message.</p>
	</div>
	<h3>Examples of setting & function</h3>
	<h4>1. the length of the new name can't less than 5</h4>
	<pre xmlns=""><code>function myBeforeRename(treeId, treeNode, newName, isCancel) {
	return newName.length > 5;
}
var setting = {
	edit: {
		enable: true
	},
	callback: {
		beforeRename: myBeforeRename
	}
};
......</code></pre>
</div>
</div>
