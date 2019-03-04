/**
	 * 消息弹框显示方法
	 */
var mesgShow=0;
	function showMesgWindow(mesg,color){
		if(mesgShow==0){
			mesgShow = 1;
			var $mesgWindow = $("<div style='z-index:999;opacity:0.8;color:"+color+";padding:10px 20px 10px 20px;text-align:center;font-size:22px;background-color:#C1C1C1;position:fixed;left:40%;top:40%;width:auto;height:50px;border-radius:6px'>"+mesg+"</div>");
			$("body").append($mesgWindow);
			$("body>div:last-child").fadeIn("slow",function(){
				setTimeout(function(){
					$("body>div:last-child").fadeOut("slow",function(){
						$("body>div:last-child").remove();
						mesgShow = 0;
						if(color=='green'){
							location.reload(true);
						}
					});
				},300);
			});
		}
	}
	

	/**
	 * 全选全不选
	 */
	$("#checkAll").change(function(){
		if($(this).is(":checked")){
			$("tr [type='checkbox']").each(function(){
				$(this).attr("checked",true);
			})
		}else{
			$("tr [type='checkbox']").each(function(){
				$(this).attr("checked",false);
			})
		}
		
		
	})