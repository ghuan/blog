<%@ page language="java" import="java.util.*,java.text.DateFormat" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
	
	IBlogDao blogls = new IBlogDaoImpl();
	IBlogLyDao bly = new IBlogLyDaoImpl();
	IBlogStyleDao syt=new IBlogStyleDaoImpl();
	List<Blog> blst=null;
	String time=null;
	time=new String((request.getParameter("time")).getBytes("ISO8859-1"), "UTF-8");
	blst=blogls.findBlogtime(time);
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
<div>
<h1>
小欢欢<%=time %>发表的博文
</h1>
</div>

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
								<a href="blog2.jsp?pagenumb=<%=pagenm%>&time=<%=time%>"><%=pagenm%> </a>	
						<%
							}
						%>
								<a href="blog2.jsp?pagenumb=<%=pagenum + 1%>&time=<%=time%>"> 下一页 </a>
								<a href="blog2.jsp?pagenumb=<%=totalpage%>&time=<%=time%>"> 尾页 </a>
						<% 
							} else if (pagenum == totalpage&& totalpage>1) {
						%>	
							<a href="blog2.jsp?pagenumb=1&time=<%=time%>"> 首页 </a>
							<a href="blog2.jsp?pagenumb=<%=pagenum - 1%>&time=<%=time%>"> 上一页 </a>
						<%
							for(int pagenm=1;pagenm<totalpage;pagenm++){
						 %>
							<a href="blog2.jsp?pagenumb=<%=pagenm%>&time=<%=time%>"><%=pagenm%> </a>
								
						<%
							}
						%>	
								<%=totalpage %>
								下一页
								 尾页 
						<% 
							} else {
						%>			
								
								<a href="blog2.jsp?pagenumb=1&time=<%=time%>"> 首页 </a>
								<a href="blog2.jsp?pagenumb=<%=pagenum - 1%>&time=<%=time%>"> 上一页 </a>
						<% 
								for(int pagenm=1;pagenm<pagenum;pagenm++){
						%>	
								<a href="blog2.jsp?pagenumb=<%=pagenm%>&time=<%=time%>"><%=pagenm%> </a>		
						<%
						}
						%>
								<%=pagenum %>
						<%
								for(int pagenm=pagenum+1;pagenm<=totalpage;pagenm++){
						%>
								<a href="blog2.jsp?pagenumb=<%=pagenm%>&time=<%=time%>"><%=pagenm%></a>
						<%
						}
						%>
								
								<a href="blog2.jsp?pagenumb=<%=pagenum + 1%>&time=<%=time%>"> 下一页 </a>
								<a href="blog2.jsp?pagenumb=<%=totalpage%>&time=<%=time%>"> 尾页 </a>
						<%
						}
						 %>		
								</td>
							</tr>
						</table>
					</div>