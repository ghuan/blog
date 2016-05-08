<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IBlogDao blog=new IBlogDaoImpl();
List<Blog> list=blog.findBlog();
IBlogStyleDao styl=new IBlogStyleDaoImpl();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改删除博文</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style>
  a{color:#000;text-decoration: none;font-size:13px;}
  a:hover{color:red;}
  </style>
  <script language="javascript">
	function delConfirm(blog,blogid){
		var a=confirm("确定要删除["+blog+"]文章吗?？");
		if(a==true){
			window.location.href="blogdel.jsp?blogid="+blogid;
		}
	}
</script>
  <body>
   <table style="border-color: #000" border="1">
   <tr>
   <td>
   博文id
   </td>
   <td>
   博文类型
   </td>
   <td>
   博文标题
   </td>
    <td>
    时间
   </td>
   <td>
   操作
   </td>
   </tr>
   <%
   for(int i=0;i<list.size();i++){
   Blog bb=list.get(i);
   BlogStyle sb=styl.findBlogStyle(bb.getStyleid());
    %>
    <tr>
   <td>
   <%=bb.getBlogid() %>
   </td>
   <td>
   <%=sb.getStyle() %>
   </td>
   <td>
   <%=bb.getTitle() %>
   </td>
   <td>
   <%=bb.getInputtime() %>
   </td>
   <td>
   <a href="showblog.jsp?blogid=<%=bb.getBlogid()%>" target="_blank">查看</a><a href="blogchange.jsp?blogid=<%=bb.getBlogid() %>">修改</a><a href="javascript:delConfirm('<%=bb.getTitle() %>',<%=bb.getBlogid()%>)">删除</a>
   </td>
   </tr>
    <%
    }
     %>
   
   </table>
  </body>
</html>
