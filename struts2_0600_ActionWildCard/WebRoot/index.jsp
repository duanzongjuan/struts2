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
            ʹ��ͨ��������������������<br />
    <a href="<%=path %>/actions/Studentadd">���ѧ��</a>
    <a href="<%=path %>/actions/Studentdelete">ɾ��ѧ��</a>
    <br />
	������һ��Ҫ����"Լ����������"��ԭ��
	<br />
	<a href="<%=path %>/actions/Teacher_add">�����ʦ</a>
	<a href="<%=path %>/actions/Teacher_delete">ɾ����ʦ</a>
	<a href="<%=path %>/actions/Course_add">��ӿγ�</a>
	<a href="<%=path %>/actions/Course_delete">ɾ���γ�</a>
  </body>
</html>
