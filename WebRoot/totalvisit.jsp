<%@ page language="java" import="java.util.*,java.text.DateFormat" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<script language="javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<% 
request.setCharacterEncoding("utf-8");
IIpLookDao iplook=new IIpLookDaoImpl();
List<IpLook> iplist=null;
iplist=iplook.findIplook();
String ipaa="";
if("".equals(request.getParameter("ip"))){
	iplist=iplook.findIplook();
	}
if(request.getParameter("ip")!=null){
ipaa=request.getParameter("ip");
	iplist=iplook.findIpbyIp(ipaa);
}

int pagenum = 1;
	int maxsize = 80;
	if (request.getParameter("pagenumb") != null) {
		pagenum = Integer.parseInt(request.getParameter("pagenumb"));
	}
	int begnum = (pagenum - 1) * maxsize;
	int endnum = pagenum * maxsize;
	if (endnum > iplist.size()) {
		endnum = iplist.size();
	}
	int totalpage = ((iplist.size()) / maxsize)
			+ ((iplist.size()) % maxsize == 0 ? 0 : 1);
%>
<div class="bloglist" style="min-height:500px;height:auto!important;height:500px;;padding-top:2px;padding-bottom: 20px;">
<div class="myself">
 <div class="info">统计查询</div>
 
 <table class="table">
 <tr><th style="width:150px">
 <form action="visit.jsp" method="post">
 ip:<input type="text" id="ip" name="ip">
<input type="submit" value="ip查询"><input type="reset" value="重置">
</form>
<form action="visit1.jsp" method="post">
统计时间:<input class="Wdate" onClick="WdatePicker()" readonly="readonly" type="text" name="time" />
<input type="submit" value="时间查询"><input type="reset" value="重置">
</form>
</th>
</tr>
</table>
 
	 <div class="info">统计列表</div>
 	<center>
 	<table style="font-size:13px;font-family:宋体;font-weight:normal;text-align:center;width:500px;border:#add2fc 1px solid;">
 	<tr>
 	<td style="border:#add2fc 1px solid;">
 	ip
 	</td>
 	<td style="border:#add2fc 1px solid;">
 	时间
 	</td>
 	</tr>
 	<% 
 	for(int i=begnum;i<endnum;i++){
 	IpLook iplooka=iplist.get(i);
 	%>
 	
 	<tr>
 	<td style="border:#add2fc 1px solid;">
 	<%=iplooka.getIp() %>
 	</td>
 	<td style="border:#add2fc 1px solid;">
 	<%=iplooka.getInputtime() %>
 	</td>
 	</tr>
 	<% 
 	}
 	%>
 	</table>
 	</center>
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
								<a href="visit.jsp?pagenumb=<%=pagenm%>&ip=<%=ipaa%>"><%=pagenm%> </a>	
						<%
							}
						%>
								<a href="visit.jsp?pagenumb=<%=pagenum + 1%>&ip=<%=ipaa%>"> 下一页 </a>
								<a href="visit.jsp?pagenumb=<%=totalpage%>&ip=<%=ipaa%>"> 尾页 </a>
						<% 
							} else if (pagenum == totalpage&& totalpage>1) {
						%>	
							<a href="visit.jsp?pagenumb=1&&ip=<%=ipaa%>"> 首页 </a>
							<a href="visit.jsp?pagenumb=<%=pagenum - 1%>&ip=<%=ipaa%>"> 上一页 </a>
						<%
							for(int pagenm=1;pagenm<totalpage;pagenm++){
						 %>
							<a href="visit.jsp?pagenumb=<%=pagenm%>&ip=<%=ipaa%>"><%=pagenm%> </a>
								
						<%
							}
						%>	
								<%=totalpage %>
								下一页
								 尾页 
						<% 
							} else {
						%>			
								
								<a href="visit.jsp?pagenumb=1&ip=<%=ipaa%>"> 首页 </a>
								<a href="visit.jsp?pagenumb=<%=pagenum - 1%>&ip=<%=ipaa%>"> 上一页 </a>
						<% 
								for(int pagenm=1;pagenm<pagenum;pagenm++){
						%>	
								<a href="visit.jsp?pagenumb=<%=pagenm%>&ip=<%=ipaa%>"><%=pagenm%> </a>		
						<%
						}
						%>
								<%=pagenum %>
						<%
								for(int pagenm=pagenum+1;pagenm<=totalpage;pagenm++){
						%>
								<a href="visit.jsp?pagenumb=<%=pagenm%>&ip=<%=ipaa%>"><%=pagenm%></a>
						<%
						}
						%>
								
								<a href="visit.jsp?pagenumb=<%=pagenum + 1%>&ip=<%=ipaa%>"> 下一页 </a>
								<a href="visit.jsp?pagenumb=<%=totalpage%>&ip=<%=ipaa%>"> 尾页 </a>
						<%
						}
						 %>		
								</td>
							</tr>
						</table>		
 </div>	
</div>