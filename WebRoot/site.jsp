<%@ include file="head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
IBlogStyleDao sy=new IBlogStyleDaoImpl();
List<BlogStyle> sylist=sy.findBlogStyle();
IPhotoStyleDao phost=new IPhotoStyleDaoImpl();
List<PhotoStyle> phsto=phost.findPhotoStyle();
IResourceStyleDao res=new IResourceStyleDaoImpl();
List<ResourceStyle> resty=res.findResourceStyle();
ICollectStyleDao colle=new ICollectStyleDaoImpl();
List<CollectStyle> collist=colle.findCollectStyle();
%>
<title>小欢欢个人博客-站点地图</title>
<div class="nav">
	<div class="text">
		<UL>
			<LI><A href="index.jsp">首页</A>
			</LI>
			<LI><A href="blog.jsp">博客</A>
			</LI>
			<LI><A href="photoshow2.jsp">相册</A>
			</LI>
			<LI><A href="downlist.jsp">资源</A>
			</LI>
			<LI><A href="link.jsp">收藏</A>
			</LI>
			<LI><A href="map.jsp">旅行</A>
			</LI>
			<LI><A href="post.jsp">留言</A>
			</LI>
			<LI><A href="myself.jsp">关于我</A>
			</LI>
		</UL>
	</div>
</div>
<center>
<div class="site">
<table>

 <tr><th>小欢欢的网站</th><td><a href="index.jsp">首页</a></td></tr>
 <tr><th rowspan="1">小欢欢的博客</th><td><a href="blog.jsp">博文列表</a><a href="blog.jsp?">所有分类</a>
 <%
 for(int i=0;i<sylist.size();i++){
	  		BlogStyle sy1=sylist.get(i);
  %>
 <a href="blog.jsp?id=<%=sy1.getStyleid() %>"><%=sy1.getStyle() %></a>
 <%
 }
  %>
 </td></tr>
 <tr><th rowspan="1">小欢欢的相册</th><td><a href="photoshow2.jsp">相册列表</a>
 <%
 for(int i=0;i<phsto.size();i++){
 PhotoStyle ppp=phsto.get(i);
  %>
 <a href="photolist.jsp?styleid=<%=ppp.getStyleid() %>"><%=ppp.getStyle() %></a>
 <%
 }
  %>
 </td></tr>
 <tr><th rowspan="1">小欢欢的资源</th><td><a href="downlist.jsp">资源列表</a>
 <%
 for(int i=0;i<resty.size();i++){
 ResourceStyle restyle=resty.get(i);
  %>
 <a href="downlist.jsp?id=<%=restyle.getStyleid() %>"><%=restyle.getStyle() %></a>
<%
}
 %>
</td></tr>
 <tr><th rowspan="1">小欢欢的收藏</th><td><a href="link.jsp">收藏列表</a>
<%
for(int i=0;i<collist.size();i++){
CollectStyle cosye=collist.get(i);
 %>
 <a href="link.jsp?id=<%=cosye.getStyleid() %>"><%=cosye.getStyle() %></a>
<%
}
 %>
</td></tr>
 <tr><th rowspan="1">小欢欢的旅行</th><td><a href="map.jsp">我的行程</a></td></tr>
 <tr><th rowspan="1">小欢欢的留言</th><td><a href="post.jsp">留言列表</a></td></tr>
 <tr><th rowspan="1">小欢欢的简历</th><td></td></tr>
 <tr><th rowspan="1">小欢欢的统计</th><td><a href="visit.jsp">站长统计</a></td></tr>
</table>
</div>
</center>
<%@ include file="foot.jsp"%>
