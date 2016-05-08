<%@ page language="java" import="java.util.*,java.sql.Timestamp" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="小欢欢,个人博客,自学积累">
	<meta http-equiv="description" content="小欢欢个人博客网站是本人临毕业前着手做的jsp网站，记录了以前、现在及将来学习过程中的知识积累。">
	<link rel="stylesheet" type="text/css" href="css/MyStyle.css">
	<link rel="Stylesheet" href="css/calendar.css" />
	<script type="text/javascript" src="js/Calendar.js"></script>
	<SCRIPT type=text/javascript src="js/ScrollPic.js"></SCRIPT>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
  </head>
 

  <!-- 多说js加载开始，一个页面只需要加载一次 -->
<script type="text/javascript">
var duoshuoQuery = {short_name:"gaohuan123"};
(function() {
    var ds = document.createElement('script');
    ds.type = 'text/javascript';ds.async = true;
    ds.src = 'http://static.duoshuo.com/embed.js';
    ds.charset = 'UTF-8';
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds);
})();
</script>
<!-- 多说js加载结束，一个页面只需要加载一次 -->
<%
String ipd=null;
ipd=  request.getRemoteAddr();
IIpLookDao ip=new IIpLookDaoImpl();
IpLook add=new IpLook();
add.setIp(ipd);
add.setInputtime(new Timestamp(new Date().getTime()));
ip.addIplook(add);

 %>
  <body>
<center>
  	<div class="middle">
  	<div class="head">
  		<div class="title">
  		<div style="background-image:url(images/1.gif);width:63px;height:70px;float:left"></div>
  		<div style="width:250px;float:left;margin-top:30px;">小欢欢的个人博客</div>
  		</div>
  	</div>