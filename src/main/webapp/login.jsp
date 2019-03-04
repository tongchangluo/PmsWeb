<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <title>绿地中央广场综合物业办公系统 - 登录</title>
    <meta name="keywords" content="绿地中央广场综合物业办公系统">
    <meta name="description" content="绿地中央广场综合物业办公系统">
    <link href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/css/style.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/css/login.min.css" rel="stylesheet">
    <!-- 引用jquery -->
    <script src="${pageContext.request.contextPath }/statics/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js?v=3.3.6"></script>
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>
        if(window.top!==window.self){window.top.location=window.location};
        $(function(){
	    	//换一张
	    	$("#imageid,#imghref").click(function(){
	    		//重新加载一次
	    		$("#imageid").attr("src","imgcode.bdqn?temp="+new Date().getTime());
	    	});
	    	
	    //保证验证码过期时间
	    window.setInterval(function() {
	    	$("#imageid").attr("src","imgcode.bdqn?temp="+new Date().getTime());
	    }, 1000*60*10);
	    
	    $("#loginbtn").click(function(){
	    	//1 验证表单数据是否满足规范
	    	//2 ajax提交数据
	    	$.ajax({
	    		url:'${pageContext.request.contextPath }/sysuser/user_plogin.bdqn',
	    		data:{'user.uname':$("#unameid").val(),'user.password':$("#passwordid").val(),'randomcode':$("#codeid").val()},
	    		dataType:'json',
	    		type:'post',
	    		success:function(responsedata){
	    			$("#loginerrorid").empty();
	    			$("#coderrorid").empty();
	    			console.debug(responsedata);
	    			if(responsedata.status==0){
	    					$("#loginerrorid").html(responsedata.msgcontent);
	    			}else if(responsedata.status==1){
	    					$("#coderrorid").html(responsedata.msgcontent);
	    			}else if(responsedata.status==2){
	    				window.location.href="${pageContext.request.contextPath }/home.jsp";
	    			}
	    		}
	    	});
	    });
	    });
	    
    </script>
</head>
<body class="signin">
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-6">
                <div class="signin-info">
                    <div class="logopanel m-b">
                        <h1>[ 北大青鸟 ]</h1>
                    </div>
                    <div class="m-b"></div>
                    <h4>欢迎使用 <strong>绿地中央广场综合物业办公系统</strong></h4>
                    <ul class="m-b">
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势一</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势二</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势三</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势四</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势五</li>
                    </ul>
                    <strong>还没有账号？ <a href="#">立即注册&raquo;</a></strong>
                </div>
            </div>
            <div class="col-sm-6">
                <form method="post" action="sysuer/user_plogin.bdqn">
                    <h3 class="m-t-md">绿地中央广场综合物业办公系统 </h3>
                    <div class="form-group has-error">
        				<label class="control-label" for="inputError1">欢迎使用本系统！</label>
      				</div>
      				 <div class="form-group has-error">
        				<label class="control-label" id="loginerrorid" for="inputError1"></label>
      				</div>
                    <input type="text" class="form-control uname" id="unameid" placeholder="用户名" />
                    <input type="password" class="form-control pword m-b" id="passwordid" width="50%" placeholder="密码" />
                    <input type="text" id="codeid" class="form-control  code  m-b" placeholder="验证码" />
                    <span>
                    	<img alt="验证码" id="imageid" src="imgcode.bdqn">
                    </span>
                    <a href="javascript:void(0);" id="imghref">看不清？点击图片更换</a>
                     <div class="form-group has-error">
        				<label class="control-label" id="coderrorid" for="inputError1"></label>
      				</div>
                    <input type="button" id="loginbtn" class="btn btn-success btn-block" value="登录" >
                    <a href="#">忘记密码了？</a>
                </form>
            </div>
        </div>
        <div class="signup-footer">
            <div class="pull-left">
                &copy; 2016  
            </div>
        </div>
    </div>
</body>
</html>
