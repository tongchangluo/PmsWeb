$(document).ready(function(){
	/**
	 * input输入值验证
	 */		
	var val;//input值参数回传
	var num = /^[0-9]{0,4}$/;//整数验证
	$("form :input").not(":button").focus(function(){
		val = $(this).val();
	}).blur(function(){
		checkInput($(this),num,val);
	});

	/**
	 * input输入值验证
	 */	
	function checkInput(obj,num,vals){
		 if(!num.test(obj.val())){
			 layer.tips('请输入整数!',obj);
		     obj.val(vals).focus();
		  }
	}
});
