<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
  <title>注册界面</title>
  <link href="CSS/Register.css" rel="stylesheet"/>
  <style type="text/css"></style>
</head>
  
  <body>
  <div id="n_full">
  	<div class="n_top">
  		<li><a href="Login_Visitor.jsp">返回首页</a></li>
  	</div>
  	<div class="n_buttom">
  		<div class="n_buttom_apart" align="center">
  			<FORM action="Register_Deal.jsp" method=post name=form> 
  					<p>* 用户ID : <input type="text" class="inputstyle_account" id="u" name="id" value="" tabindex="1"   placeholder="ID";></p>
					<p>* 用户名 : <input type="text" class="inputstyle_account" id="u" name="username" value="" tabindex="1"   placeholder="帐号";></p>
					<p>*用户密码:<input type="text" class="inputstyle_account" id="u" name="password" value="" tabindex="1"   placeholder="密码";></p>
   					<p>*重复密码:<input type="text" class="inputstyle_account" id="u" name="again_password" value="" tabindex="1"   placeholder="重复密码";></p>
   					<p>联系电话 :<input type="text" class="inputstyle_account" id="u" name="phone" value="" tabindex="1"   placeholder="联系电话";></p>
   					<p>邮寄地址 :<input type="text" class="inputstyle_account" id="u" name="address" value="" tabindex="1"   placeholder="邮寄地址";></p>
   					<p>真实姓名 :<input type="text" class="inputstyle_account" id="u" name="realname" value="" tabindex="1"   placeholder="真实姓名";></p>
   					<input type="submit" value="注册" class="login_submit" name="g">
 			</FORM>
 		<p>注册反馈:</p>
  		</div>
  	</div>
 </div>
  
  <br/>
  <br/>
  <br/>
 	<hr>	
   <p align=center>Allen Make</p>
</body></html>