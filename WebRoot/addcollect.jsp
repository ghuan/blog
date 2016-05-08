<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%@ include file="htmlEditC.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ICollectStyleDao stlyg=new ICollectStyleDaoImpl();
List<CollectStyle> stlo=stlyg.findCollectStyle();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加收藏</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="javascript">
		function addblog(){
			if(document.getElementById("title").value==""){
				alert("请输入标题！");
				return false;
			}
			if(document.getElementById("description").value==""){
				alert("请输入收藏描述！");
				return false;
			}
			if(document.getElementById("mark").value==""){
				alert("请输入标签！");
				return false;
			}
			if(document.getElementById("colladd").value==""){
				alert("请输入链接地址！");
				return false;
			}
			return true;
		}
	</script>
  </head>
  
  <body>
   <form action="addcollectok.jsp" method="post">
    类型：<select id="style" name="style">
    <% 
    for(int i=0;i<stlo.size();i++){
    CollectStyle steyc=stlo.get(i);
    %>
		  <option value="<%=steyc.getStyleid()%>"><%=steyc.getStyle() %></option>
	<% 
	}
	%>
		</select>
    标题：<input type="text" name="title" id="title">
    标签：<input type="text" name="mark" id="mark">
    描述：<textarea name="description" class="htmlEditCss" id="description"></textarea>
  链接地址：  <input type="text" name="colladd" id="colladd">
    <input type="submit" value="数据提交" onclick="return addblog()">
    </form>
  </body>
</html>
