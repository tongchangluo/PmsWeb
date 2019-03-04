<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>JSON</span><span class="path">setting.check.</span>chkboxType</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.excheck</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>勾选 checkbox 对于父子节点的关联关系。<span class="highlight_red">[setting.check.enable = true 且 setting.check.chkStyle = "checkbox" 时生效]</span></p>
			<p>默认值：{ "Y": "ps", "N": "ps" }</p>
		</div>
	</div>
	<h3>JSON 格式说明</h3>
	<div class="desc">
	<p>Y 属性定义 checkbox 被勾选后的情况；
<br/>N 属性定义 checkbox 取消勾选后的情况；
<br/>"p" 表示操作会影响父级节点；
<br/>"s" 表示操作会影响子级节点。</p>
	<p class="highlight_red">请注意大小写，不要改变</p>
	</div>
	<h3>setting 举例</h3>
	<h4>1. checkbox 勾选操作，只影响父级节点；取消勾选操作，只影响子级节点</h4>
	<pre xmlns=""><code>var setting = {
	check: {
		enable: true,
		chkStyle: "checkbox",
		chkboxType: { "Y": "p", "N": "s" }
	}
};
......</code></pre>
</div>
</div>
