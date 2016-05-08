<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
IBlogStyleDao sy=new IBlogStyleDaoImpl();
List<BlogStyle> sylist=sy.findBlogStyle();
%>
<div class="rili1">
	<h1>分类</h1>
</div>
<div class="ril">
	<center>
		<ul class="gd">
			<% 
		for(int i=0;i<sylist.size();i++){
	  		BlogStyle sy1=sylist.get(i);
		%>
			<li>>><a href="blog.jsp?id=<%=sy1.getStyleid() %>"><%=sy1.getStyle() %></a></li>
			<%
		} 
		%>

			<li>>><a href="blog.jsp">所有分类</a></li>
		</ul>
	</center>
</div>