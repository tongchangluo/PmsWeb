$(function () {
	//保存时的校验方法
	$(".save").click(function() {
		 var ldcName = $("#ldcName option:selected").val();
		 var planNo = $("#planNo").val();
		 var planName = $("#planName").val();
		 var planPlace = $("#planPlace").val();
	     var planCharge = $("#planCharge").val();
		 var planSummary =$("#planSummary").val();
		 var planRemark = $("#planRemark").val();
		 var issucc=true;
		 if(ldcName==null || ldcName==""){
			 $("#ldcName").next().text("请选择所属公司");
			 issucc=false;
		 }
		 if(planNo==null || planNo==""){
			 $("#planNo").next().text("请输入项目编号");
			 issucc=false;
		 }else if(planNo.length>255){
			 $("#planNo").next().text("不能大于255个字符");
			 issucc=false;
		 }
		 if(planName==null || planName==""){
			 $("#planName").next().text("请输入项目名称");
			 issucc=false;
		 }else if(planName.length>255){
			 $("#planName").next().text("不能大于255个字符");
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
		 if(planSummary.length>255){
			 $("#planSummary").next().text("不能大于255个字符");
			 issucc=false;
		 }
		 if(planRemark.length>255){
			 $("#planRemark").next().text("不能大于255个字符");
			 issucc=false;
		 }
		 if(issucc){
			 return true;
			 /*document.clnplanSubmit.action="clnplan/addClnplan";
			 document.clnplanSubmit.submit();*/
		 }else{
			 return false;
		 }
	});
}); 
		
