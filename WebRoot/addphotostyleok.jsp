<%@ page language="java" import="java.util.*,java.sql.Timestamp" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("utf-8");
String style=request.getParameter("style");
IPhotoStyleDao a=new IPhotoStyleDaoImpl();
		PhotoStyle b=new PhotoStyle();
		b.setStyle(style);
		b.setInputtime(new Timestamp(new Date().getTime()));
		a.addPhotoStyle(b);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addphotostyleok.jsp' starting page</title>
    
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
     添加成功..
    <%
		response.setHeader("refresh", "0;url=addphotostyle.jsp");
	%>
  </body>
</html>
