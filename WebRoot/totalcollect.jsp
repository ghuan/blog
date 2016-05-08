<%@ page language="java" import="java.util.*,java.text.DateFormat" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
	ICollectDao blogls = new ICollectDaoImpl();
	ICollectStyleDao syt=new ICollectStyleDaoImpl();
	List<Collect> blst=null;
	int ida=0;
	if(request.getParameter("id")==null||request.getParameter("id").equals("0")){
		blst = blogls.findCollect();
	}else if(request.getParameter("id")!=null&&!(request.getParameter("id").equals("0"))){
		ida=Integer.parseInt(request.getParameter("id"));
		blst=blogls.findCollectstyle(ida);
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
<div class="bloglist" style="min-height:700px;height:auto!important;height:700px;">
<%
if(ida==0){
 %>
<div>
<h1>
所有收藏
</h1>
</div>
<%
}else{
CollectStyle stt=syt.findCollectStyle(ida); 
 %>
 <div>
 <h1>
<%=stt.getStyle() %>
</h1>
</div>
 <%
 }
  %>
  			<table class="collectlist" width="660">
  			<tr>
  			<td width="220" style="text-align:center;">
  			标题<br><br>
  			</td>
  			<td width="220" style="text-align:center;">
  			标签<br><br>
  			</td>
  			<td width="220" style="text-align:center;">
  			描述<br><br>
  			</td>
  			</tr>
						<%
							for (int i = begnum; i < endnum; i++) {
								DateFormat longDateFormat = DateFormat.getDateTimeInstance(
										DateFormat.LONG, DateFormat.LONG);
								Collect bllt = blst.get(i);
								
						%>
						<tr>
						<td id="collectlist">
						<a href="<%=bllt.getColladd() %>" target="_blank"><%=bllt.getTitle() %></a>
			  			</td>
			  			<td id="collectlist">
			  			<%=bllt.getMark() %>
			  			</td>
			  			<td id="collectlist">
			  			<%=bllt.getDescription() %>
			  			</td>
						</tr>
						
						<%
							}
						%>
			</table>
						<table class="collectlist1" width="660">
							<tr>
								<td width="130">总共有<%=totalpage%>页</td>
								<td width="130">当前第<%=pagenum%>页</td>
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
								<a href="link.jsp?pagenumb=<%=pagenm%>&id=<%=ida%>"><%=pagenm%> </a>	
						<%
							}
						%>
								<a href="link.jsp?pagenumb=<%=pagenum + 1%>&id=<%=ida%>"> 下一页 </a>
								<a href="link.jsp?pagenumb=<%=totalpage%>&id=<%=ida%>"> 尾页 </a>
						<% 
							} else if (pagenum == totalpage&& totalpage>1) {
						%>	
							<a href="link.jsp?pagenumb=1&id=<%=ida%>"> 首页 </a>
							<a href="link.jsp?pagenumb=<%=pagenum - 1%>&id=<%=ida%>"> 上一页 </a>
						<%
							for(int pagenm=1;pagenm<totalpage;pagenm++){
						 %>
							<a href="link.jsp?pagenumb=<%=pagenm%>&id=<%=ida%>"><%=pagenm%> </a>
								
						<%
							}
						%>	
								<%=totalpage %>
								下一页
								 尾页 
						<% 
							} else {
						%>			
								
								<a href="link.jsp?pagenumb=1&id=<%=ida%>"> 首页 </a>
								<a href="link.jsp?pagenumb=<%=pagenum - 1%>&id=<%=ida%>"> 上一页 </a>
						<% 
								for(int pagenm=1;pagenm<pagenum;pagenm++){
						%>	
								<a href="link.jsp?pagenumb=<%=pagenm%>&id=<%=ida%>"><%=pagenm%> </a>		
						<%
						}
						%>
								<%=pagenum %>
						<%
								for(int pagenm=pagenum+1;pagenm<=totalpage;pagenm++){
						%>
								<a href="link.jsp?pagenumb=<%=pagenm%>&id=<%=ida%>"><%=pagenm%></a>
						<%
						}
						%>
								
								<a href="link.jsp?pagenumb=<%=pagenum + 1%>&id=<%=ida%>"> 下一页 </a>
								<a href="link.jsp?pagenumb=<%=totalpage%>&id=<%=ida%>"> 尾页 </a>
						<%
						}
						 %>		
								</td>
							</tr>
						</table>		
					</div>