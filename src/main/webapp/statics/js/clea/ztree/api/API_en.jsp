<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>API Document [zTree -- jQuery tree plug-ins.]</title>
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
			var lang = "en",
			ajaxMsg = "If you use chrome browser, please copy the API files to local webserver. \n\n( because chrome browser can't allow AJAX access to 'file://' )";
		</script>
	</head>
	<body>
		<div id="header_wrap" class="header_wrap" style="padding-top: 30px;">
			<div id="header" class="header round">
				<div class="light-bulb" alt=""></div>
				<div class="ieSuggest">If you use the Chrome / FireFox / Opera / IE9 browser will be even more dazzling effect!</div>
				<div class="google_plus"><g:plusone></g:plusone></div>
				<div class="header-text">
					<h1><em>zTree v3.5.24 API Document</em></h1><p></p>
					<p>all.js = core + excheck + exedit ( without exhide ); if you found some mistakes please contact me.</p>
				</div>
				<ul class="shortcuts language" style="top:0;">
					<li><a href="API_cn.jsp" onclick="window.location.href='API_cn.jsp'"><button class="ico cn" title="Chinese" type="button"></button><span class=""></span></a></li>
				</ul>
			</div>
		</div>
		<div id="content_wrap" class="content_wrap">
			<div id="content" class="content">
				<div class="nav_section">
					<ul>
						<li class="first">Notes: </li>
						<li><button class="ico16 z_core" onfocus="this.blur();"></button><span>core package</span></li>
						<li><button class="ico16 z_check" onfocus="this.blur();"></button><span>excheck pack</span></li>
						<li><button class="ico16 z_edit" onfocus="this.blur();"></button><span>exedit pack</span></li>
						<li><button class="ico16 z_hide" onfocus="this.blur();"></button><span>exhide pack</span></li>
						<li class="noline">
							<button class="ico16 z_search" onfocus="this.blur();" title="'Enter', 'left' and 'right' key can locate the search results quickly."></button>
							<input type="text" class="searchKey search empty" value=""><input type="text" class="searchResult search" value="">
							<button class="ico16 searchPrev disabled" onfocus="this.blur();" title="'Enter', 'left' and 'right' key can locate the search results quickly."></button><button class="ico16 searchNext disabled" onfocus="this.blur();" title="'Enter', 'left' and 'right' key can locate the search results quickly."></button>
						</li>
					</ul>
				</div>

				<div id="contentBox" class="contentBox round clearfix">
					<div id="apiContent" class="apiContent">
						<div id="api_setting" class="api_setting left">
							<ul class="api_content_title"><li>setting details</li></ul>
							<ul id="settingTree" class="ztree"></ul>
						</div>
						<div id="api_function" class="api_function right">
							<ul class="api_content_title"><li>zTree method details</li></ul>
							<ul id="functionTree" class="ztree"></ul>
							<ul class="api_content_title"><li>treeNode data details</li></ul>
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
					<button class="ico16 z_search" onfocus="this.blur();" title="'Enter', 'left' and 'right' key can locate the search results quickly."></button>
					<input type="text" class="searchKey search empty" value=""><input type="text" class="searchResult search" value="">
					<button class="ico16 searchPrev disabled" onfocus="this.blur();" title="'Enter', 'left' and 'right' key can locate the search results quickly."></button><button class="ico16 searchNext disabled" onfocus="this.blur();" title="'Enter', 'left' and 'right' key can locate the search results quickly."></button>
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
