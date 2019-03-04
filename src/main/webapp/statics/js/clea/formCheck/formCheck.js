	var hadNo ;
	function mySubmit(){
		var reg=/^\d+(\.\d+)?$/;
		var canSubmit=true;
		var actionType = $("#actionType").val();
		$("select[attr='notNull']").each(function(){		
			var enterText = $(this).val();
			if(enterText=='请选择'){
				$(this).css( {
					'outline': 'none',
					'border-color': 'red',
				});
				canSubmit=false;
			}
			
		})
			
		$("input[attr='notNull']").each(function(){		
			var enterText = $(this).val();
			if(enterText==''||enterText=='此处不能为空'||enterText=='null'){
				errorColor($(this),"此处不能为空");
				canSubmit=false;
			}	
		})
		
		if($("#plantset_no").val()==hadNo&&hadNo!='请选择'&&hadNo!=''&&actionType=='addPS'){
			showMesgWindow("此项目号已存在","red");
			errorColor($("#plantset_no"));
			canSubmit=false;
		}
		
		if(!reg.test($("#plantset_area").val())&&(actionType=="addPS"||actionType=="modifyPS")){
			showMesgWindow("项目面积格式错误，请填入正确数字","red");
			canSubmit=false;
		}
		
		return canSubmit;
		
	}
	
	//错误颜色提示
	function errorColor($target,mesg){
		$target.css( {
			'outline': 'none',
			'border-color': '#DD001B',
			'color':'#DD001B'
		})
		if(mesg!=undefined){
			$target.attr("placeholder",mesg);
		}
	}
	
	//正确颜色提示
	function okColor($target){
		$target.css({
			"outline":"none",
			"border-color":"#ccc",
			'color':'black'
		})
		
	}
$(function(){
	
	$("#psNo").bind("change",function(){
		var plantsetNo = {};
		plantsetNo["plantset_no"] = $(this).val();
		getPsByChoice(plantsetNo,"plantsetNo");
			
		
	})
	
	
	$("#cmpId").bind("change",function(){
		var companyId={};
		companyId["plantset_companyId"] = $(this).val();
		getPsByChoice(companyId,"companyId");
			
	})
	
	function getPsByChoice(choice,doType){
		$.ajax({
			type:"POST",
			url:"getPsByChoice.action",
			contentType:"application/json",
			data:JSON.stringify(choice),
			dataType:"json",
			success:function(data){
				if(doType=="companyId"){
					var psNoList ='';
					for(var i=0;i<data.length;i++){
						console.log(data[i]);
						psNoList=psNoList+"<option value=\""+data[i].plantset_no+"\">"+data[i].plantset_no+"</option>";
					}
					var $psNoList = $("<option selected>请选择</option>"+psNoList);
					$("#psNo").html($psNoList);
				}else{
					$("#plantset_name").val(data[0].plantset_name);
				}
			},
			error:function(){
				showMesgWindow("错误操作！","red");
			}

		})
	}
	
	
	$("[attr='notNull']").focus(function(){
		$(this).select();
	})
	
	$("select[attr='notNull']").bind("blur",function(){
		var enterText = $(this).val();
		if(enterText=='请选择'){
			$(this).css( {
				'outline': 'none',
				'border-color': 'red',
			});
		}
		
		
	})
	
	$("[attr='notNull']").bind("input propertychange change",function(){
		var enterText = $(this).val();
		if(enterText!='此处不能为空'&&enterText!='null'&&enterText!=''){
			okColor($(this));
		}else{
			errorColor($(this),"此处不能为空");
		}
		
	})
	
	$("input[attr='notNull']").blur(function(){
		//去除前后空格
		var enterText = $(this).val().replace(/^\s+|\s+$/g,"");
		$(this).val(enterText);
		if(enterText!=''&&enterText!='此处不能为空'&&enterText!='null'){
			okColor($(this));
		}else{
			errorColor($(this),"此处不能为空");
		}
	})
	
	
	$("#plantset_no").bind("blur",function(){
		var noList=[];
		var plantset_no = $(this).val();
		var actionType = $("#actionType").val();
		noList.push(plantset_no);
		if(plantset_no!=''&&plantset_no!='此处不能为空'&&plantset_no!="null"&&plantset_no!=hadNo&&actionType=='addPS'){	
			$.ajax({
				url:"checkPsNo.action",
				type:"POST",
				contentType:"application/json",
				data:JSON.stringify(noList),
				dataType:"json",
				success:function(data){
					if(data.mesg=="success"){
						okColor($("#plantset_no"));
					}else{
						errorColor($("#plantset_no"));
						hadNo=plantset_no;
						showMesgWindow(data.mesg, "red");
					}
				},
				error:function(){
					showMesgWindow("错误操作！","red");
				}
			})	
		}
	})
	
	
})


