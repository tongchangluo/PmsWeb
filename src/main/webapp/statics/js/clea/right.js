

$(document).ready(function(){
	var $inputobj = $("form :input").not(":button,#corridorarea," +
	"#hardground,#artificlake,#sgreenbelt,#sungreenbelt");
	var $inputobj2 = $("#corridorarea,#hardground,#artificlake,#sgreenbelt,#sungreenbelt");
	
	var inputval;//input值参数回传
	var flag = false;
	var num1 = /^[0-9]{0,4}$/;//整数验证
	//var num2 = /^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/;//小数验证
	var num2 = /^([0-9]{0,4}\.[0-9])$|^([0-9]{0,4})$/;//小数验证
	//^([0-9]{0,4}\.\d{0,1})|([0-9]{0,4})$
	

	$inputobj.focus(function(){
		flag = check();
		inputval = $(this).val();
	}).blur(function(){
		checkInput($(this),num1,inputval);
	});
	
	$inputobj2.focus(function(){
		flag = check();
		inputval = $(this).val();
	}).blur(function(){
		checkInput($(this),num2,inputval);
	});
	

	/**
	 * input输入值验证
	 */	
	function checkInput(obj,num,val){
		if(flag){
			 if(!num.test(obj.val())){
				 if(num == num1){
					 layer.tips('请输入最多4位整数!  如：1234',obj,{time: 2000});
				 }else{
					 layer.tips('请输入最多4位整数和一位小数!  如：1234.5',obj,{time: 2000});
				 }
			    obj.val(val);
			  }
		}
		
	}
	
	/**
	 * 表单初始状态的校验
	 */
	function check(){
		if($("#bldId").val() == "" || $("#bldId").val() == null){
			layer.tips('请在菜单里选择楼宇!', '#selects', {
				  tips: [3, '#78BA32'],
				  time: 2000
				});
			$("#selects").focus();
			return false;
		}
		return true;
	}

	
	/**
	 * 复选框
	 */
	$("#shydropower,#lift").change(function() {
		if ($(this).is(":checked")) {
			$(this).val(1);
		} else {
			$(this).val(0);
		}
	});
});
