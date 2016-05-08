<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
IBlogDao bc=new IBlogDaoImpl();
List<Blog> list6=null;
list6=bc.findBlogstyle(3);
%>
		<div class="tl4"><h1>IT前沿</h1></div>
	<div class="mtl8" style="height:300px;">
	
		
	<ul>
	<% 
	if(list6.size()<10){
	for(int i=0;i<list6.size();i++){
	  		Blog b10=list6.get(i);
     	String nr10=b10.getTitle();
				if(nr10.length()>14){
					nr10=nr10.substring(0,14);
				}
	%>
	<li><a href="showblog.jsp?blogid=<%=b10.getBlogid() %>" title="<%=b10.getTitle() %>"><%=nr10 %></a></li>
	<%
	}
	}else{
	for(int i=0;i<10;i++){
	  		Blog b10=list6.get(i);
     	String nr10=b10.getTitle();
				if(nr10.length()>14){
					nr10=nr10.substring(0,14);
				}
	 %>
	 <li><a href="showblog.jsp?blogid=<%=b10.getBlogid() %>" title="<%=b10.getTitle() %>"><%=nr10 %></a></li>
	 <%
	 }
	 }
	  %>
	</ul>
	
	<div id="more"><a href="blog.jsp?id=3">更多</a></div>
	
	</div>