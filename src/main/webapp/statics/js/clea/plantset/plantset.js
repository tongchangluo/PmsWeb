$(function(){

	$("#clnplanDel").click(function(){
		var noList=[];
		$("tbody tr>td:first-child").each(function(){
			
			if($(this).find("input").is(":checked")){		//检查当前元素节点下的checkbox是否被选中
				noList.push($(this).next().next().attr("title"));	//获取此元素的后第二个兄弟元素的title值
			}	
		})
		if(noList.length>0){
			if(confirm("删除植被设置将同时删除相关绿化检查记录，是否继续删除？")){
				$.ajax({
					url:"delPlantSet.action",
					type:"POST",
					contentType:"application/json",
					data:JSON.stringify(noList),
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
			}
		}else{
			showMesgWindow("请勾选要删除的记录！","red");
		}
		
	})
	
	
})


