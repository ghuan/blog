<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
IBlogDao bd=new IBlogDaoImpl();
List<Blog> list5=null;
list5=bd.findBlogstyle(2);
%>
		<div class="tl4"><h1>学习工作</h1></div>
	<div class="mtl7" style="height:300px;">
	
		
	<ul>
	<% 
	if(list5.size()<10){
	for(int i=0;i<list5.size();i++){
	  		Blog b9=list5.get(i);
     	String nr9=b9.getTitle();
				if(nr9.length()>14){
					nr9=nr9.substring(0,14);
				}
	%>
	<li><a href="showblog.jsp?blogid=<%=b9.getBlogid() %>" title="<%=b9.getTitle() %>"><%=nr9 %></a></li>
	<%
	}
	}else{
	for(int i=0;i<10;i++){
	  		Blog b9=list5.get(i);
     	String nr9=b9.getTitle();
				if(nr9.length()>14){
					nr9=nr9.substring(0,14);
				}
	 %>
	 <li><a href="showblog.jsp?blogid=<%=b9.getBlogid() %>" title="<%=b9.getTitle() %>"><%=nr9 %></a></li>
	 <%
	 }
	 }
	  %>
	</ul>
	
	<div id="more"><a href="blog.jsp?id=2">更多</a></div>
	
	</div>