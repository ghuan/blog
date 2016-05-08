<%@ page language="java" import="java.util.*,java.text.DateFormat" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
	IResourceDao resource = new IResourceDaoImpl();
	IResourceStyleDao syt=new IResourceStyleDaoImpl();
	List<Resource> blst=null;
	int ida=0;
	if(request.getParameter("id")==null||request.getParameter("id").equals("0")){
		blst = resource.findResource();
	}else if(request.getParameter("id")!=null&&!(request.getParameter("id").equals("0"))){
		ida=Integer.parseInt(request.getParameter("id"));
		blst=resource.findResourcestyle(ida);
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
<div class="bloglist" style="height:400px;">
<%
if(ida==0){
 %>
<div>
<h1>
所有资源
</h1>
</div>
<%
}else{
ResourceStyle stt=syt.findResourceStyle(ida);
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
								<a href="downlist.jsp?pagenumb=<%=pagenm%>&id=<%=ida%>"><%=pagenm%> </a>	
						<%
							}
						%>
								<a href="downlist.jsp?pagenumb=<%=pagenum + 1%>&id=<%=ida%>"> 下一页 </a>
								<a href="downlist.jsp?pagenumb=<%=totalpage%>&id=<%=ida%>"> 尾页 </a>
						<% 
							} else if (pagenum == totalpage&& totalpage>1) {
						%>	
							<a href="downlist.jsp?pagenumb=1&id=<%=ida%>"> 首页 </a>
							<a href="downlist.jsp?pagenumb=<%=pagenum - 1%>&id=<%=ida%>"> 上一页 </a>
						<%
							for(int pagenm=1;pagenm<totalpage;pagenm++){
						 %>
							<a href="downlist.jsp?pagenumb=<%=pagenm%>&id=<%=ida%>"><%=pagenm%> </a>
								
						<%
							}
						%>	
								<%=totalpage %>
								下一页
								 尾页 
						<% 
							} else {
						%>			
								
								<a href="downlist.jsp?pagenumb=1&id=<%=ida%>"> 首页 </a>
								<a href="downlist.jsp?pagenumb=<%=pagenum - 1%>&id=<%=ida%>"> 上一页 </a>
						<% 
								for(int pagenm=1;pagenm<pagenum;pagenm++){
						%>	
								<a href="downlist.jsp?pagenumb=<%=pagenm%>&id=<%=ida%>"><%=pagenm%> </a>		
						<%
						}
						%>
								<%=pagenum %>
						<%
								for(int pagenm=pagenum+1;pagenm<=totalpage;pagenm++){
						%>
								<a href="downlist.jsp?pagenumb=<%=pagenm%>&id=<%=ida%>"><%=pagenm%></a>
						<%
						}
						%>
								
								<a href="downlist.jsp?pagenumb=<%=pagenum + 1%>&id=<%=ida%>"> 下一页 </a>
								<a href="downlist.jsp?pagenumb=<%=totalpage%>&id=<%=ida%>"> 尾页 </a>
						<%
						}
						 %>		
								</td>
							</tr>
						</table>		
					</div>