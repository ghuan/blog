<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%@ include file="htmlEditC.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IPhotoStyleDao style=new IPhotoStyleDaoImpl();
List<PhotoStyle> list=style.findPhotoStyle();
request.setCharacterEncoding("utf-8");
int photoid=Integer.parseInt(request.getParameter("photoid"));
IPhotoDao phoo=new IPhotoDaoImpl();
Photo pooh=phoo.findPhoto(photoid);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'photochange.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <script language="javascript">
		function addblog(){
			if(document.getElementById("title").value==""){
				alert("请输入相片标题！");
				return false;
			}
			if(document.getElementById("text").value==""){
				alert("请输入相片简述！");
				return false;
			}
			if(document.getElementById("photo").value==""){
				alert("请上传相片！");
				return false;
			}
			return true;
		}
	</script>
  
  <body>
    <form action="changephotook.jsp" method="post" enctype="multipart/form-data">  
    	相册名：<select id="styleid" name="styleid">
    <% 
    for(int i=0;i<list.size();i++){
    PhotoStyle steyc=list.get(i);
    %>
		  <option value="<%=steyc.getStyleid()%>"><%=steyc.getStyle() %></option>
	<% 
	}
	%>
		</select>
		<input type="text" name="photoid" id="photoid" value="<%=pooh.getPhotoid() %>" style="display:none;">
    相片标题：<input type="text" name="title" id="title" value="<%=pooh.getTitle() %>">
    相片简述：<textarea name="text" class="htmlEditCss" id="text"><%=pooh.getText() %></textarea>
    相片图片：<input type="file" name="photo" id="photo">
    <input type="submit" value="数据提交" onclick="return addblog()">
    </form>
  </body>
</html>
