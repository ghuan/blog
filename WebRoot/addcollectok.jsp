<%@ page language="java" import="java.util.*,java.sql.Timestamp" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("utf-8");
int idc=Integer.parseInt(request.getParameter("style"));
String title=request.getParameter("title");
String mark=request.getParameter("mark");
String description=request.getParameter("description");
String colladd=request.getParameter("colladd");
ICollectDao collect=new ICollectDaoImpl();
Collect col=new Collect();
col.setColladd(colladd);
col.setDescription(description);
col.setInputtime(new Timestamp(new Date().getTime()));
col.setMark(mark);
col.setStyleid(idc);
col.setTitle(title);
collect.addCollect(col);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addcollectok.jsp' starting page</title>
    
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
		response.setHeader("refresh", "0;url=addcollect.jsp");
	%>
  </body>
</html>
