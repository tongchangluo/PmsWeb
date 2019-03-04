<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(parentNode, [index], newNodes, isSilent)</span><span class="path">zTreeObj.</span>addNodes</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>Add nodes</p>
			<p class="highlight_red">In order to avoid duplication data resulting from repeated initialization, zTree v3.x will automatically clone node data when zTree initialized or add nodes. If you need to get the data objects within the zTree, please get the return value of this method.</p>
			<p class="highlight_red">Please use zTree object to executing the method.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>parentNode</b><span>JSON</span></h4>
	<p>The additional node's parent node. If additional node is root node, please the parentNode is null.</p>
	<p class="highlight_red">Please ensure this node data object is a data object within zTree.</p>
	<h4><b>[index]</b><span>Number</span></h4>
	<p>The index of the parentNode's children where the newnodes will be added (the value start from 0)</p>
	<p>When index = -1, the newnodes will be added to the last</p>
	<p>This parameter can be ignore.</p>
	<p class="highlight_red">v3.5.19+</p>
	<h4 class="topLine"><b>newNodes</b><span>JSON / Array(JSON)</span></h4>
	<p>The node data's JSON object collection which need to increase, refer to 'treeNode treeNode data details'</p>
	<p class="highlight_red">1. zTree v3.x support to add single node, that is, if you only add a node, you can don't use the array.</p>
	<p class="highlight_red">2. If you use simple data model, please refer to the attributes within the 'setting.data.simpleData'.</p>
	<h4 class="topLine"><b>isSilent</b><span>Boolean</span></h4>
	<p>Set whether to automatically expand the parent node, after add nodes.</p>
	<p>isSilent = true means: don't auto expand the parent node. Otherwise auto expand.</p>
	<h4 class="topLine"><b>Return </b><span>Array(JSON)</span></h4>
	<p>return the new nodes in zTree</p>
	<p class="highlight_red">If the newNodes is single data object, the return value is a array with length is 1.</p>
	<p class="highlight_red">Note: the node data JSON object in the return value is not equal to the JSON object in the 'newNodes'.</p>
	</div>
	<h3>Examples of function</h3>
	<h4>1. Add one root node to zTree which id is 'tree'</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var newNode = {name:"newNode1"};
newNode = treeObj.addNodes(null, newNode);
</code></pre>
	<h4>2. Add three root nodes to zTree which id is 'tree'</h4>
	<pre xmlns=""><code>var treeObj = $.fn.zTree.getZTreeObj("tree");
var newNodes = [{name:"newNode1"}, {name:"newNode2"}, {name:"newNode3"}];
newNodes = treeObj.addNodes(null, newNodes);
</code></pre>
</div>
</div>
