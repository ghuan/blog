<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
IResourceStyleDao sy=new IResourceStyleDaoImpl();
List<ResourceStyle> sylist=sy.findResourceStyle();
%>
<div class="rili1">
	<h1>分类</h1>
</div>
<div class="ril1" style="height:160px;">
	<center>
		<ul class="gd">
			<% 
		for(int i=0;i<sylist.size();i++){
	  		ResourceStyle sy1=sylist.get(i);
		%>
			<li>>><a href="downlist.jsp?id=<%=sy1.getStyleid() %>"><%=sy1.getStyle() %></a></li>
			<%
		} 
		%>

			<li>>><a href="downlist.jsp">所有分类</a></li>
		</ul>
	</center>
</div>