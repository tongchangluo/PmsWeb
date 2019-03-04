<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>物业管理——植被信息</title>
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

    <script src="${pageContext.request.contextPath }/statics/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath }/statics/js/plugins/jeditable/jquery.jeditable.js"></script>
    <!--<script src="${pageContext.request.contextPath }/statics/js/plugins/dataTables/jquery.dataTables.js"></script>-->
    <!--<script src="${pageContext.request.contextPath }/statics/js/plugins/dataTables/dataTables.bootstrap.js"></script>-->
    <script src="${pageContext.request.contextPath }/statics/js/content.min.js?v=1.0.0"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/forPlant.js"/>
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
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="rowl">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>植被信息</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>

                        </div>
                    </div>
                    <div class="ibox-content">
						<div style="margin-bottom: 8px; position:relative">
							<form id="plantQueryForm" action="" method="post">
								<span>快速检索：</span>
								<select id="plantQueryItemColmunName" name="plantQueryItem">
									<option value="plant_no" selected>植被编码</option>
									<option value="plant_name">植被名称</option>
									<option value="plant_type">植物种类</option>
									<option value="plant_age">树龄</option>
                                    <option value="plant_quantity">数量</option>
								</select>
                                <input id="theSelectedQueryColmunName" type="hidden" value="" />
								<input id="plantQueryItemClomunValue" type="text" required />
                                <span id="checkTheColmunValue" style="color:red"></span>
                                <input id="theSelectedQueryColmunValue" type="hidden" value="" />
								<span style="position:absolute; right: 0px; color: black;">
									<input type="button" value="查询" id="plantQuery"/>
									<input type="button" value="增加" id="plantAdd" onclick="javascript:location='${pageContext.request.contextPath }/plant_addtable';"/>
									<input type="button" value="删除" id="plantDel" />
								</span>
							</form>
						</div>
                        <table class="table table-striped table-bordered table-hover dataTables-example"  width="100%"  style="table-layout:fixed">
                            <thead>
                                <tr>
                                	<th width="40px"></th>
                                    <th>所属公司</th>
                                    <th>植被编码</th>
                                    <th>植被名称</th>
                                    <th>种类</th>
                                    <th>树龄</th>
                                    <th>数量</th>
                                    <th>单位</th>
                                    <th>习性</th>
                                </tr>
                            </thead>
                            <tbody id="plantMessage">

                            </tbody>
                            
                        </table>
                        <div>
                            <span>
                                每页
                                <select id="chooseThePageSize">
                                    <option value=5 selected>5</option>
                                    <option value=10>10</option>
                                    <option value=15>15</option>
                                </select>
                                条
                            </span>
                            <div align="right" id="pageSituation">

                            </div>

						</div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>

</body>

<!-- Mirrored from www.gzsxt.cn/theme/hplus/table_data_tables.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:02 GMT -->
</html>
