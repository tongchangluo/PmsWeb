<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>绿地中央广场综合物业办公系统 - 错误页</title>
    <meta name="keywords" content="绿地中央广场综合物业办公系统">
    <meta name="description" content="绿地中央广场综合物业办公系统">
    <base href="${pageContext.request.contextPath }">
    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="statics/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="statics/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="statics/css/animate.min.css" rel="stylesheet">
    <link href="statics/css/style.min862f.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="middle-box text-center animated fadeInDown">
        <h1>出错啦</h1>
        <h3 class="font-bold">错误:
        	${exception.message }
        </h3>

        <div class="error-desc">
            <br/>您可以返回主页看看
            <br/><a href="index-2.html" class="btn btn-primary m-t">主页</a>
        </div>
    </div>
    <script src="statics/js/jquery.min.js?v=2.1.4"></script>
    <script src="statics/js/bootstrap.min.js?v=3.3.6"></script>
    </script>
</body>
</html>
