<%@ page language="java" import="java.util.*,java.text.DateFormat"
	pageEncoding="UTF-8"%>

<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
int styleid=Integer.parseInt(request.getParameter("styleid"));
IPhotoDao photo=new IPhotoDaoImpl();
IPhotoStyleDao styee=new IPhotoStyleDaoImpl();
List<Photo> photolist=null;
PhotoStyle st=styee.findPhotoStyle(styleid);
photolist=photo.findPhotoStyle(styleid);
DateFormat longDateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
int pagenum = 1;
	int maxsize = 18;
	if (request.getParameter("pagenumb") != null) {
		pagenum = Integer.parseInt(request.getParameter("pagenumb"));
	}
	int begnum = (pagenum - 1) * maxsize;
	int endnum = pagenum * maxsize;
	if (endnum > photolist.size()) {
		endnum = photolist.size();
	}
	int totalpage = ((photolist.size()) / maxsize)
			+ ((photolist.size()) % maxsize == 0 ? 0 : 1);
%>

<title>小欢欢个人博客-我的相册-<%=st.getStyle() %></title>

<h3><%=st.getStyle() %>&nbsp;<a href="photoshow2.jsp">返回所有相册>></a>
</h3>

	<%
		if(photolist.isEmpty()){
		%>
		<div id="xctime">0张相片&nbsp;创建于：<%=longDateFormat.format(st.getInputtime()) %></div>
	<% 
	}else{
	%>
	<div id="xctime"><%=photolist.size() %>张相片&nbsp;创建于：<%=longDateFormat.format(st.getInputtime()) %>
	</div>
<div id="gallery">
	<%
	for(int i=begnum;i<endnum;i++){
	  		Photo pho=photolist.get(i);
     	String titl1=pho.getTitle();
				if(titl1.length()>8){
					titl1=titl1.substring(0,8);
				}
%>

	<div style="float:left">
		<div id="img">
			<a href="<%=pho.getPhoadd() %>" title="<%=pho.getText() %>"> <img
				src="<%=pho.getPhoadd() %>" width="110" height="100" alt="<%=pho.getTitle() %>" /> </a>
		</div>
		<div id="photottlo" style="width:120px;text-align:center;" title="<%=pho.getTitle() %>"><%=titl1%></div>
		<div id="phototime" style="text-align:center;">&nbsp;<%=pho.getInputtime() %>&nbsp;</div>
	</div>
	
	<%
}
%>
</div>
<%
}
 %>

