<%@ page language="java" import="java.util.*,java.sql.Timestamp" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.IBlogDao"%>
<%@page import="gaohuan.myblog.daoImpl.IBlogDaoImpl"%>
<%@page import="gaohuan.myblog.pojo.Blog"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IBlogDao b=new IBlogDaoImpl();
request.setCharacterEncoding("utf-8");
int idc=Integer.parseInt(request.getParameter("style"));
String title=request.getParameter("title");
String text=request.getParameter("text");
Blog bb=new Blog();
bb.setStyleid(idc);
bb.setTitle(title);
bb.setText(text);
bb.setInputtime(new Timestamp(new Date().getTime()));
b.addBlog(bb);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cishiok.jsp' starting page</title>
    
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
		response.setHeader("refresh", "0;url=addblog.jsp");
	%>
  </body>
</html>
