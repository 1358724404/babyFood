<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="back/style/layui/css/layui.css">
<script type="text/javascript" src ="back/style/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src ="back/style/layui/layui.js"></script>
<script type="text/javascript">
layui.use('laypage', function(){
	  var laypage = layui.laypage;
	  
	  //执行一个laypage实例
	  laypage.render({
	    elem: 'test1', 
	    count: ${pageInfo.total},
	    limit:${pageInfo.pageSize},
	    limits:[1,2,3,4,5],
	    curr:${pageInfo.currentPage},
	    groups:4,
	    layout:['count','prev','page','next','limit','refresh','skip'],
	    jump: function(obj, first){
	        if(!first){
                console.log("${pageInfo.url}");

	            <%--$("#${param.bodyId}").load("${pageInfo.url}?currentPage="+obj.curr+"&pageSize="+obj.limit,${params});--%>
	         location.href="${pageInfo.url}?currentPage="+obj.curr+"&pageSize="+obj.limit;
	        }
	    }
	});
});	  
</script>
</head>
<body>
<div id="test1" class="layui-main"></div>
</body>
</html>