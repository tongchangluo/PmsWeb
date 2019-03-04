<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>API 文档 [zTree --  jQuery 树插件]</title>
		<link rel="stylesheet" href="apiCss/common.css" type="text/css">
		<link rel='stylesheet' href='apiCss/zTreeStyleForApi.css' type='text/css'>
		<script type="text/javascript">
			var ie = (function(){
				var undef,
				v = 3,
				div = document.createElement('div'),
				all = div.getElementsByTagName('i');
				while (
				div.innerHTML = '<!--[if gt IE ' + (++v) + ']><i></i><![endif]-->',
				all[0]
			);
				return v > 4 ? v : undef;
			}()), ie6 = (ie === 6),
			path = window.location.pathname.replace(/.*\/([^\/\.]*)\..*/g,"$1"),
			langLib = [];
			ie = ie<9;
			if(ie) {
				document.write('<link rel="stylesheet" href="apiCss/common_ie6.css" type="text/css">');
			}
			var lang = "cn",
			ajaxMsg = "如果你使用的是 Chrome 浏览器，那么请把 API 文档发布到 web 服务目录下访问。\n\n（Chrome 浏览器不支持本地 ajax 访问, 即：file://）";

		</script>
	</head>
	<body>
		<div id="header_wrap" class="header_wrap" style="padding-top: 30px;">
			<div id="header" class="header round">
				<div class="light-bulb" alt=""></div>
				<div class="ieSuggest">浏览本网站建议您使用 Chrome、FireFox、Opera、IE9 等浏览器（只要不是 IE6 7 8 就行）, 速度会更快，画面会更炫！</div>
				<div class="google_plus"><g:plusone></g:plusone></div>
				<div class="header-text">
					<h1><em>zTree v3.5.24 API 文档</em></h1><p></p>
					<p>all.js = core + excheck + exedit ( 不包括 exhide ); 发现错误请及时通知，谢谢。</p>
				</div>
				<ul class="shortcuts language" style="top:0;">
					<li><a href="API_en.jsp" onclick="window.location.href='API_en.jsp'"><button class="ico en" title="英文版" type="button"></button><span class=""></span></a></li>
				</ul>
			</div>
		</div>
		<div id="content_wrap" class="content_wrap">
			<div id="content" class="content">
				<div class="nav_section">
					<ul>
						<li class="first">注释：</li>
						<li><button class="ico16 z_core" onfocus="this.blur();"></button><span>core 核心包</span></li>
						<li><button class="ico16 z_check" onfocus="this.blur();"></button><span>excheck 扩展</span></li>
						<li><button class="ico16 z_edit" onfocus="this.blur();"></button><span>exedit 扩展</span></li>
						<li><button class="ico16 z_hide" onfocus="this.blur();"></button><span>exhide 扩展</span></li>
						<li class="noline">
							<button class="ico16 z_search" onfocus="this.blur();" title="Enter 以及 左、右键可以快速定位查找结果"></button>
							<input type="text" class="searchKey search empty" value=""><input type="text" class="searchResult search" value="">
							<button class="ico16 searchPrev disabled" onfocus="this.blur();" title="Enter 以及 左、右键可以快速定位查找结果"></button><button class="ico16 searchNext disabled" onfocus="this.blur();" title="Enter 以及 左、右键可以快速定位查找结果"></button>
						</li>
					</ul>
				</div>

				<div id="contentBox" class="contentBox round clearfix">
					<div id="apiContent" class="apiContent">
						<div id="api_setting" class="api_setting left">
							<ul class="api_content_title"><li>setting 配置详解</li></ul>
							<ul id="settingTree" class="ztree"></ul>
						</div>
						<div id="api_function" class="api_function right">
							<ul class="api_content_title"><li>zTree 方法详解</li></ul>
							<ul id="functionTree" class="ztree"></ul>
							<ul class="api_content_title"><li>treeNode 节点数据详解</li></ul>
							<ul id="treenodeTree" class="ztree"></ul>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>

		<!-- overlayed -->
		<div id="overlayDiv" class="baby_overlay">
			<div id="overlayContent" class="content round clearfix">
				<div class="overlaySearch">
					<button class="ico16 z_search" onfocus="this.blur();" title="Enter 以及 左、右键可以快速定位查找结果"></button>
					<input type="text" class="searchKey search empty" value=""><input type="text" class="searchResult search" value="">
					<button class="ico16 searchPrev disabled" onfocus="this.blur();" title="Enter 以及 左、右键可以快速定位查找结果"></button><button class="ico16 searchNext disabled" onfocus="this.blur();" title="Enter 以及 左、右键可以快速定位查找结果"></button>
				</div>
				<a id="overlayDivCloseBtn" class="close"></a>
				<div id="overlayDetailDiv" class="details"></div>
			</div>
			<div id="overlayDivArrow" class="baby_overlay_arrow"></div>
		</div>
		<script type="text/javascript" src="apiCss/jquery-1.6.2.min.js"></script>
		<script type='text/javascript' src='apiCss/jquery.ztree.core.js'></script>
		<script type='text/javascript' src='apiCss/api.js'></script>
		<script type="text/javascript">
			$(document).ready(function(){
				apiContent._init();
			});
		</script>
	</body>
</html>
