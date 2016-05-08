<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
IBlogDao blgg=new IBlogDaoImpl();
IBlogStyleDao stylell=new IBlogStyleDaoImpl();
List<Blog> bllgg=blgg.findBlogorder();
BlogStyle styleor=null;
%>
<div class="rili1">
	<h1>随机博文</h1>
</div>
<div class="ril" style="height:300px;">
	<center>
		<ul class="sbb">
		
	 <%
	 
           		if(bllgg.size()<10){
	  	for(int i=0;i<bllgg.size();i++){
	  		Blog btwo=bllgg.get(i);
	  		styleor=stylell.findBlogStyle(btwo.getStyleid());
	  		String zfc=btwo.getTitle();
				if(zfc.length()>10){
					zfc=zfc.substring(0,10);
				}
	  	%>
	  	
	  
	  	<li><a href="showblog.jsp?blogid=<%=btwo.getBlogid() %>" title="<%=btwo.getTitle() %>">[<%=styleor.getStyle() %>]<%=zfc %></a></li>
     <%
     }
     }else{
     	for(int i=0;i<10;i++){
	  		Blog btwo=bllgg.get(i);
	  		styleor=stylell.findBlogStyle(btwo.getStyleid());
	  		String zfc=btwo.getTitle();
				if(zfc.length()>10){
					zfc=zfc.substring(0,10);
				}
      %>
      <li><a href="showblog.jsp?blogid=<%=btwo.getBlogid() %>" title="<%=btwo.getTitle() %>">[<%=styleor.getStyle() %>]<%=zfc %></a></li>
      <%
      }
      }
       %>
     
		</ul>
	</center>
</div>
