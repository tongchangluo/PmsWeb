

$(document).ready(function(){
	var path = $("#path").val();//绝对路径
	var bldId;//楼盘ID
	var rsdcId;//查询房产ID
	var name;//楼盘名称
	var zTreeObj;//树形菜单对象 
	var setting;//树形菜单配置
	var planHtml = "plan.html";//房产页面
	var housesHtml = "right.html";//楼宇页面
	var flag = true ;//限制表单提交的频率
	
	initHtml();//页面初始化，加载房产下拉框信息
	
	/**
	 * 页面初始化，加载房产下拉框信息
	 */
	function initHtml() {
		html(housesHtml,null);;//楼宇页面
		$.ajax({
			type : "GET",//请求类型
			url : path + "/bldProperty/getRsdcName.json",//请求的url
			dataType : "json",//ajax接口（请求url）返回的数据类型
			success : function(datas) {//data：返回数据（json对象）
				if (datas != null) {
					$("#selects").html("");
					var options = "<option value=\"0\">请选择</option>";
					for (var i = 0; i < datas.length; i++) {
						options += "<option value=\""+datas[i].rsdcId+"\" >"
								+ datas[i].rsdcName + "</option>";
					}
					$("#selects").html(options);
				}
			},
			error : function(data) {//当访问时候，404，500 等非200的错误状态码
					layer.msg('加载房产信息出错', {offset: 't',anim: 6,time: 3000});
				}
			});
	}
	
	/**
	 * 选择一个房产加载树形菜单
	 */
	$("#selects").change(function() {
		rsdcId = $("#selects").find("option:selected").val();//获取房产的ID
		name = $("#selects").find("option:selected").text();//获取房产名
		
		zTreemenu(rsdcId, name);	//请求树形菜单 
		zTreeObj = $.fn.zTree.init($("#treeDemo"), setting);//生成树形菜单
	});
	
	/**
	 * 请求树形菜单
	 */
	function zTreemenu(rsdcIds, names) {
		setting = {
				view : {
					txtSelectedEnable : false,
					dblClickExpand : true
				},
				//异步处理
			async : {
				autoParam : [],
				dataFilter : null,
				dataType : 'text',
				enable : true, //是否异步
				otherParam : [ "rsdcId", rsdcIds, "name", names ],//传递参数
				type : "post",
				url : path + "/bldProperty/zTreemenu.json" //加载的服务器地址		    	
			},
			//配置点击事件
			callback : {
				beforeExpand: zTreeBeforeExpand,
				onClick : zTreeOnClick
			},
			//配置基本参数
			data : {
				simpleData : {
					enable : true,
					idKey : "id",
					pIdKey : "pId",
					rootPId : 0
					}
				}
			};
	}
	
	/**
	 * 没有子节点的父节点，不进行异步加载
	 */
	function zTreeBeforeExpand(event, treeId, treeNode, msg){
		var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
		var sNodes = treeObj.getNodes();
		sNodes[0].zAsync = true;
	}
	
	/**
	 * 树形菜单节点点击事件
	 */
	function zTreeOnClick(event, treeId, treeNode) {
		var flag = treeNode.isParent;//判断是子级还是父级，返回布尔类型，true是父级，false是子级
		if (flag) {//点击父节点
			rsdcId = treeNode.value;
			html(planHtml,treeNode.value);
		} else {//点击子节点
			bldId = treeNode.value;
			html(housesHtml,bldId);
		}
		$("#title").text(treeNode.name);//标题名称
	};
	
	/**
	 * 请求页面
	 */
	function html(paths,Id) {
		$.ajax({
		type : "GET",//请求类型
		url : path + "/bldProperty/"+paths,//请求的url
		data:{"Id":Id},
		dataType : "html",//ajax接口（请求url）返回的数据类型
		success : function(datas) {//data：返回数据（json对象）
			if (datas != null) {
				$(".ibox-content").html(datas);
			}
		},
		error : function(data) {//当访问时候，404，500 等非200的错误状态码
			layer.msg('加载页面信息出错', {offset: 't',anim: 6,time: 3000});
			}
		});
	}
	
	/**
	 * 楼盘表单验证
	 */
	function check() {
		var vals = $("#type option:selected").val();
		//判断是否选了楼宇
		if(bldId=="" || bldId==null){
			layer.tips('请在菜单里选择楼宇!', '#selects', {
				  tips: [3, '#78BA32'],
				  time: 2000
				});
			$("#selects").focus();
			return false;
		}
		//判断楼宇类型
		if(vals=="" || vals==null){
			layer.tips('请选择楼宇类型!',"#type");
			$("#type").focus();
			return false;
		}
		
		return true;
	}
	
	/**
	 * 楼盘表单提交
	 */
	$(".ibox-title").on('click','#submit1',function(){
		var bool = check();//表单验证
		var frompath = "form1";
		var formobj = $("#form1");
		if(bool && flag){
			flag = false;
			formSubmit(frompath,formobj,housesHtml);
			setTimeout(function(){flag = true;}, 3000);
		}
	});	
	
	/**
	 * 房产路灯、化粪池表单提交
	 */	
	$(".ibox-title").on('click','#submit2',function(){
		var frompath = "form2";
		var formobj = $("#form2");
		if(flag){
			flag = false;
			formSubmit(frompath,formobj,planHtml);//调用提交方法
			setTimeout(function(){flag = true;}, 3000);
		}
	});	
	
	
	/**
	 * 提交表单
	 */
	function formSubmit(paths,obj,Html){
		$.ajax({
		type : "POST",//请求类型
		url : path + "/bldProperty/"+paths,//请求的url
		data : obj.serialize(),
		dataType : "json",//ajax接口（请求url）返回的数据类型
		contentType : "application/x-www-form-urlencoded",
		success : function(datas) { ///data：返回数据（json对象）
			if (datas.info == "succeed") {
				layer.msg('保存成功', {offset: 't',anim: 6,time: 2000});
			} else if (datas.info == "failure") {
				layer.msg('保存失败', {offset: 't',anim: 6,time: 2000});
			}
			html(Html,datas.id);
		},
		error : function() {
				layer.msg('表单提交出错', {offset: 't',anim: 6,time: 3000});
			}
		});
	}

});	

	