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
<style type="text/css">
.formFieldError {
font-family: verdana, arial, helvetica, sans-serif;
font-size: 12px;
color: #FF3300;
vertical-align: bottom;
}

.formFieldError ul {
	/*list-style-type: none*/
    margin: 0px;
    padding: 3px;
    vertical-align: middle;
}

.formFieldError ul li{
	list-style-type: none
   
}
</style>
</head>
  
  <body>
   	”√CSSøÿ÷∆œ‘ æ
   	<ol>
   		<li>
   			<s:form>
   				<div class="formFieldError">
   					<s:fielderror/>
   				</div>
   				<s:textfield name='aaa'></s:textfield>
   			</s:form>
   		</li>
   	</ol>
  </body>
</html>
