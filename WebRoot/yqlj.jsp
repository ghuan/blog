<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
ICollectDao collect=new ICollectDaoImpl();
List<Collect> listcollect=null;
listcollect=collect.findCollectstyle(2);
%>
<div class="tl">
	<h1>友情链接</h1>
</div>
<div class="mtl1">
	<ul style="min-height:176px;height:auto!important;height:176px;">
	<% 
	if(listcollect.size()<10){
	for(int i=0;i<listcollect.size();i++){
	  		Collect c=listcollect.get(i);
     	
	%>
	<li><a href="<%=c.getColladd()  %>" title="<%=c.getTitle() %>" target="_blank"><%=c.getTitle() %></a></li>
	<%
	}
	}else{
	for(int i=0;i<10;i++){
	  		Collect c1=listcollect.get(i);
     	
	 %>
	 <li><a href="<%=c1.getColladd()  %>" title="<%=c1.getTitle() %>"><%=c1.getTitle() %></a></li>
	 <%
	 }
	 }
	  %>
	</ul>
	<a href="post.jsp" style="margin-left:150px;width:60px;">申请友链</a>
</div>