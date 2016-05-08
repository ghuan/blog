<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%@ include file="htmlEditC.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IResourceStyleDao rsty=new IResourceStyleDaoImpl();
List<ResourceStyle> list=rsty.findResourceStyle();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加资源</title>
    
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
  <form action="addresourceok.jsp" method="post" enctype="multipart/form-data">
  资源类型：<select id="styleid" name="styleid">
    <% 
    for(int i=0;i<list.size();i++){
    ResourceStyle style=list.get(i);
    %>
    <option value="<%=style.getStyleid() %>"><%=style.getStyle() %></option>
    <% 
    }
    %>
    </select>
    资源标题：<input type="text" id="title" name="title">
    资源大小：<input type="text" id="size" name="size">
    软件语言：<input type="text" id="language" name="language">
    软件版本：<input type="text" id="banben" name="banben">
  资源简介:<textarea name="text" class="htmlEditCss" id="text"></textarea>
 下载地址：<input type="text" id="resadd" name="resadd">
	资源图片：<input type="file" name="image" id="image">
    <input type="submit" value="数据提交" onclick="return addblog()">
    </form>
  </body>
</html>
