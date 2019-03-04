<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="apiDetail">
<div>
	<h2><span>String</span><span class="path">setting.check.</span>chkStyle</h2>
	<h3>概述<span class="h3_info">[ 依赖 <span class="highlight_green">jquery.ztree.excheck</span> 扩展 js ]</span></h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p>勾选框类型(checkbox 或 radio）<span class="highlight_red">[setting.check.enable = true 时生效]</span></p>
			<p>默认值："checkbox"</p>
		</div>
	</div>
	<h3>String 格式说明</h3>
	<div class="desc">
	<p>chkStyle = "checkbox" 时，显示 checkbox 选择框，<span class="highlight_red">setting.check.chkboxType</span> 属性有效。
<br/>chkStyle = "radio" 时，显示 radio 选择框， <span class="highlight_red">setting.check.radioType</span> 属性有效。</p>
	<p class="highlight_red">请注意大小写，不要改变</p>
	</div>
	<h3>checkbox 状态说明</h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p><button type="button" class="chk checkbox_false_full"></button>未勾选；<span class="highlight_red">如果是父节点，则无子节点被勾选</span>。鼠标移到该节点上显示为：<button type="button" class="chk checkbox_false_full_focus"></button></p>
			<p><button type="button" class="chk checkbox_false_part"></button>未勾选；（只有父节点存在此状态）<span class="highlight_red">存在被勾选的子节点</span>。鼠标移到该节点上显示为：<button type="button" class="chk checkbox_false_part_focus"></button></p>
			<p><button type="button" class="chk checkbox_true_full"></button>被勾选；<span class="highlight_red">如果是父节点，则全部子节点都被勾选</span>。鼠标移到该节点上显示为：<button type="button" class="chk checkbox_true_full_focus"></button></p>
			<p><button type="button" class="chk checkbox_true_part"></button>被勾选；（只有父节点存在此状态）<span class="highlight_red">且部分或无子节点被勾选</span>。鼠标移到该节点上显示为：<button type="button" class="chk checkbox_true_part_focus"></button></p>
		</div>
	</div>
	<h3>radio 状态说明</h3>
	<div class="desc">
		<p></p>
		<div class="longdesc">
			<p><button type="button" class="chk radio_false_full"></button>未勾选；<span class="highlight_red">如果是父节点，则没有子节点被勾选</span>。鼠标移到该节点上显示为：<button type="button" class="chk radio_false_full_focus"></button></p>
			<p><button type="button" class="chk radio_false_part"></button>未勾选；（只有父节点存在此状态）<span class="highlight_red">且存在被勾选的子节点</span>。鼠标移到该节点上显示为：<button type="button" class="chk radio_false_part_focus"></button></p>
			<p><button type="button" class="chk radio_true_full"></button>被勾选；<span class="highlight_red">如果是父节点，则没有子节点被勾选</span>。鼠标移到该节点上显示为：<button type="button" class="chk radio_true_full_focus"></button></p>
			<p><button type="button" class="chk radio_true_part"></button>被勾选；（只有父节点存在此状态）<span class="highlight_red">且存在被勾选的子节点</span>。鼠标移到该节点上显示为：<button type="button" class="chk radio_true_part_focus"></button></p>
		</div>
	</div>
	<h3>setting 举例</h3>
	<h4>1. 设置选择框为 radio</h4>
	<pre xmlns=""><code>var setting = {
	check: {
		enable: true,
		chkStyle: "radio"
	}
};
......</code></pre>
</div>
</div>
