<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
ICollectStyleDao sy=new ICollectStyleDaoImpl();
List<CollectStyle> sylist=sy.findCollectStyle();
%>
<div class="rili1">
	<h1>我的收藏</h1>
</div>
<div class="ril">
	<center>
		<ul class="gd" style="min-height:176px;height:auto!important;height:176px;">
			<% 
		for(int i=0;i<sylist.size();i++){
	  		CollectStyle sy1=sylist.get(i);
		%>
			<li>>><a href="link.jsp?id=<%=sy1.getStyleid() %>"><%=sy1.getStyle() %></a></li>
			<%
		} 
		%>
		</ul>
	</center>
</div>