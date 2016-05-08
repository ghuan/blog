<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%@ include file="htmlEditC.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IResourceStyleDao style=new IResourceStyleDaoImpl();
List<ResourceStyle> list=style.findResourceStyle();
request.setCharacterEncoding("utf-8");
int resourceid=Integer.parseInt(request.getParameter("resourceid"));
IResourceDao phoo=new IResourceDaoImpl();
Resource pooh=phoo.findResource(resourceid);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改资源</title>
    
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
				alert("请输入资源标题！");
				return false;
			}
			if(document.getElementById("text").value==""){
				alert("请输入资源简述！");
				return false;
			}
			if(document.getElementById("resadd").value==""){
				alert("请输入下载地址！");
				return false;
			}
			if(document.getElementById("image").value==""){
				alert("请上传资源图片！");
				return false;
			}
			if(document.getElementById("size").value==""){
				alert("请输入资源大小！");
				return false;
			}
			if(document.getElementById("language").value==""){
				alert("请输入软件语言！");
				return false;
			}
			if(document.getElementById("banben").value==""){
				alert("请输入软件版本！");
				return false;
			}
			return true;
		}
	</script>
  
  <body> 
  <form action="changeresourceok.jsp" method="post" enctype="multipart/form-data">
  资源类型：<select id="styleid" name="styleid">
    <% 
    for(int i=0;i<list.size();i++){
    ResourceStyle style1=list.get(i);
    %>
    <option value="<%=style1.getStyleid() %>"><%=style1.getStyle() %></option>
    <% 
    }
    %>
    </select>
    <input type="text" name="resourceid" id="resourceid" value="<%=pooh.getResourceid() %>" style="display:none;">
    资源标题：<input type="text" id="title" name="title" value="<%=pooh.getTitle() %>">
    资源大小：<input type="text" id="size" name="size" value="<%=pooh.getSize() %>">
    软件语言：<input type="text" id="language" name="language" value="<%=pooh.getLanguage() %>">
    软件版本：<input type="text" id="banben" name="banben" value="<%=pooh.getBanben() %>">
  资源简介:<textarea name="text" class="htmlEditCss" id="text"><%=pooh.getText() %></textarea>
 下载地址：<input type="text" id="resadd" name="resadd" value="<%=pooh.getResadd() %>">
	资源图片：<input type="file" name="image" id="image">
    <input type="submit" value="数据提交" onclick="return addblog()">
    </form>
  </body>
</html>
