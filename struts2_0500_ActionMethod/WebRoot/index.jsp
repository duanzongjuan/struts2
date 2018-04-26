<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>HelloStruts</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    Action执行的时候并不一定要执行execute方法<br/>
	可以在配置文件中配置Action的时候用method=来指定执行哪个方法
	也可以在url地址中动态指定（动态方法调用DMI）（推荐）<br/>
	<a href="<%=path %>/user/userAdd">添加用户</a>
	<br />
	<a href="<%=path %>/user/user!add">添加用户</a>
	<br />
	前者会产生太多的action，所以不推荐使用
  </body>
</html>
