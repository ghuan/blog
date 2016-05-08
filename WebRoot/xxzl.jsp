<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
IResourceDao rd=new IResourceDaoImpl();
List<Resource> list9=null;
list9=rd.findResourcestyle(3);
%>
		<div class="tl4"><h1>学习资料</h1></div>
	<div class="mtl9" style="height:300px;">
	
	<ul>
	<% 
	if(list9.size()<10){
	for(int i=0;i<list9.size();i++){
	  		Resource r10=list9.get(i);
     	String nr10=r10.getTitle();
				if(nr10.length()>14){
					nr10=nr10.substring(0,14);
				}
	%>
	<li><a href="showresource.jsp?resourceid=<%=r10.getResourceid() %>" title="<%=r10.getTitle() %>"><%=nr10 %></a></li>
	<%
	}
	}else{
	for(int i=0;i<10;i++){
	  		Resource r10=list9.get(i);
     	String nr10=r10.getTitle();
				if(nr10.length()>14){
					nr10=nr10.substring(0,14);
				}
	 %>
	 <li><a href="showresource.jsp?resourceid=<%=r10.getResourceid() %>" title="<%=r10.getTitle() %>"><%=nr10 %></a></li>
	 <%
	 }
	 }
	  %>
	</ul>
	<div id="more"><a href="downlist.jsp?id=3">更多</a></div>
	
	</div>