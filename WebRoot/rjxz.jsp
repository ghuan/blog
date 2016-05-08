<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
IResourceDao rb=new IResourceDaoImpl();
List<Resource> list7=null;
list7=rb.findResourcestyle(1);
%>
	<div class="tl4"><h1>软件下载</h1></div>
	<div class="mtl9" style="height:300px;">
	
	<ul>
	<% 
	if(list7.size()<10){
	for(int i=0;i<list7.size();i++){
	  		Resource r8=list7.get(i);
     	String nr10=r8.getTitle();
				if(nr10.length()>14){
					nr10=nr10.substring(0,14);
				}
	%>
	<li><a href="showresource.jsp?resourceid=<%=r8.getResourceid() %>" title="<%=r8.getTitle() %>"><%=nr10 %></a></li>
	<%
	}
	}else{
	for(int i=0;i<10;i++){
	  		Resource r8=list7.get(i);
     	String nr10=r8.getTitle();
				if(nr10.length()>14){
					nr10=nr10.substring(0,14);
				}
	 %>
	 <li><a href="showresource.jsp?resourceid=<%=r8.getResourceid() %>" title="<%=r8.getTitle() %>"><%=nr10 %></a></li>
	 <%
	 }
	 }
	  %>
	</ul>
	
	<div id="more"><a href="downlist.jsp?id=1">更多</a></div>
	</div>