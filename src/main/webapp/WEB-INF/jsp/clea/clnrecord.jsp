<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:set var="cxt" value="${pageContext.request.contextPath}"></c:set>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>清洁安排</title>
    <meta name="keywords" content="物业管理系统">
    <meta name="description" content="物业管理系统">

    <link rel="shortcut icon" href="favicon.ico"> <link href="${cxt}/statics/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="${cxt}/statics/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <!-- Data Tables -->
    <link href="${cxt}/statics/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <link href="${cxt}/statics/css/animate.min.css" rel="stylesheet">
    <link href="${cxt}/statics/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <style type="text/css">
    	td{
    		overflow: hidden;
			text-overflow:ellipsis;
			white-space: nowrap;
    	}
    </style>
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="rowl">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>清洁安排</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>

                        </div>
                    </div>
                    <div class="ibox-content">
						<div style="margin-bottom: 8px; position:relative">
							<form action="${cxt}/clnrecord/recordList.html" method="post">
								<span>搜索：</span>
								<select name="recordQueryItem">
									<!-- <option value="">请选择</option> -->
									<c:choose>
										<c:when test="${recordQueryItem=='rMumber' }">
											<option value="rMumber" selected="selected">项目编号</option>
										</c:when>
										<c:otherwise>
											<option value="rMumber" >项目编号</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${recordQueryItem=='rName' }">
											<<option value="rName" selected="selected">项目名称</option>
										</c:when>
										<c:otherwise>
											<option value="rName">项目名称</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${recordQueryItem=='rPlace' }">
											<option value="rPlace" selected="selected">清洁地段</option>
										</c:when>
										<c:otherwise>
											<option value="rPlace">清洁地段</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${recordQueryItem=='rcharge' }">
											<option value="rcharge" selected="selected">清洁人</option>
										</c:when>
										<c:otherwise>
											<option value="rcharge">清洁人</option>
										</c:otherwise>
									</c:choose>
								</select>
								<input type="text" name="queryDate" value="${queryDate }"/>
								<span style="position:absolute; right: 0px; color: black;">
									<input type="submit" value="查询" id="clnrecordQuery"/>
									<input type="button" value="增加" id="clnrecordAdd" onclick="javascript:location='${cxt}/clnrecord/goclnrecord_table.html';"/>
									<input type="button" value="删除" id="clnRecordDel" />
								</span>
							</form>
						</div>
                        <table class="table table-striped table-bordered table-hover dataTables-example"  width="100%"  style="table-layout:fixed">
                            <thead>
                                <tr>
                                	<th width="40px"><input type="checkbox" id="allcln" value="clnrecord"/></th>
                                    <th>所属公司</th>
                                    <th>项目编号</th>
                                    <th>项目名称</th>
                                    <th>清洁地段</th>
                                    <th>清洁人</th>
                                    <th>清洁时间</th>
                                    <th>清洁情况</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="clnrecord" varStatus="i" items="${page.list}">
									<tr class="gradeA">
										<td width="40px"><input type="checkbox" class="clnId" value="${clnrecord.clnrecord_id}"/></td>
										<td title="${clnrecord.landdevCompany.ldcName}">${clnrecord.landdevCompany.ldcName}</td>
										<td title="${clnrecord.cleanPlan.clnplan_no}"><a href="${cxt}/clnrecord/goclnrecordModify.html?clnrecordId=${clnrecord.clnrecord_id}" >${clnrecord.cleanPlan.clnplan_no}</a></td>
										<td title="${clnrecord.cleanPlan.clnplan_name}">${clnrecord.cleanPlan.clnplan_name}</td>
										<td title="${clnrecord.cleanPlan.clnplan_place}">${clnrecord.cleanPlan.clnplan_place}</td>
										<td>${clnrecord.clnrecord_cleaner}</td>
										<td>${clnrecord.clnrecord_date}</td>
										<td title="${clnrecord.clnrecord_situation}">${clnrecord.clnrecord_situation}</td>
									</tr>
								</c:forEach>
                            </tbody>
                            
                        </table>
                        <div>
							<div align="right">
								<span> 第${page.totalrecord <= 0?0:(page.currpage-1)*page.pagesize+1 }
									到 ${page.totalrecord > page.currpage*page.pagesize?(page.currpage*page.pagesize):(page.totalrecord) }条，
									共${page.totalrecord } 条
								</span> 
								<span> 
									<c:if test="${page.currpage > 1}">
										<a href="${cxt}/clnrecord/recordList.html
											?recordQueryItem=${recordQueryItem}
											&queryDate=${queryDate}
											&currentPageNo=1">
											首页
										</a>&nbsp;
										<a href="${cxt}/clnrecord/recordList.html
											?recordQueryItem=${recordQueryItem}
											&queryDate=${queryDate}
											&currentPageNo=${page.currpage-1<=0?1:(page.currpage-1)}">
											上一页
										</a>&nbsp;
									</c:if> 
									<c:if test="${page.totalpage > page.currpage}">
										<a href="${cxt}/clnrecord/recordList.html
											?recordQueryItem=${recordQueryItem}
											&queryDate=${queryDate}
											&currentPageNo=${page.currpage+1>page.totalpage?(page.totalpage):(page.currpage+1)}">
											下一页
										</a>&nbsp;
										<a href="${cxt}/clnrecord/recordList.html
											?recordQueryItem=${recordQueryItem}
											&queryDate=${queryDate}
											&currentPageNo=${page.totalpage }">
											尾页
										</a>
									</c:if>
								</span>
							</div>
						</div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    <script src="${cxt}/statics/js/jquery.min.js?v=2.1.4"></script>
    <script src="${cxt}/statics/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${cxt}/statics/js/plugins/jeditable/jquery.jeditable.js"></script>
    <script type="text/javascript" src="${cxt }/statics/js/jquery-3.1.0.min.js"></script>
     <script type="text/javascript" src="${cxt }/statics/js/clea/cleandel.js"></script>
    <!--<script src="${cxt}/statics/js/plugins/dataTables/jquery.dataTables.js"></script>-->
    <!--<script src="${cxt}/statics/js/plugins/dataTables/dataTables.bootstrap.js"></script>-->
    <script src="${cxt}/statics/js/content.min.js?v=1.0.0"></script>
    <script>$(document).ready(function() {
	$(".dataTables-example").dataTable();
	var oTable = $("#editable").dataTable();
	oTable.$("td").editable("http://www.gzsxt.cn/theme/example_ajax.php", {
		"callback": function(sValue, y) {
			var aPos = oTable.fnGetPosition(this);
			oTable.fnUpdate(sValue, aPos[0], aPos[1])
		},
		"submitdata": function(value, settings) {
			return {
				"row_id": this.parentNode.getAttribute("id"),
				"column": oTable.fnGetPosition(this)[2]
			}
		},
		"width": "90%",
		"height": "100%"
	})
});

function fnClickAddRow() {
	$("#editable").dataTable().fnAddData(["Custom row", "New row", "New row", "New row", "New row"])
};</script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

</body>


<!-- Mirrored from www.gzsxt.cn/theme/hplus/table_data_tables.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:02 GMT -->
</html>
