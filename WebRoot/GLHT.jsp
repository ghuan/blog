<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>小欢欢个人博客管理登陆页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel = "stylesheet" type = "text/css" href = "css/login.css"/>
<script language="javascript" src="js/denglujs.js"></script>
  </head>

  <body>


     <div id = "main">
    	<div style="font-size:25px;font-weight:bold;color:#275577;width:50px;height:auto;font-family:隶书;margin-left:150px;margin-top:120px;"> 小<br>欢<br>欢<br>个<br>人<br>博<br>客<br>后<br>台<br>管<br>理<br>登<br>陆</div>
     	<div class = "top">
     	
     		<form name = "form1" method = "post" class = "loginForm" action="ManagerLogin.jsp">
     	
     			账&nbsp;&nbsp;号:<input type="text" name = "name" class="name" id="name">
     			<br><br>密 &nbsp;码:<input type="password" name = "password" class="name" id="password">
     			<br><br>验证码:<input type="text" name = "rand" id="rand" class="check"/>&nbsp;&nbsp;&nbsp;<img
					border=0 src="code.jsp" onclick="this.src='code.jsp?ran='+Math.random()">
     			<p><input type="submit" name="login" class="dl" value="登陆" onclick="return htdl()"/></p>
     		</form><br>
     		<div style="width:500px;height:50px;margin-left:360px;font-weight:bold;color:#152633">如果您不是小欢欢钦点管理员，请猛击&nbsp;<a href="index.jsp">这里</a>，否则，找人削你！！</div>
     	</div>
     	<div class = "bottom">
     	</div>
     </div>
  </body>
</html>
