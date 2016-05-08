<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
IBlogDao bb=new IBlogDaoImpl();
List<Blog> list4=null;
list4=bb.findBlogstyle(1);
%>
	<div class="tl4"><h1>心情日志</h1></div>
	<div class="mtl6" style="height:300px;">
	
	<ul>
	<% 
	if(list4.size()<10){
	for(int i=0;i<list4.size();i++){
	  		Blog b8=list4.get(i);
     	String nr8=b8.getTitle();
				if(nr8.length()>14){
					nr8=nr8.substring(0,14);
				}
	%>
	<li><a href="showblog.jsp?blogid=<%=b8.getBlogid() %>" title="<%=b8.getTitle() %>"><%=nr8 %></a></li>
	<%
	}
	}else{
	for(int i=0;i<10;i++){
	  		Blog b8=list4.get(i);
     	String nr8=b8.getTitle();
				if(nr8.length()>14){
					nr8=nr8.substring(0,14);
				}
	 %>
	 <li><a href="showblog.jsp?blogid=<%=b8.getBlogid() %>" title="<%=b8.getTitle() %>"><%=nr8 %></a></li>
	 <%
	 }
	 }
	  %>
	</ul>
	
	<div id="more"><a href="blog.jsp?id=1">更多</a></div>
	</div>