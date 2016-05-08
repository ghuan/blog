<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
IBlogDao blogorder=new IBlogDaoImpl();
IBlogStyleDao style=new IBlogStyleDaoImpl();
List<Blog> listorder=null;
listorder=blogorder.findBlogpoint();
BlogStyle styleorder=null;
String nr1=null;
%>
<div class="tl2">
	<h1>文章排行</h1>
</div>
<div class="mtl3" style="height:200px;">

	<ul>
		<%	
	  		Blog bl=listorder.get(0);
	  		styleorder=style.findBlogStyle(bl.getStyleid());
	  		nr1=bl.getTitle();
				if(nr1.length()>9){
					nr1=nr1.substring(0,9);
				}
	 %>
		<li id="n1"><a href="showblog.jsp?blogid=<%=bl.getBlogid() %>" title="<%=bl.getTitle() %>">[<%=styleorder.getStyle() %>]<%=nr1 %></a>
		</li>
		<%
			Blog b2=listorder.get(1);
	  		styleorder=style.findBlogStyle(b2.getStyleid());
	  		nr1=b2.getTitle();
				if(nr1.length()>9){
					nr1=nr1.substring(0,9);
				}
	 %>
		<li id="n2"><a href="showblog.jsp?blogid=<%=b2.getBlogid() %>" title="<%=b2.getTitle() %>">[<%=styleorder.getStyle() %>]<%=nr1 %></a>
		</li>
		<%
			Blog b3=listorder.get(2);
	  		styleorder=style.findBlogStyle(b3.getStyleid());
	  		nr1=b3.getTitle();
				if(nr1.length()>9){
					nr1=nr1.substring(0,9);
				}
	 %>
		<li id="n3"><a href="showblog.jsp?blogid=<%=b3.getBlogid() %>" title="<%=b3.getTitle() %>">[<%=styleorder.getStyle() %>]<%=nr1 %></a>
		</li>
		<%
			Blog b4=listorder.get(3);
	  		styleorder=style.findBlogStyle(b4.getStyleid());
	  		nr1=b4.getTitle();
				if(nr1.length()>9){
					nr1=nr1.substring(0,9);
				}
	 %>
		<li id="n4"><a href="showblog.jsp?blogid=<%=b4.getBlogid() %>" title="<%=b4.getTitle() %>">[<%=styleorder.getStyle() %>]<%=nr1 %></a>
		</li>
		<%
			Blog b5=listorder.get(4);
	  		styleorder=style.findBlogStyle(b5.getStyleid());
	  		nr1=b5.getTitle();
				if(nr1.length()>9){
					nr1=nr1.substring(0,9);
				}
	 %>
		<li id="n5"><a href="showblog.jsp?blogid=<%=b5.getBlogid() %>" title="<%=b5.getTitle() %>">[<%=styleorder.getStyle() %>]<%=nr1 %></a>
		</li>
		<%
			Blog b6=listorder.get(5);
	  		styleorder=style.findBlogStyle(b6.getStyleid());
	  		nr1=b6.getTitle();
				if(nr1.length()>9){
					nr1=nr1.substring(0,9);
				}
	 %>
		<li id="n6"><a href="showblog.jsp?blogid=<%=b6.getBlogid() %>" title="<%=b6.getTitle() %>">[<%=styleorder.getStyle() %>]<%=nr1 %></a>
		</li>
		<%
			Blog b7=listorder.get(6);
	  		styleorder=style.findBlogStyle(b7.getStyleid());
	  		nr1=b7.getTitle();
				if(nr1.length()>9){
					nr1=nr1.substring(0,9);
				}
	 %>
		<li id="n7"><a href="showblog.jsp?blogid=<%=b7.getBlogid() %>" title="<%=b7.getTitle() %>">[<%=styleorder.getStyle() %>]<%=nr1 %></a>
		</li>
	</ul>

	<div id="more1">
		<a href="blog.jsp">更多</a>
	</div>
</div>
