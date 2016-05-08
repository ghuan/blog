<%@ page language="java" import="java.util.*,java.text.DateFormat" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
	IBlogDao blogls = new IBlogDaoImpl();
	IBlogLyDao bly = new IBlogLyDaoImpl();
	IBlogStyleDao syt=new IBlogStyleDaoImpl();
	List<Blog> blst=null;
	int ida=0;
	if(request.getParameter("id")==null||request.getParameter("id").equals("0")){
		blst = blogls.findBlog();
	}else if(request.getParameter("id")!=null&&!(request.getParameter("id").equals("0"))){
		ida=Integer.parseInt(request.getParameter("id"));
		blst=blogls.findBlogstyle(ida);
	}
	int pagenum = 1;
	int maxsize = 8;
	if (request.getParameter("pagenumb") != null) {
		pagenum = Integer.parseInt(request.getParameter("pagenumb"));
	}
	int begnum = (pagenum - 1) * maxsize;
	int endnum = pagenum * maxsize;
	if (endnum > blst.size()) {
		endnum = blst.size();
	}
	int totalpage = ((blst.size()) / maxsize)
			+ ((blst.size()) % maxsize == 0 ? 0 : 1);
%>
<div class="bloglist" style="height:700px;">
<%
if(ida==0){
 %>
<div>
<h1>
所有博客
</h1>
</div>
<%
}else{
BlogStyle stt=syt.findBlogStyle(ida);
 %>
 <div>
 <h1>
<%=stt.getStyle() %>
</h1>
</div>
 <%
 }
  %>
						<%
							for (int i = begnum; i < endnum; i++) {
								DateFormat longDateFormat = DateFormat.getDateTimeInstance(
										DateFormat.LONG, DateFormat.LONG);
								Blog bllt = blst.get(i);
								List<BlogLy> blglyan = bly.findBlogLy(bllt.getBlogid());
						%>
						<div class="boxblog">
							<div class="blglist">
								<a href="showblog.jsp?blogid=<%=bllt.getBlogid() %>"><%=bllt.getTitle()%></a>
							</div>
							<div style="color:#A2A297;">
								<%=longDateFormat.format(bllt.getInputtime())%>&nbsp;&nbsp;阅读(<%=bllt.getPoint()%>)评论<span class="ds-thread-count" data-thread-key="<%=bllt.getBlogid() %>" data-count-type="comments">(0)</span>
							</div>
						</div>
						<%
							}
						%>
						<table class="pagelist" width="600">
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
								<a href="blog.jsp?pagenumb=<%=pagenm%>&id=<%=ida%>"><%=pagenm%> </a>	
						<%
							}
						%>
								<a href="blog.jsp?pagenumb=<%=pagenum + 1%>&id=<%=ida%>"> 下一页 </a>
								<a href="blog.jsp?pagenumb=<%=totalpage%>&id=<%=ida%>"> 尾页 </a>
						<% 
							} else if (pagenum == totalpage&& totalpage>1) {
						%>	
							<a href="blog.jsp?pagenumb=1&id=<%=ida%>"> 首页 </a>
							<a href="blog.jsp?pagenumb=<%=pagenum - 1%>&id=<%=ida%>"> 上一页 </a>
						<%
							for(int pagenm=1;pagenm<totalpage;pagenm++){
						 %>
							<a href="blog.jsp?pagenumb=<%=pagenm%>&id=<%=ida%>"><%=pagenm%> </a>
								
						<%
							}
						%>	
								<%=totalpage %>
								下一页
								 尾页 
						<% 
							} else {
						%>			
								
								<a href="blog.jsp?pagenumb=1&id=<%=ida%>"> 首页 </a>
								<a href="blog.jsp?pagenumb=<%=pagenum - 1%>&id=<%=ida%>"> 上一页 </a>
						<% 
								for(int pagenm=1;pagenm<pagenum;pagenm++){
						%>	
								<a href="blog.jsp?pagenumb=<%=pagenm%>&id=<%=ida%>"><%=pagenm%> </a>		
						<%
						}
						%>
								<%=pagenum %>
						<%
								for(int pagenm=pagenum+1;pagenm<=totalpage;pagenm++){
						%>
								<a href="blog.jsp?pagenumb=<%=pagenm%>&id=<%=ida%>"><%=pagenm%></a>
						<%
						}
						%>
								
								<a href="blog.jsp?pagenumb=<%=pagenum + 1%>&id=<%=ida%>"> 下一页 </a>
								<a href="blog.jsp?pagenumb=<%=totalpage%>&id=<%=ida%>"> 尾页 </a>
						<%
						}
						 %>		
								</td>
							</tr>
						</table>		
					</div>