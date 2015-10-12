<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>

<html>
  <head>
  <title>Login_Test</title>
  <link href="CSS/Login.css" rel="stylesheet"/>
  <style type="text/css"></style>
</head>
  
  <body>
  <div id="n_full">
  	<div class="n_top">
  		<li><a href="index.jsp">返回首页</a></li>
  	</div>
  	<div class="n_buttom" align=center>
  		<div class="n_buttom_apart">
  			<div class="n_buttom_in_left" style="background-image:url('Img/Login_2.jpg');
  			background-position:right 0px;"  align="left">
  			<!-- 
  				<p class="login_left_pictures_title">Allen Make</p>
  				<p>"给我讲个故事吧"她对他说</p>
  				<p>他微笑着说“从前有个男孩，喜欢一个女孩。</p>
  				<p>他想方设法的接近她、打听她的电话</p>
  				<p>了解他的爱好、和她搭讪、陪她看书”</p>
  				<p>他深情的对她说，</p>
  				<p>“有天，他把她约出来表白”</p>
  				<p>“然后呢？？”她说</p>
  			 -->	
  			</div>
  			<div class="n_buttom_in_right">
  				<div class="n_buttom_in_right_top"></div>
  				<div class="n_buttom_in_right_mid">
  					<br>
  					<br>
  				<FORM action="loginServlet" method=post> 
					<input type="text" class="inputstyle_account" id="u" name="logname" value="" tabindex="1"   placeholder="用户名";>
					<br>
					<br>
					<input type="password" class="inputstyle_account" id="u" name="password" value="" tabindex="1"   placeholder="密码";>
   					<br>
   					<br>
   					<input type="submit" value="登录" class="login_submit" name="g">
 				</FORM> 
  				</div>
  				
  			</div>
  		</div>
  	</div>
  </div>
  
  <br/>
  <br/>
  <br/>
 	<hr>	
   <p align=center>Allen Make</p>
</body></html>
