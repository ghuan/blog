<%@ include file="head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<title>小欢欢个人博客-我的相册</title>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
IPhotoDao photo=new IPhotoDaoImpl();
IPhotoStyleDao xc=new IPhotoStyleDaoImpl();
List<Photo> photolist=null;
photolist=photo.findPhoto();
List<PhotoStyle> xiangce= xc.findPhotoStyle();
int pagenum = 1;
	int maxsize = 4;
	if (request.getParameter("pagenumb") != null) {
		pagenum = Integer.parseInt(request.getParameter("pagenumb"));
	}
	int begnum = (pagenum - 1) * maxsize;
	int endnum = pagenum * maxsize;
	if (endnum > xiangce.size()) {
		endnum = xiangce.size();
	}
	int totalpage = ((xiangce.size()) / maxsize)
			+ ((xiangce.size()) % maxsize == 0 ? 0 : 1);
%>


<div class="nav">
	<div class="text">
		<UL>
			<LI><A href="index.jsp">首页</A>
			</LI>
			<LI><A href="blog.jsp">博客</A>
			</LI>
			<LI class=sel><A href="photoshow2.jsp">相册</A>
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
	<div class="blogshow">
		<h2>小欢欢的相册</h2>
	</div>


	<div id="photolst">
	<div style="width:800px;padding-top:20px;">
	<div style="width:200px;height:50px;font-size:13px;font-family:黑体">
	共有<font color=red><%=xiangce.size() %></font>个相册&nbsp;&nbsp;总共<font color=red><%=photolist.size() %></font>张相片
	</div>
	<table style="text-align:center;border-color: #fff" border="5">
	<tr>
	<% 
	if(xiangce.size()==0){
	%>
	<%
	}else{
		for(int i=begnum;i<endnum;i++){ 
		PhotoStyle xclist=xiangce.get(i);
		photolist=photo.findPhotoStyle(xclist.getStyleid());
	%>
	
	<td id="pholsst">
	<%
	if(photolist.size()==0){
	 %>
	 <a href="photolist.jsp?styleid=<%=xclist.getStyleid()%>"><img src="images/nophoto.gif" width=145 height=94></a>
	<div><a href="photolist.jsp?styleid=<%=xclist.getStyleid()%>"><%=xclist.getStyle() %></a></div>
	 <%
	 }else{
	  %>
	<a href="photolist.jsp?styleid=<%=xclist.getStyleid()%>"><img src="<%=photolist.get(0).getPhoadd()%>" width=145 height=94></a>
	<div><a href="photolist.jsp?styleid=<%=xclist.getStyleid()%>"><%=xclist.getStyle() %></a></div>
	<%
	}
	 %>
	<td>
	
	<% 
	}
	}
	%>
	</tr>
	</table>
	<table class="pagelist1" >
							<tr>
								<td width="100">总共有<%=totalpage%>页</td>
								<td width="100">当前第<%=pagenum%>页</td>
								<td width="400">
								<%
							if (totalpage <= 1&&pagenum==1) {
						%>
						<%
							} else if (pagenum == 1 && totalpage > 1) {
						%>		
								首页
								上一页 
								1
						<% 
							for(int pagenm=2;pagenm<=totalpage;pagenm++){
						%>
								<a href="photoshow2.jsp?pagenumb=<%=pagenm%>"><%=pagenm%> </a>	
						<%
							}
						%>
								<a href="photoshow2.jsp?pagenumb=<%=pagenum + 1%>"> 下一页 </a>
								<a href="photoshow2.jsp?pagenumb=<%=totalpage%>"> 尾页 </a>
						<% 
							} else if (pagenum == totalpage&& totalpage>1) {
						%>	
							<a href="photoshow2.jsp?pagenumb=1"> 首页 </a>
							<a href="photoshow2.jsp?pagenumb=<%=pagenum - 1%>"> 上一页 </a>
						<%
							for(int pagenm=1;pagenm<totalpage;pagenm++){
						 %>
							<a href="photoshow2.jsp?pagenumb=<%=pagenm%>"><%=pagenm%> </a>
								
						<%
							}
						%>	
								<%=totalpage %>
								下一页
								 尾页 
						<% 
							} else {
						%>			
								
								<a href="photoshow2.jsp?pagenumb=1"> 首页 </a>
								<a href="photoshow2.jsp?pagenumb=<%=pagenum - 1%>"> 上一页 </a>
						<% 
								for(int pagenm=1;pagenm<pagenum;pagenm++){
						%>	
								<a href="photoshow2.jsp?pagenumb=<%=pagenm%>"><%=pagenm%> </a>		
						<%
						}
						%>
								<%=pagenum %>
						<%
								for(int pagenm=pagenum+1;pagenm<=totalpage;pagenm++){
						%>
								<a href="photoshow2.jsp?pagenumb=<%=pagenm%>"><%=pagenm%></a>
						<%
						}
						%>
								
								<a href="photoshow2.jsp?pagenumb=<%=pagenum + 1%>"> 下一页 </a>
								<a href="photoshow2.jsp?pagenumb=<%=totalpage%>"> 尾页 </a>
						<%
						}
						 %>		
								</td>
							</tr>
						</table>
	</div>
	</div>
	</center>
<%@ include file="foot.jsp"%>
