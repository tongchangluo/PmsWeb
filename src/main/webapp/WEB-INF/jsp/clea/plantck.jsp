<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>清洁安排</title>
    <meta name="keywords" content="物业管理系统">
    <meta name="description" content="物业管理系统">

    <link rel="shortcut icon" href="favicon.ico"> <link href="${pageContext.request.contextPath }/statics/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <!-- Data Tables -->
    <link href="${pageContext.request.contextPath }/statics/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath }/statics/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/css/style.min862f.css?v=4.1.0" rel="stylesheet">
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
                        <h5>绿化检查</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>

                        </div>
                    </div>
                    <div class="ibox-content">
						<div style="margin-bottom: 8px; position:relative">
							<form action="pcList.action" method="post">
								<span>搜索：</span>
								<select name="clnplanQueryItem">
									<option value="ldcName" ${pcSelected=='ldcName'?'selected':''}>所属公司</ption>
									<option value="plantset_no" ${pcSelected=='plantset_no'?'selected':''}>项目编号</option>
									<option value="plantset_name" ${pcSelected=='plantset_name'?'selected':''}>地段名称</option>
									<option value="plantck_summary" ${pcSelected=='plantck_summary'?'selected':''}>绿化情况</option>
									<option value="plantck_situation" ${pcSelected=='plantck_situation'?'selected':''}>处理状态</option>
									<option value="plantck_rummager" ${pcSelected=='plantck_rummager'?'selected':''}>负责人</option>
								</select>
								<input type="text" name="searchWord" value="${pcSearchWord}"/>
								<span style="position:absolute; right: 0px; color: black;">
									<input type="submit" value="查询" id="clnplanQuery" />
									<a style="color:black" type="button" id="clnplanAdd" href="pageGo.action?page=plantck_table&actionType=addPC"><input type="button" value="增加" id="clnplanAdd"></a>
									<input type="button" value="删除" id="plantCkDel" />
								</span>
							</form>
						</div>
                        <table class="table table-striped table-bordered table-hover dataTables-example"  width="100%"  style="table-layout:fixed">
                            <thead>
                                <tr>
                                	<th width="40px"><input id="checkAll" type="checkbox"/></th>
                                    <th>所属公司</th>
                                    <th>项目编号</th>
                                    <th>地段名称</th>
                                    <th>检查时间</th>
                                    <th>绿化情况</th>
                                    <th>处理状态</th>
                                    <th>负责人</th>
                                    <th>备注</th>
                                </tr>
                            </thead>
                            <tbody>
                            
                            	<c:forEach items="${page.list}" var="plantCheck">
                                
	                                <tr class="gradeA">
	                                	<td width="40px"><input type="checkbox" value="${plantCheck.plantck_id}"/></td>
	                                    <td title="${plantCheck.landdevCompany.ldcName}">${plantCheck.landdevCompany.ldcName}</td>
	                                    <td title="${plantCheck.plantSet.plantset_no }">${plantCheck.plantSet.plantset_no }</td>
	                                    <td title="${plantCheck.plantSet.plantset_name }">${plantCheck.plantSet.plantset_name }</td>
	                                    <td title="${plantCheck.plantck_date}">${plantCheck.plantck_date}</td>
	                                    <td title="${plantCheck.plantck_summary}"><a href="pageGo.action?page=plantck_table&actionType=modifyPC&plantck_id=${plantCheck.plantck_id}">${plantCheck.plantck_summary}</a></td>
	                                    <td title="${plantCheck.plantck_situation}">${plantCheck.plantck_situation}</td>
	                                    <td>${plantCheck.plantck_rummager}</td>
	                                    <td title="${plantCheck.plantck_remark}">${plantCheck.plantck_situation}</td>
	                                
	                                </tr>
                                	
                                </c:forEach>
                                
                            </tbody>
                            
                        </table>
                        <div>
							<div align="right">
								<span>
									<!-- 每页
									<select>
										<option>10</option>
										<option>20</option>
										<option>30</option>
									</select> -->
									显示，第
									<c:choose>
										<c:when test="${page.list.size()<page.pagesize&&page.list.size()>0}">
											${page.startrow+1} 到 ${page.startrow+page.list.size()} 条
										</c:when>
										<c:when test="${page.list.size()==page.pagesize}">
											${page.startrow+1} 到 ${page.endtrow} 条
										</c:when>
										<c:otherwise>
											0到0条
										</c:otherwise>
									</c:choose>共${page.totalrecord} 条
								</span>
								<span>
									<c:if test="${page.currpage>1}">
										<a href="pcList.action?currpage=1">首页</a>&nbsp;
										<a href="pcList.action?currpage=${page.currpage-1}">上一页</a>/
									</c:if>
									<c:if test="${page.currpage<page.totalpage}">
										<a href="pcList.action?currpage=${page.currpage+1}">下一页</a>&nbsp;
										<a href="pcList.action?currpage=${page.totalpage}">尾页</a>
									</c:if>
								</span>
							</div>
						</div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    <script src="${pageContext.request.contextPath }/statics/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath }/statics/js/plugins/jeditable/jquery.jeditable.js"></script>
    <!--<script src="${pageContext.request.contextPath }/static/js/plugins/dataTables/jquery.dataTables.js"></script>-->
    <!--<script src="${pageContext.request.contextPath }/static/js/plugins/dataTables/dataTables.bootstrap.js"></script>-->
    <script src="${pageContext.request.contextPath }/statics/js/content.min.js?v=1.0.0"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/clea/plantcheck/plantck.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/clea/formCheck/showmesg.js"></script>
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
