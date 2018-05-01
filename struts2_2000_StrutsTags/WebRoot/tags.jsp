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
		<li>property:<s:property value="username"/></li><!-- value是object类型,struts2会把它当成ognl来解析 -->
		<li>property取值为字符串:<s:property value="'username'"/></li><!-- 若要解析成字符串,则加'' -->
		<li>property取值为默认值:<s:property value="admin" default="管理员"/></li> <!--stack中没有的admin,设置默认值为 '管理员' -->
		<li>property设定HTML:<s:property value="'<hr/>'" escape="false"/></li> <!--escape取值为false,将''中的值当作html标签解释,而不是字符串 -->
		<hr/>
		<!-- id,name已被废弃,用var代替 -->
		<li>set 设定adminName值（默认范围为request 和 ActionContext）<s:set var="adminName" value="username"></s:set></li>
   		<li>set 从request取值:<s:property value="#request.adminName"/></li>
   		<li>set 从ActionContext取值:<s:property value="#adminName"/></li>
   		
   		<li>set 设定范围<s:set name="adminPassword" value="password" scope="page"></s:set></li>
   		<li>set 从相应范围取值:<%=pageContext.getAttribute("adminPassword") %></li>
   		
   		<!--若设定了var,有范围,则从相应范围取值 -->
   		<li>set 设定var,范围为ActionContext<s:set  var="adminPassword" value="password" scope="session"></s:set></li>
   		<li>set 使用#取值: <s:property value="#adminPassword"/></li><!--取不到值--> 
   		<li>set 从相应范围取值:<s:property value="#session.adminPassword"/> </li>
   		
   		<hr />
		<li>bean 定义bean,并使用param来设定新的属性值:
			<s:bean name="com.juan.struts.tags.Dog"> <!--没有设置var,在stack context中不存在-->
				<s:param name="name" value="'smalldog'"></s:param> 
				<s:property value="name"/>
			</s:bean>
			<!-- debug必须在bean前面设置,因没有设定var,在执行时会在栈顶创建对象Dog,当bean结束,撤回，看不到。设置var后会在stack context中存在,不会消失-->
		</li>
		<li>bean 查看debug情况:
			<s:bean name="com.juan.struts.tags.Dog" var="myDog"><!--设置了var,在stack context中存在-->
				<s:param name="name" value="'bigdog'"></s:param> 
			</s:bean>
				拿出值：
				<s:property value="#myDog.name"/>
		</li>
		<hr/>
		<li>include _include1.html 包含静态英文文件
			<s:include value="_include1.html"></s:include>
		</li>
		<li>include _include2.html 包含静态中文文件
			<s:include value="_include2.html"></s:include>
		</li>
		<li>include _include1.html 包含静态英文文件，说明%用法
			<s:set var="incPage" value="'_include1.html'"></s:set>
			<s:include value="%{#incPage}"></s:include>
			<!--%{}作用:把类型为String的""中的内容强制转为ognl表达式,不要当成字符串。-->
		</li>
		
		<hr />
		<li>if elseif else:
			age=<s:property value="#parameters.age[0]" /><br/> 
			<s:set var="age" value="#parameters.age[0]"></s:set> <!--set的作用 -->
			<s:if test="#age < 0"> wrong age!</s:if>
			<s:elseif test="#parameters.age[0] < 20">too young! </s:elseif><!--test必须有-->
			<s:else>yeah!</s:else><br/>
			
			<s:if test="#parameters.aaa == null"> null</s:if>
		</li>
		<hr/>
		<li>遍历集合：<br />
			<s:iterator value="{1,2,3}">
				<s:property/> |
			</s:iterator>
		</li>
		<li>自定义变量：<br />
			<s:iterator value="{'aaa','bbb','ccc'}" var="x">
				<s:property value="#x.toUpperCase()"/> |
			</s:iterator>
		</li>
		<li>使用status:<br />
			<s:iterator value="{'aaa', 'bbb', 'ccc'}" status="status">
			<s:property/> | 
				遍历过的元素总数：<s:property value="#status.count"/> |
				遍历过的元素索引：<s:property value="#status.index"/> |
				当前是偶数？：<s:property value="#status.even"/> |
				当前是奇数？：<s:property value="#status.odd"/> |
				是第一个元素吗？：<s:property value="#status.first"/> |
				是最后一个元素吗？：<s:property value="#status.last"/> |
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
