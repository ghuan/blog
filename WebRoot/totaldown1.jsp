<%@ page language="java" import="java.util.*,java.text.DateFormat" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
	IResourceDao resource = new IResourceDaoImpl();
	IResourceStyleDao syt=new IResourceStyleDaoImpl();
	List<Resource> blst=null;
	String time=null;
	time=new String((request.getParameter("time")).getBytes("ISO8859-1"), "UTF-8");
	blst=resource.findResourcetime(time);
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
<div class="bloglist" style="height:400px;">
<div>
<h1>
小欢欢<%=time %>上传的资源
</h1>
</div>
				<%
							for (int i = begnum; i < endnum; i++) {
								
								Resource bllt = blst.get(i);
								ResourceStyle syley=syt.findResourceStyle(bllt.getStyleid());
								
						%>
						<div class="boxresource">
						<table width="600">
						<tr>
						<td width="450">
							<div class="reslist">
								<img src="images/download.png" width="12" height="12"><a href="showresource.jsp?resourceid=<%=bllt.getResourceid() %>">[<%=syley.getStyle() %>]<%=bllt.getTitle()%></a>
							</div>
							</td>
							<td width="150">
							<div style="color:#A2A297;font-size:13px;">
								<%=bllt.getInputtime()%>
							</div>
							</td>
							</tr>
							</table>
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
								<a href="downlist1.jsp?pagenumb=<%=pagenm%>&time=<%=time%>"><%=pagenm%> </a>	
						<%
							}
						%>
								<a href="downlist1.jsp?pagenumb=<%=pagenum + 1%>&time=<%=time%>"> 下一页 </a>
								<a href="downlist1.jsp?pagenumb=<%=totalpage%>&time=<%=time%>"> 尾页 </a>
						<% 
							} else if (pagenum == totalpage&& totalpage>1) {
						%>	
							<a href="downlist1.jsp?pagenumb=1&time=<%=time%>"> 首页 </a>
							<a href="downlist1.jsp?pagenumb=<%=pagenum - 1%>&time=<%=time%>"> 上一页 </a>
						<%
							for(int pagenm=1;pagenm<totalpage;pagenm++){
						 %>
							<a href="downlist1.jsp?pagenumb=<%=pagenm%>&time=<%=time%>"><%=pagenm%> </a>
								
						<%
							}
						%>	
								<%=totalpage %>
								下一页
								 尾页 
						<% 
							} else {
						%>			
								
								<a href="downlist1.jsp?pagenumb=1&time=<%=time%>"> 首页 </a>
								<a href="downlist1.jsp?pagenumb=<%=pagenum - 1%>&time=<%=time%>"> 上一页 </a>
						<% 
								for(int pagenm=1;pagenm<pagenum;pagenm++){
						%>	
								<a href="downlist1.jsp?pagenumb=<%=pagenm%>&time=<%=time%>"><%=pagenm%> </a>		
						<%
						}
						%>
								<%=pagenum %>
						<%
								for(int pagenm=pagenum+1;pagenm<=totalpage;pagenm++){
						%>
								<a href="downlist1.jsp?pagenumb=<%=pagenm%>&time=<%=time%>"><%=pagenm%></a>
						<%
						}
						%>
								
								<a href="downlist1.jsp?pagenumb=<%=pagenum + 1%>&time=<%=time%>"> 下一页 </a>
								<a href="downlist1.jsp?pagenumb=<%=totalpage%>&time=<%=time%>"> 尾页 </a>
						<%
						}
						 %>		
								</td>
							</tr>
						</table>		
					</div>