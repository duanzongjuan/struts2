<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
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
            使用通配符，将配置量降到最低<br />
    <a href="<%=path %>/actions/Studentadd">添加学生</a>
    <a href="<%=path %>/actions/Studentdelete">删除学生</a>
    <br />
	不过，一定要遵守"约定优于配置"的原则
	<br />
	<a href="<%=path %>/actions/Teacher_add">添加老师</a>
	<a href="<%=path %>/actions/Teacher_delete">删除老师</a>
	<a href="<%=path %>/actions/Course_add">添加课程</a>
	<a href="<%=path %>/actions/Course_delete">删除课程</a>
  </body>
</html>
