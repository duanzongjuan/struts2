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
    Actionִ�е�ʱ�򲢲�һ��Ҫִ��execute����<br/>
	�����������ļ�������Action��ʱ����method=��ָ��ִ���ĸ�����
	Ҳ������url��ַ�ж�ָ̬������̬��������DMI�����Ƽ���<br/>
	<a href="<%=path %>/user/userAdd">����û�</a>
	<br />
	<a href="<%=path %>/user/user!add">����û�</a>
	<br />
	ǰ�߻����̫���action�����Բ��Ƽ�ʹ��
  </body>
</html>
