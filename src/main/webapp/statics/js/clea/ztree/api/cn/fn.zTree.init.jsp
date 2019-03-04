<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>Function(obj, zSetting, zNodes)</span><span class="path">$.fn.zTree.</span>init</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.core</span> 核心 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>zTree 初始化方法，创建 zTree 必须使用此方法</p>
			<p>1、页面需要进行 W3C 申明，例如：&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"&nbsp;&nbsp; &nbsp;"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;。</p>
			<p>2、需要首先加载 jquery-1.4.2.js 或其他更高版本的 jQuery 。</p>
			<p>3、需要加载 jquery-ztree.core-3.0.js，如果需要用到 编辑功能 或 checkbox / radio 还需要分别加载 jquery-ztree.exedit-3.0.js 和 jquery-ztree.excheck-3.0.js 。</p>
			<p>4、需要加载 zTreeStyle.css 以及 zTreeStyle 目录下的 img 文件。</p>
			<p>5、如果需要使用自定义图标请参考相应的Demo。</p>
			<p>6、请注意设置 zTree 的容器样式 class="ztree"，其中 "ztree" 这个 className，可以根据需要随意修改，别忘了修改 css 中对应名字就是了，对于容器如果需要增加其他特殊样式，可根据自己的需要进行修改。</p>
		</div>
	</div>
	<h3>Function 参数说明</h3>
	<div class="desc">
	<h4><b>obj</b><span>jQuery Object</span></h4>
	<p>用于展现 zTree 的 DOM 容器</p>
	<h4 class="topLine"><b>zSetting</b><span>JSON</span></h4>
	<p>zTree 的配置数据，具体请参考 “setting 配置详解”中的各个属性详细说明</p>
	<h4 class="topLine"><b>zNodes</b><span>Array(JSON) / JSON</span></h4>
	<p>zTree 的节点数据，具体请参考 “treeNode 节点数据详解”中的各个属性详细说明</p>
	<p class="highlight_red">1、v3.x 支持单独添加一个节点，即如果只新增一个节点，不用必须包在数组中</p>
	<p class="highlight_red">2、如果需要异步加载根节点，可以设置为 null 或 [ ]</p>
	<p class="highlight_red">3、使用简单数据模式，请参考 setting.data.simpleData 内的属性说明</p>
	<h4 class="topLine"><b>返回值</b><span>JSON</span></h4>
	<p>zTree 对象，提供操作 zTree 的各种方法，对于通过 js 操作 zTree 来说必须通过此对象</p>
	<p class="highlight_red">如果不需要自行设定全局变量保存，可以利用 $.fn.zTree.getZTreeObj 方法随时获取</p>
	</div>
	<h3>setting & function 举例</h3>
	<h4>1. 简单创建 zTree 演示</h4>
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
		{"name":"网站导航", open:true, children: [
			{ "name":"google", "url":"http://g.cn", "target":"_blank"},
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
