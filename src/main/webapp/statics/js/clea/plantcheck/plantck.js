$(function(){

	$("#plantCkDel").click(function(){
		var idList=[];
		$("tbody tr>td:first-child").each(function(){
			if($(this).find("input").is(":checked")){		//检查当前元素节点下的checkbox是否被选中
				idList.push($(this).children("input").val());					//获取此idList的值
			}		
		})
		if(idList.length>0){
			$.ajax({
				url:"delPlantCheck.action",
				type:"POST",
				contentType:"application/json",
				data:JSON.stringify(idList),
				dataType:"json",
				success:function(data){
					if(data.action=="success"){
						showMesgWindow("删除成功！","green");
					}
				},
				error:function(){
					showMesgWindow("删除失败！","red");
				}
			})
		}else{
			showMesgWindow("请勾选要删除的记录！","red");
		}
	})
})


