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
		<li>访问值栈中的action的普通属性:username=<s:property value="username" /></li>
		<li>访问值栈中对象的普通属性(get set方法):<s:property value="user.age"/> | <s:property value="user['age']"/> | <s:property value="user[\"age\"]"/> | wrong:<%-- <s:property value="user[age]"/> --%></li>
   		<li>访问值栈中对象的普通属性(get set方法):<s:property value="cat.friend.name"/></li>
   		<li>访问值栈中对象的普通方法:<s:property value="password.length()"/></li>
   		<li>访问值栈中对象的普通方法:<s:property value="cat.miaomiao()"/></li>
   		<li>访问值栈中对象的普通方法:<s:property value="m()"/></li>
   		<hr/>
   		<li>访问静态方法:<s:property value="@com.juan.struts.ognl.S@s()"/></li> <!--@包名+类名+@静态方法名 -->
   		<li>访问静态属性:<s:property value="@com.juan.struts.ognl.S@STR"/></li> <!--@包名+类名+@静态属性名 -->
   		<li>访问Math类的静态方法:<s:property value="@@max(2,3)"/></li>
   		<hr/>
   		<li>访问普通类的构造方法:<s:property value="new com.juan.struts.ognl.User(10)"/></li>
   		<hr/>
   		<li>访问List:<s:property value="users"/></li> <!-- 数组与其类似 -->
   		<li>访问List中某个元素:<s:property value="users[1]"/></li>
   		<li>访问List中元素某个属性的集合:<s:property value="users.{age}"/></li> <!-- ognl中{}可以代表集合 -->
   		<li>访问List中元素某个属性的集合中的特定值:<s:property value="users.{age}[0]"/> | <s:property value="users[0].age"/></li> <!-- 第二种比较常用 -->
   		<li>访问Set:<s:property value="dogs"/></li>
   		<li>访问Set中某个元素:<s:property value="dogs[0]"/></li> <!-- 取不到值,因为集合无序 -->
   		<li>访问Map:<s:property value="dogMap"/></li>
   		<li>访问Map中某个元素:<s:property value="dogMap.dog101"/> | <s:property value="dogMap['dog101']"/> | <s:property value="dogMap[\"dog101\"]"/></li> <!-- 通过键值访问,""中套""需要用\转义,ognl中''也代表字符串 -->
   		<li>访问Map中所有的key:<s:property value="dogMap.keys"/></li>
   		<li>访问Map中所有的value:<s:property value="dogMap.values"/></li>
   		<li>访问容器的大小:<s:property value="dogMap.size()"/> | <s:property value="dogMap.size"/></li> <!-- size可以当作属性 -->
   		<hr/>
   		<!-- 过滤条件:?# ^#(取出开头那个) $#(取出结束那个) -->
   		<!-- this指循环遍历时取出的每一个users -->
   		<li>投影(过滤:把符合条件的过滤出来):<s:property value="users.{?#this.age == 1}"/> <!--取出age==1的users集合  --> | <s:property value="users.{?#this.age == 1}.{age}"/> <!--取出age==1的age集合  --> | <s:property value="users.{?#this.age == 1}[0]"/><!-- 取出age==1中users集合中的第一个元素 --> | <s:property value="users.{?#this.age == 1}[0].age"/><!-- 取出age==1中的age集合中的第一个元素 --></li>
   		<li>投影:<s:property value="users.{^#this.age > 1}.{age}"/><!-- 取出age>1的集合中的开头那个,因可能有重复值,故用集合 --></li>
   		<li>投影:<s:property value="users.{$#this.age > 1}.{age}"/><!-- 取出age>1的集合中的结尾那个 --></li>
   		<li>投影:<s:property value="users.{$#this.age > 1}.{age} == null"/><!--判断age>1的最后那个元素是否为null--></li>
   		<hr/>
   		<li>[]:<s:property value="[0]"/> <!--从该元素开始到栈底的所有元素将输出 --> | <s:property value="[1]"/> | <s:property value="[0].username"/><!-- 查找出所有action的username的值 --></li>
   		<!-- result的type="chain"时stack会有两个action-->
   </ol>
   <s:debug></s:debug>
  </body>
</html>
