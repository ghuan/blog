<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%@ include file="htmlEditC.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("utf-8");
int id=Integer.parseInt(request.getParameter("id"));
IMapDao map=new IMapDaoImpl();
MapLook mapp=map.findMap(id);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改我的行程</title>
    
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
			if(document.getElementById("address").value==""){
				alert("请输入地址！");
				return false;
			}
			if(document.getElementById("text").value==""){
				alert("请输入行程详情！");
				return false;
			}
			return true;
		}
	</script>
  </head>
  
  <body>
  <form action="changemaplookok.jsp" method="post">
  <input type="text" name="id" id="id" value="<%=mapp.getId() %>" style="display:none;">
   地址： <input type="text" id="address" name="address" value="<%=mapp.getMapadd() %>">
  详情：  <textarea name="text" class="htmlEditCss" id="text"><%=mapp.getText() %></textarea>
    <input type="submit" value="数据提交" onclick="return addblog()">
    </form>
  </body>
</html>
