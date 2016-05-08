<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%@ include file="htmlEditC.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("utf-8");
int collectid=Integer.parseInt(request.getParameter("collectid"));
ICollectStyleDao clte=new ICollectStyleDaoImpl();
List<CollectStyle> clist=clte.findCollectStyle();
ICollectDao gh=new ICollectDaoImpl();
Collect collectg=gh.findCollect(collectid);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改收藏</title>
    
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
   <form action="changecollectok.jsp" method="post">
    类型：<select id="style" name="style">
    <% 
    for(int i=0;i<clist.size();i++){
    CollectStyle steyc=clist.get(i);
    %>
		  <option value="<%=steyc.getStyleid()%>"><%=steyc.getStyle() %></option>
	<% 
	}
	%>
		</select>
		<input type="text" name="collectid" id="collectid" value="<%=collectg.getCollectid()%>" style="display:none;">
    标题：<input type="text" name="title" id="title" value="<%=collectg.getTitle() %>">
    标签：<input type="text" name="mark" id="mark" value="<%=collectg.getMark() %>">
    描述：<textarea name="description" class="htmlEditCss" id="description"><%=collectg.getDescription() %></textarea>
  链接地址：  <input type="text" name="colladd" id="colladd" value="<%=collectg.getColladd() %>">
    <input type="submit" value="数据提交" onclick="return addblog()">
    </form>
  </body>
</html>
