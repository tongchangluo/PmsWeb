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
                        <h5>绿化设置</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>

                        </div>
                    </div>
                    <div class="ibox-content">
						<div style="margin-bottom: 8px; position:relative">
							<form action="psList.action" method="post">
								<span>搜索：</span>
								<select name="clnplanQueryItem" >
								<%-- selected="<c:if test='${clnplanQueryItem==plantset_no}'>false</c:if>" --%>
									<%-- <option  value="${selected}">${selected}</option> --%>
									<option value="ldcName" ${psSelected=='ldcName'?'selected':''}>所属公司</option>
									<option value="plantset_no" ${psSelected=='plantset_no'?'selected':''}>项目编号</option>
									<option value="plantset_name" ${psSelected=='plantset_name'?'selected':''}>区域名称</option>
									<option value="plantset_place" ${psSelected=='plantset_place'?'selected':''}>设置地点</option>
									<option value="plantset_charge" ${psSelected=='plantset_charge'?'selected':''}>负责人</option>
									<%-- <option value="landdevCompany" selected="<c:if test='${clnplanQueryItem==plantset_no}'>selected</c:if>">所属公司</option> --%>
								</select>
								<input name="searchWord" type="text" value="${psSearchWord}"/>
								<span style="position:absolute; right: 0px; color: black;">
									<input type="submit" value="查询" id="clnplanQuery"/>
									<a style="color:black" type="button" id="clnplanAdd" href="pageGo.action?page=plantset_table&actionType=addPS"><input type="button" value="增加" id="clnplanAdd"></a>
									<input type="button" value="删除" id="clnplanDel" />
								</span>
							</form>
						</div>
                        <table class="table table-striped table-bordered table-hover dataTables-example"  width="100%"  style="table-layout:fixed">
                            <thead>
                                <tr>
                                	<th width="40px"><input id="checkAll" type="checkbox"/></th>
                                    <th>所属公司</th>
                                    <th>项目编号</th>
                                    <th>区域名称</th>
                                    <th>绿化地段</th>
                                    <th>负责人</th>
                                    <th>绿化时间</th>
                                    <th>主要植被</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${page.list}" var="plantSet">
                              
                                <tr class="gradeA">
                                	<td width="40px"><input type="checkbox"/></td>
                                    <td title="${plantSet.landdevCompany.ldcName}">${plantSet.landdevCompany.ldcName}</td>
                                    <td title="${plantSet.plantset_no }"><a href="pageGo.action?page=plantset_table&actionType=modifyPS&plantset_no=${plantSet.plantset_no }">${plantSet.plantset_no }</a></td>
                                    <td title="${plantSet.plantset_name }">${plantSet.plantset_name }</td>
                                    <td title="${plantSet.plantset_place}">${plantSet.plantset_place}</td>
                                    <td>${plantSet.plantset_charge}</td>
                                    <td>${plantSet.plantset_date}</td>
                                    <td title='<c:forEach items="${plantSet.plantset_types}" var="plant" varStatus="i"><c:if test="${i.index>0}">,</c:if>${plant.plant_name}</c:forEach>'>
                                	<c:forEach items="${plantSet.plantset_types}" var="plant"  varStatus="i">
                                    <c:if test="${i.index>0}">,</c:if>${plant.plant_name}
                                </c:forEach></td>
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
										<a href="psList.action?currpage=1">首页</a>&nbsp;
										<a href="psList.action?currpage=${page.currpage-1}">上一页</a>/
									</c:if>
									<c:if test="${page.currpage<page.totalpage}">
										<a href="psList.action?currpage=${page.currpage+1}">下一页</a>&nbsp;
										<a href="psList.action?currpage=${page.totalpage}">尾页</a>
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
   	<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/clea/plantset/plantset.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/clea/formCheck/showmesg.js"></script>
    <!--<script src="${pageContext.request.contextPath }/statics/js/plugins/dataTables/jquery.dataTables.js"></script>-->
    <!--<script src="${pageContext.request.contextPath }/statics/js/plugins/dataTables/dataTables.bootstrap.js"></script>-->
    <script src="${pageContext.request.contextPath }/statics/js/content.min.js?v=1.0.0"></script>
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
