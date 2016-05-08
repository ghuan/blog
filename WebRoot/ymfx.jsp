<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
IResourceDao rc=new IResourceDaoImpl();
List<Resource> list8=null;
list8=rc.findResourcestyle(2);
%>
		<div class="tl4"><h1>源码分享</h1></div>
	<div class="mtl9" style="height:300px;">
	
	<ul>
	<% 
	if(list8.size()<10){
	for(int i=0;i<list8.size();i++){
	  		Resource r9=list8.get(i);
     	String nr10=r9.getTitle();
				if(nr10.length()>14){
					nr10=nr10.substring(0,14);
				}
	%>
	<li><a href="showresource.jsp?resourceid=<%=r9.getResourceid() %>" title="<%=r9.getTitle() %>"><%=nr10 %></a></li>
	<%
	}
	}else{
	for(int i=0;i<10;i++){
	  		Resource r9=list8.get(i);
     	String nr10=r9.getTitle();
				if(nr10.length()>14){
					nr10=nr10.substring(0,14);
				}
	 %>
	 <li><a href="showresource.jsp?resourceid=<%=r9.getResourceid() %>" title="<%=r9.getTitle() %>"><%=nr10 %></a></li>
	 <%
	 }
	 }
	  %>
	</ul>
	
	<div id="more"><a href="downlist.jsp?id=2">更多</a></div>
	
	</div>