$(function() {
	//获得清洁安排列表
	$("#ldcName").change(function(){
		var planid=$("#planName option:selected").val();
		var ldcId = $("#ldcName option:selected").val();
		$.ajax({
				url:"getclnplan.html",
				data:{"ldcId":ldcId},
				type:"POST",
				dataType:"JSON",
				success:function(data){
					$("#planName").empty();
					$("#planName").append("<option value='0'>请选择</option>");
					for(var i=0;i<data.length;i++){
						if(data[i].clnplan_id==planid){
							$("#planName").append("<option value='"+data[i].clnplan_id+"' selected>"+data[i].clnplan_name+"</option>");
						}else{
							$("#planName").append("<option value='"+data[i].clnplan_id+"' >"+data[i].clnplan_name+"</option>");
						}
					}
				},
				error:function(XMLHttpRequest, textStatus, errorThrown){
			    	alert("请求失败");
			    }
		});
	});
	
	 $("#clnplanId").on("change","#planName",function () {//使用on事件绑定：$(父级元素).on("事件(click)","触发的元素(要点击元素)",function(){})
		 var planid=$("#planName option:selected").val();
		 if(planid!=0&&planid!=""&&planid!=null){
			 $.ajax({
					url:"getclnplaninfo.html",
					data:{"planid":planid},
					type:"POST",
					dataType:"JSON",
					success:function(data){
						$("#planPlace").val("");
						$("#planPlace").val(data.clnplan_place);
						$("#planCharge").val("");
						$("#planCharge").val(data.clnplan_charge);
					},
					error:function(XMLHttpRequest, textStatus, errorThrown){
				    	alert("请求失败");
				    }
			 });
		 }
	 });
	//保存时的校验方法
	$(".save").click(function() {
			 var ldcName = $("#ldcName option:selected").val();
			 var planNo = $("#planName option:selected").val();
			 var planPlace = $("#planPlace").val();
		     var planCharge = $("#planCharge").val();
			 var recordCleaner =$("#recordCleaner").val();
			 var recordSummary = $("#recordSummary").val();
			 var planRemark = $("#recordRemark").val();
			 var issucc=true;
			 if(ldcName==null || ldcName==""){
				 $("#ldcName").next().text("请选择所属公司");
				 issucc=false;
			 }
			 if(planNo==null || planNo=="" || planNo==0){
				 $("#planName").next().text("请选择项目");
				 issucc=false;
			 }
			 if(recordCleaner==null || recordCleaner==""){
				 $("#recordCleaner").next().text("请输入清洁人");
				 issucc=false;
			 }else if(recordCleaner.length>255){
				 $("#recordCleaner").next().text("不能大于255个字符");
				 issucc=false;
			 }
			 if(planPlace.length>255){
				 $("#planPlace").next().text("不能大于255个字符");
				 issucc=false;
			 }
			 if(planCharge.length>255){
				 $("#planCharge").next().text("不能大于255个字符");
				 issucc=false;
			 }
			 if(recordSummary.length>255){
				 $("#recordSummary").next().text("不能大于255个字符");
				 issucc=false;
			 }
			 if(planRemark.length>255){
				 $("#planRemark").next().text("不能大于255个字符");
				 issucc=false;
			 }
			 if(issucc){
				 return true;
			 }else{
				 return false;
			 }
	});	
});