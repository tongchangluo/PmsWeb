<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(obj, zSetting, zNodes)</span><span class="path">$.fn.zTree.</span>init</h2>
	<h3>Overview<span class="h3_info">[ depends on <span class="highlight_green">jquery.ztree.core</span> js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>This method is used to create a zTree.</p>
			<p>1. The web page must use the W3C DTD. For example: &lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"&nbsp;&nbsp; &nbsp;"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;</p>
			<p>2. Needs jquery-1.4.2.js or better.</p>
			<p>3. Needs jquery-ztree.core-3.0.js or better.
                            If you are using edit mode or checkbox / radio mode, 
                            make sure you load jquery-ztree.exedit-3.0.js and jquery-ztree.excheck-3.0.js.</p>
			<p>4. Needs zTreeStyle.css and image files</p>
			<p>5. If you plan to use custom icons, please refer to the Demo, 
                            or see the help on iconSkin.</p>
			<p>6. Note: You need to set zTree container's class name to "ztree". 
                            If you need to change it, don't forget to modify the css file. 
                            If you need other special styles, you can modify the css file.</p>
		</div>
	</div>
	<h3>Function Parameter Descriptions</h3>
	<div class="desc">
	<h4><b>object</b><span>jQuery Object</span></h4>
	<p>DOM Container for zTree</p>
	<h4 class="topLine"><b>zSetting</b><span>JSON</span></h4>
	<p>zTree's configuration data, please refer to "setting details" in the API Document.</p>
	<h4 class="topLine"><b>zNodes</b><span>Array(JSON) / JSON</span></h4>
	<p>zTree's node data, please refer to "treeNode data details" in the API Document.</p>
	<p class="highlight_red">1. zTree v3.x support to add single node, that is, if only to add one node, 
                you can use JSON without using Array.</p>
	<p class="highlight_red">2. If you are planning on using asynchronous loading of root nodes, set it to null or [ ]</p>
	<p class="highlight_red">3. If you are using simple data mode, please refer to "setting.data.simpleData" in the API Document.</p>
	<h4 class="topLine"><b>Return </b><span>JSON</span></h4>
	<p>zTree object</p>
	<p>This object can provide the methods of operate the zTree</p>
	<p class="highlight_red">You can use $.fn.zTree.getZTreeObj method at any time to obtain.</p>
	</div>
	<h3>Examples of setting & function</h3>
	<h4>1. create a simple tree</h4>
	<pre xmlns=""><code>&lt;!DOCTYPE html&gt;
&lt;HTML&gt;
 &lt;HEAD&gt;
  &lt;TITLE&gt; ZTREE DEMO &lt;/TITLE&gt;
  &lt;meta http-equiv="content-type" content="text/html; charset=UTF-8"&gt;
  &lt;link rel="stylesheet" href="zTreeStyle/zTreeStyle.css" type="text/css"&gt;
  &lt;script type="text/javascript" src="jquery-1.4.2.js"&gt;&lt;/script&gt;
  &lt;script type="text/javascript" src="jquery.ztree.core.js"&gt;&lt;/script&gt;
&lt;!--
  &lt;script type="text/javascript" src="jquery.ztree.excheck.js"&gt;&lt;/script&gt;
  &lt;script type="text/javascript" src="jquery.ztree.exedit.js"&gt;&lt;/script&gt;
--&gt;
  &lt;SCRIPT type="text/javascript" &gt;
	var zTreeObj,
	setting = {
		view: {
			selectedMulti: false
		}
	},
	zTreeNodes = [
		{"name":"Site Map", open:true, children: [
			{ "name":"google", "url":"http://www.google.com", "target":"_blank"},
			{ "name":"baidu", "url":"http://baidu.com", "target":"_blank"},
			{ "name":"sina", "url":"http://www.sina.com.cn", "target":"_blank"}
			]
		}
	];

	$(document).ready(function(){
		zTreeObj = $.fn.zTree.init($("#tree"), setting, zTreeNodes);

	});
  &lt;/SCRIPT&gt;
 &lt;/HEAD&gt;

&lt;BODY&gt;
&lt;ul id="tree" class="ztree" style="width:230px; overflow:auto;"&gt;&lt;/ul&gt;
 &lt;/BODY&gt;
&lt;/HTML&gt;</code></pre>
</div>
</div>
