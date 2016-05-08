<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
IResourceDao resourceorder=new IResourceDaoImpl();
List<Resource> list3=resourceorder.findResourcepoint();

IResourceStyleDao style1=new IResourceStyleDaoImpl();
ResourceStyle rt=null;
String re1=null;
%>
	<div class="tl2" ><h1>下载排行</h1></div>
	<div class="mtl4" style="height:200px;">
	<ul>
	<%	
	  		Resource r1=list3.get(0);
	  		rt=style1.findResourceStyle(r1.getStyleid());
	  		re1=r1.getTitle();
				if(re1.length()>9){
					re1=re1.substring(0,9);
				}
	 %>
	<li id="n1"> 
	  	<a href="showresource.jsp?resourceid=<%=r1.getResourceid() %>" title="<%=r1.getTitle() %>">[<%=rt.getStyle() %>]<%=re1 %></a>
    </li>
	<%	
	  		Resource r2=list3.get(1);
	  		rt=style1.findResourceStyle(r2.getStyleid());
	  		re1=r2.getTitle();
				if(re1.length()>9){
					re1=re1.substring(0,9);
				}
	 %>
	<li id="n2"> 
	  	<a href="showresource.jsp?resourceid=<%=r2.getResourceid() %>" title="<%=r2.getTitle() %>">[<%=rt.getStyle() %>]<%=re1 %></a>
    </li>
	<%	
	  		Resource r3=list3.get(2);
	  		rt=style1.findResourceStyle(r3.getStyleid());
	  		re1=r3.getTitle();
				if(re1.length()>9){
					re1=re1.substring(0,9);
				}
	 %>
	<li id="n3"> 
	  	<a href="showresource.jsp?resourceid=<%=r3.getResourceid() %>" title="<%=r3.getTitle() %>">[<%=rt.getStyle() %>]<%=re1 %></a>
    </li>
	<%	
	  		Resource r4=list3.get(3);
	  		rt=style1.findResourceStyle(r4.getStyleid());
	  		re1=r4.getTitle();
				if(re1.length()>9){
					re1=re1.substring(0,9);
				}
	 %>
	<li id="n4"> 
	  	<a href="showresource.jsp?resourceid=<%=r4.getResourceid() %>" title="<%=r4.getTitle() %>">[<%=rt.getStyle() %>]<%=re1 %></a>
    </li>
	<%	
	  		Resource r5=list3.get(4);
	  		rt=style1.findResourceStyle(r5.getStyleid());
	  		re1=r5.getTitle();
				if(re1.length()>9){
					re1=re1.substring(0,9);
				}
	 %>
	<li id="n5"> 
	  	<a href="showresource.jsp?resourceid=<%=r5.getResourceid() %>" title="<%=r5.getTitle() %>">[<%=rt.getStyle() %>]<%=re1 %></a>
    </li>
	<%	
	  		Resource r6=list3.get(5);
	  		rt=style1.findResourceStyle(r6.getStyleid());
	  		re1=r6.getTitle();
				if(re1.length()>9){
					re1=re1.substring(0,9);
				}
	 %>
	<li id="n6"> 
	  	<a href="showresource.jsp?resourceid=<%=r6.getResourceid() %>" title="<%=r6.getTitle() %>">[<%=rt.getStyle() %>]<%=re1 %></a>
    </li>
	<%	
	  		Resource r7=list3.get(6);
	  		rt=style1.findResourceStyle(r7.getStyleid());
	  		re1=r7.getTitle();
				if(re1.length()>9){
					re1=re1.substring(0,9);
				}
	 %>
	<li id="n7"> 
	  	<a href="showresource.jsp?resourceid=<%=r7.getResourceid() %>" title="<%=r7.getTitle() %>">[<%=rt.getStyle() %>]<%=re1 %></a>
    </li>
	</ul>
	<div id="more1"><a href="downlist.jsp">更多</a></div>
	</div>