<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@ page import="com.allen.registration.service.*" %>
<%@ page import="com.allen.registration.model.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String id = request.getParameter("id");
String username = request.getParameter("username");
String password = request.getParameter("password");



User u = new User();
u.setId(Integer.parseInt(id));
u.setUsername(username);
u.setPassword(password);


Class.forName("com.mysql.jdbc.Driver");
Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/ssh_v0.1","root","allen95533");

UserManager um = new UserManager();
boolean exist = um.exisit(u); 
if(exist)
{
	response.sendRedirect("Register_Fail.jsp");
	return;
}

um.add(u);
response.sendRedirect("Register_Success.jsp");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Register_Deal.jsp' starting page</title>
    
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
    This is my JSP page. <br>
  </body>
</html>
