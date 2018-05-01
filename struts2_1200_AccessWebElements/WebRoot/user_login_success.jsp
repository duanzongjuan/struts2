<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_add_success.jsp' starting page</title>
    
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
    User Login Success!
    <br/>
    <s:property value="#request.r1"/> | <%=request.getAttribute("r1") %><br/>
    <s:property value="#session.s1"/> | <%=session.getAttribute("s1") %><br/>
    <s:property value="#application.a1"/> | <%=application.getAttribute("a1") %><br/>
    <s:property value="#attr.a1"/><br/>
    <s:property value="#attr.s1"/><br/>
    <s:property value="#attr.r1"/><br/>
    <s:debug></s:debug>
    <br/>
   </body>
</html>
