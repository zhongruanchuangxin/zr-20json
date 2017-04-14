<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
  	<script type="text/javascript">
  		$(function(){
  			/* get或post方法无法获取JSON数据，必须采用getJSON或ajax方法
  			$.get("jsonServlet",{random:Math.random()},function(data){
  				$("body").empty();
  				$("body").append("学号&nbsp;&nbsp;姓名&nbsp;&nbsp;年龄<br>");
  				alert(data);
  				//var jsonObj = $.eval("("+data+")");
  				//第一个data是要进行解析的json对象
  				//解析的json数据的下标
  				//value每一项的值
  				$.each(jsonObj,function(index,value){
  					//$("body").append(value.id+"&nbsp;&nbsp;"+value.username+"&nbsp;&nbsp;"+value.age);
  					alert(index);
  					$("body").append(data[index].id+"&nbsp;&nbsp;"+data[index].username+"&nbsp;&nbsp;"+data[index].age);
  				});
  			}); */
  			/* $.ajax({
  				url:"jsonServlet",
  				data:{random:Math.random()},
  				type:"post",
  				dataType:"json",
  				success:function(data){
  					$("body").append("学号&nbsp;&nbsp;姓名&nbsp;&nbsp;年龄<br>");
  					$.each(data,function(index,value){
  					//$("body").append(value.id+"&nbsp;&nbsp;"+value.username+"&nbsp;&nbsp;"+value.age);
  					$("body").append(value.id+"&nbsp;&nbsp;"+value.username+"&nbsp;&nbsp;"+value.age+"<br>");
  				});
  				}
  			}); */
  			
  			/* $.getJSON("jsonServlet",{random:Math.random()},function(data){
  				$("body").empty();
  				$("body").append("学号&nbsp;&nbsp;姓名&nbsp;&nbsp;年龄<br>");
  				alert(data);
  				//第一个data是要进行解析的json对象
  				//解析的json数据的下标
  				//value每一项的值
  				$.each(data,function(index,value){
  					$("body").append(value.id+"&nbsp;&nbsp;"+value.username+"&nbsp;&nbsp;"+value.age);
  					alert(index);
  					//$("body").append(data[index].id+"&nbsp;&nbsp;"+data[index].username+"&nbsp;&nbsp;"+data[index].age+"<br>");
  				});
  			}); */
  			
  			/* $.getJSON("jsonServlet",{random:Math.random()},function(data){
  					$("body").empty();
  					$("body").append("学号&nbsp;&nbsp;姓名&nbsp;&nbsp;年龄<br>");
  					alert(data);
  					$("body").append(data.id+"&nbsp;&nbsp;"+data.username+"&nbsp;&nbsp;"+data.age+"<br>");
  			}); */
  			
  			$.post("jsonServlet",{random:Math.random()},function(data){
  					$("body").empty();
  					$("body").append("学号&nbsp;&nbsp;姓名&nbsp;&nbsp;年龄<br>");
  					alert(data);
  					//使用js的eval函数解析json数据
  					var jsonObj = eval("("+data+")");
  					//$("body").append(data.id+"&nbsp;&nbsp;"+data.username+"&nbsp;&nbsp;"+data.age+"<br>");
  					//$("body").append(jsonObj.id+"&nbsp;&nbsp;"+jsonObj.username+"&nbsp;&nbsp;"+jsonObj.age+"<br>");
  					$("body").append(jsonObj.id+"&nbsp;&nbsp;"+jsonObj.username+"&nbsp;&nbsp;"+jsonObj.age+"<br>");
  			});
  			
  		});
  	</script>
  
  </head>
  
  <body>
    
    
    
  </body>
</html>
