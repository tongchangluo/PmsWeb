$(function() {
	$("#allcln").click(function() { //点击全选按钮
		/*alert($("#allcln").is(":checked")); 全选按钮：true选中  false不选中*/
		$(".clnId:checkbox").prop("checked", $("#allcln").is(":checked")); 
	});
	
	//删除安排
	$("#clnPlnDel").click(function(){
		var clnIds = new Array();
		if($(".clnId:checkbox").is(":checked")){
			if(confirm('你确认要删除所选记录?')){
				$(".clnId:checkbox:checked").each(function(){
					clnIds.push($(this).val());
				});
				$.ajax({
					url:"delClnplan.html",
					data:{"clnIds":clnIds},
					type:"POST",
					dataType:"JSON",
					traditional: true,//因为传递数组时，参数名后面会自动加'[]'设置为true后将去掉
					success:function(data){
						if(data == true){
							alert("删除成功！");
							location.href="clnplanList.html";
						}else if(data == false){
							alert("删除失败！");
						}else{
							var outPrint = "";
							for(var i=0;i<data.length;i++){
								outPrint=outPrint+data[i]+"  ";
							}
							alert("项目编号："+outPrint+"已关联清洁记录，不能删除！");
							location.href="clnplanList.html";
						}
					},
					error:function(XMLHttpRequest, textStatus, errorThrown){
					   	alert("请求失败");
					}
				 });
			}
			
		}else{
			alert("请选择需删除记录！");
		}
	});
	
	//删除记录
	$("#clnRecordDel").click(function(){
		var clnIds = new Array();
		if($(".clnId:checkbox").is(":checked")){
			if(confirm('你确认要删除所选记录?')){
				$(".clnId:checkbox:checked").each(function(){
					clnIds.push($(this).val());
				});
				$.ajax({
					url:"delRecord.html",
					data:{"clnIds":clnIds},
					type:"POST",
					dataType:"JSON",
					traditional: true,//因为传递数组时，参数名后面会自动加'[]'设置为true后将去掉
					success:function(data){
						if(data == true){
							alert("删除成功！");
							location.href="recordList.html";
						}else{
							alert("删除失败！");
						}
					},
					error:function(XMLHttpRequest, textStatus, errorThrown){
				    	alert("请求失败");
				    }
				});
			}
			
		}else{
			alert("请选择需删除记录！");
		}
	});
	
	
	
	
});