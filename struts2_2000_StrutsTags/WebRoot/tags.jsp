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
		<li>property:<s:property value="username"/></li><!-- value��object����,struts2���������ognl������ -->
		<li>propertyȡֵΪ�ַ���:<s:property value="'username'"/></li><!-- ��Ҫ�������ַ���,���'' -->
		<li>propertyȡֵΪĬ��ֵ:<s:property value="admin" default="����Ա"/></li> <!--stack��û�е�admin,����Ĭ��ֵΪ '����Ա' -->
		<li>property�趨HTML:<s:property value="'<hr/>'" escape="false"/></li> <!--escapeȡֵΪfalse,��''�е�ֵ����html��ǩ����,�������ַ��� -->
		<hr/>
		<!-- id,name�ѱ�����,��var���� -->
		<li>set �趨adminNameֵ��Ĭ�Ϸ�ΧΪrequest �� ActionContext��<s:set var="adminName" value="username"></s:set></li>
   		<li>set ��requestȡֵ:<s:property value="#request.adminName"/></li>
   		<li>set ��ActionContextȡֵ:<s:property value="#adminName"/></li>
   		
   		<li>set �趨��Χ<s:set name="adminPassword" value="password" scope="page"></s:set></li>
   		<li>set ����Ӧ��Χȡֵ:<%=pageContext.getAttribute("adminPassword") %></li>
   		
   		<!--���趨��var,�з�Χ,�����Ӧ��Χȡֵ -->
   		<li>set �趨var,��ΧΪActionContext<s:set  var="adminPassword" value="password" scope="session"></s:set></li>
   		<li>set ʹ��#ȡֵ: <s:property value="#adminPassword"/></li><!--ȡ����ֵ--> 
   		<li>set ����Ӧ��Χȡֵ:<s:property value="#session.adminPassword"/> </li>
   		
   		<hr />
		<li>bean ����bean,��ʹ��param���趨�µ�����ֵ:
			<s:bean name="com.juan.struts.tags.Dog"> <!--û������var,��stack context�в�����-->
				<s:param name="name" value="'smalldog'"></s:param> 
				<s:property value="name"/>
			</s:bean>
			<!-- debug������beanǰ������,��û���趨var,��ִ��ʱ����ջ����������Dog,��bean����,���أ�������������var�����stack context�д���,������ʧ-->
		</li>
		<li>bean �鿴debug���:
			<s:bean name="com.juan.struts.tags.Dog" var="myDog"><!--������var,��stack context�д���-->
				<s:param name="name" value="'bigdog'"></s:param> 
			</s:bean>
				�ó�ֵ��
				<s:property value="#myDog.name"/>
		</li>
		<hr/>
		<li>include _include1.html ������̬Ӣ���ļ�
			<s:include value="_include1.html"></s:include>
		</li>
		<li>include _include2.html ������̬�����ļ�
			<s:include value="_include2.html"></s:include>
		</li>
		<li>include _include1.html ������̬Ӣ���ļ���˵��%�÷�
			<s:set var="incPage" value="'_include1.html'"></s:set>
			<s:include value="%{#incPage}"></s:include>
			<!--%{}����:������ΪString��""�е�����ǿ��תΪognl���ʽ,��Ҫ�����ַ�����-->
		</li>
		
		<hr />
		<li>if elseif else:
			age=<s:property value="#parameters.age[0]" /><br/> 
			<s:set var="age" value="#parameters.age[0]"></s:set> <!--set������ -->
			<s:if test="#age < 0"> wrong age!</s:if>
			<s:elseif test="#parameters.age[0] < 20">too young! </s:elseif><!--test������-->
			<s:else>yeah!</s:else><br/>
			
			<s:if test="#parameters.aaa == null"> null</s:if>
		</li>
		<hr/>
		<li>�������ϣ�<br />
			<s:iterator value="{1,2,3}">
				<s:property/> |
			</s:iterator>
		</li>
		<li>�Զ��������<br />
			<s:iterator value="{'aaa','bbb','ccc'}" var="x">
				<s:property value="#x.toUpperCase()"/> |
			</s:iterator>
		</li>
		<li>ʹ��status:<br />
			<s:iterator value="{'aaa', 'bbb', 'ccc'}" status="status">
			<s:property/> | 
				��������Ԫ��������<s:property value="#status.count"/> |
				��������Ԫ��������<s:property value="#status.index"/> |
				��ǰ��ż������<s:property value="#status.even"/> |
				��ǰ����������<s:property value="#status.odd"/> |
				�ǵ�һ��Ԫ���𣿣�<s:property value="#status.first"/> |
				�����һ��Ԫ���𣿣�<s:property value="#status.last"/> |
			<br />
		</s:iterator>
		</li>
		
		<li>
			<s:iterator value="#{1:'a',2:'b',3:'c'}">
				<s:property value="key"/> | <s:property value="value"/> <br/>
			</s:iterator>
		</li>
		<li>
			<s:iterator value="#{1:'a',2:'b',3:'c'}" var="x">
				<s:property value="#x.key"/> | <s:property value="#x.value"/> <br/>
			</s:iterator>
		</li>
		
		<li>
			<s:fielderror fieldName="fielderror.test" theme="simple"></s:fielderror>
		</li>
   </ol>
   <s:debug></s:debug>
  </body>
</html>
