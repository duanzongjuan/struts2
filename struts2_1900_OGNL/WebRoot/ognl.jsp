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
    
    <title>My JSP 'user_success.jsp' starting page</title>
    
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
   <ol>
		<li>����ֵջ�е�action����ͨ����:username=<s:property value="username" /></li>
		<li>����ֵջ�ж������ͨ����(get set����):<s:property value="user.age"/> | <s:property value="user['age']"/> | <s:property value="user[\"age\"]"/> | wrong:<%-- <s:property value="user[age]"/> --%></li>
   		<li>����ֵջ�ж������ͨ����(get set����):<s:property value="cat.friend.name"/></li>
   		<li>����ֵջ�ж������ͨ����:<s:property value="password.length()"/></li>
   		<li>����ֵջ�ж������ͨ����:<s:property value="cat.miaomiao()"/></li>
   		<li>����ֵջ�ж������ͨ����:<s:property value="m()"/></li>
   		<hr/>
   		<li>���ʾ�̬����:<s:property value="@com.juan.struts.ognl.S@s()"/></li> <!--@����+����+@��̬������ -->
   		<li>���ʾ�̬����:<s:property value="@com.juan.struts.ognl.S@STR"/></li> <!--@����+����+@��̬������ -->
   		<li>����Math��ľ�̬����:<s:property value="@@max(2,3)"/></li>
   		<hr/>
   		<li>������ͨ��Ĺ��췽��:<s:property value="new com.juan.struts.ognl.User(10)"/></li>
   		<hr/>
   		<li>����List:<s:property value="users"/></li> <!-- ������������ -->
   		<li>����List��ĳ��Ԫ��:<s:property value="users[1]"/></li>
   		<li>����List��Ԫ��ĳ�����Եļ���:<s:property value="users.{age}"/></li> <!-- ognl��{}���Դ����� -->
   		<li>����List��Ԫ��ĳ�����Եļ����е��ض�ֵ:<s:property value="users.{age}[0]"/> | <s:property value="users[0].age"/></li> <!-- �ڶ��ֱȽϳ��� -->
   		<li>����Set:<s:property value="dogs"/></li>
   		<li>����Set��ĳ��Ԫ��:<s:property value="dogs[0]"/></li> <!-- ȡ����ֵ,��Ϊ�������� -->
   		<li>����Map:<s:property value="dogMap"/></li>
   		<li>����Map��ĳ��Ԫ��:<s:property value="dogMap.dog101"/> | <s:property value="dogMap['dog101']"/> | <s:property value="dogMap[\"dog101\"]"/></li> <!-- ͨ����ֵ����,""����""��Ҫ��\ת��,ognl��''Ҳ�����ַ��� -->
   		<li>����Map�����е�key:<s:property value="dogMap.keys"/></li>
   		<li>����Map�����е�value:<s:property value="dogMap.values"/></li>
   		<li>���������Ĵ�С:<s:property value="dogMap.size()"/> | <s:property value="dogMap.size"/></li> <!-- size���Ե������� -->
   		<hr/>
   		<!-- ��������:?# ^#(ȡ����ͷ�Ǹ�) $#(ȡ�������Ǹ�) -->
   		<!-- thisָѭ������ʱȡ����ÿһ��users -->
   		<li>ͶӰ(����:�ѷ��������Ĺ��˳���):<s:property value="users.{?#this.age == 1}"/> <!--ȡ��age==1��users����  --> | <s:property value="users.{?#this.age == 1}.{age}"/> <!--ȡ��age==1��age����  --> | <s:property value="users.{?#this.age == 1}[0]"/><!-- ȡ��age==1��users�����еĵ�һ��Ԫ�� --> | <s:property value="users.{?#this.age == 1}[0].age"/><!-- ȡ��age==1�е�age�����еĵ�һ��Ԫ�� --></li>
   		<li>ͶӰ:<s:property value="users.{^#this.age > 1}.{age}"/><!-- ȡ��age>1�ļ����еĿ�ͷ�Ǹ�,��������ظ�ֵ,���ü��� --></li>
   		<li>ͶӰ:<s:property value="users.{$#this.age > 1}.{age}"/><!-- ȡ��age>1�ļ����еĽ�β�Ǹ� --></li>
   		<li>ͶӰ:<s:property value="users.{$#this.age > 1}.{age} == null"/><!--�ж�age>1������Ǹ�Ԫ���Ƿ�Ϊnull--></li>
   		<hr/>
   		<li>[]:<s:property value="[0]"/> <!--�Ӹ�Ԫ�ؿ�ʼ��ջ�׵�����Ԫ�ؽ���� --> | <s:property value="[1]"/> | <s:property value="[0].username"/><!-- ���ҳ�����action��username��ֵ --></li>
   		<!-- result��type="chain"ʱstack��������action-->
   </ol>
   <s:debug></s:debug>
  </body>
</html>
