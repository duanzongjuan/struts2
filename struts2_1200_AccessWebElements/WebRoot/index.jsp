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
  	ȡ��Map����request,session,application,��ʵ���� HttpServletRequest, HttpSession, ServletContext������:
  <ol>
	<li>ǰ���ߣ�����������</li>
	<li>ǰ���ߣ�IOC</li> (ֻ������)
	<li>�����ߣ�����������</li>
	<li>�����ߣ�IOC</li>
</ol>
<form name="f" action="" method="post">
	�û���:<input type="type" name="name"/>
	����:<input type="password" name="password"/>
	<br/>
	<input type="button" value="submit1" onclick="javascript:document.f.action='login/login1';document.f.submit();"/>
	<input type="button" value="submit2" onclick="javascript:document.f.action='login/login2';document.f.submit();"/>
	<input type="button" value="submit3" onclick="javascript:document.f.action='login/login3';document.f.submit();"/>
	<input type="button" value="submit4" onclick="javascript:document.f.action='login/login4';document.f.submit();"/>
</form>
  </body>
</html>
