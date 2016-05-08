<%@ page language="java" import="java.util.*,java.sql.Timestamp" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IBlogDao b=new IBlogDaoImpl();
Blog bb=new Blog();
request.setCharacterEncoding("utf-8");
int blogid=Integer.parseInt(request.getParameter("blogid"));
int idc=Integer.parseInt(request.getParameter("style"));
String title=request.getParameter("title");
String text=request.getParameter("text");
bb.setBlogid(blogid);
bb.setStyleid(idc);
bb.setTitle(title);
bb.setText(text);
bb.setInputtime(new Timestamp(new Date().getTime()));
b.updateBlog(bb);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'changeblogok.jsp' starting page</title>
    
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
    修改成功..
    <%
		response.setHeader("refresh", "0;url=changeblog.jsp");
	%>
  </body>
</html>
