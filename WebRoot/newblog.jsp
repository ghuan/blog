<%@ page language="java" import="java.util.*,java.text.DateFormat" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
IBlogDao b=new IBlogDaoImpl();
IBlogStyleDao stylea=new IBlogStyleDaoImpl();
List<Blog> list=null;
list=b.findBlog();
BlogStyle stb=null;
%>
	<div class="tl1"><h1>最新博文</h1></div>
	<div class="mtl2" style="height:200px;">
	
	<marquee onmouseover=this.stop(); onmouseout=this.start(); scrollamount=1 scrolldelay=10 direction=up width="500" height="200" >
	 <%
	 DateFormat longDateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,DateFormat.LONG); 
           		if(list.size()<8){
	  	for(int i=0;i<list.size();i++){
	  		Blog bl=list.get(i);
	  		stb=stylea.findBlogStyle(bl.getStyleid());
	  		String nr=bl.getTitle();
				if(nr.length()>18){
					nr=nr.substring(0,18);
				}
	  	%>
	  	<table width="500" height="20" style="BORDER-BOTTOM: #ccc 1px dashed;">
	  	<tr>
	  	<td width="450">
	  	<div style="text-align:center"><a href="showblog.jsp?blogid=<%=bl.getBlogid() %>" title="<%=bl.getTitle() %>">[<%=stb.getStyle() %>]<%=nr %></a></div>
	  	</td>
	  	<td width="50">
	  	<div id="time"><%=longDateFormat.format(bl.getInputtime()) %></div>
	  	</td>
	  	</tr>
    	</table>
     <%
     }
     }else{
     	for(int i=0;i<8;i++){
	  		Blog bl=list.get(i);
	  		stb=stylea.findBlogStyle(bl.getStyleid());
     	String nr=bl.getTitle();
				if(nr.length()>18){
					nr=nr.substring(0,18);
				}
      %>
      <table width="500" height="20" style="BORDER-BOTTOM: #ccc 1px dashed;">
	  	<tr>
	  	<td width="300">
	  	<div><a href="showblog.jsp?blogid=<%=bl.getBlogid() %>" title="<%=bl.getTitle() %>">>[<%=stb.getStyle() %>]<%=nr %></a></div>
	  	</td>
	  	<td width="200">
	  	<div id="time"><%=longDateFormat.format(bl.getInputtime()) %></div>
	  	</td>
	  	</tr>
    	</table>
      <%
      }
      }
       %>
      </marquee>
    
	</div>