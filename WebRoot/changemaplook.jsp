<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IMapDao map=new IMapDaoImpl();
List<MapLook> maplist=map.findMap();
MapLook mapp=maplist.get(0);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改删除行程</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
  a{color:#000;text-decoration: none;font-size:13px;}
  a:hover{color:red;}
  </style>
  <script language="javascript">
	function delConfirm(blog,blogid){
		var a=confirm("确定要删除["+blog+"]的行程吗?？");
		if(a==true){
			window.location.href="maplookdel.jsp?id="+blogid;
		}
	}
</script>
  </head>
  
  <body>
   当前行程：<br>地址：<%=mapp.getMapadd() %><br>详情：<%=mapp.getText() %><br><a href="maplookchange.jsp?id=<%=mapp.getId() %>">修改</a><a href="javascript:delConfirm('<%=mapp.getMapadd() %>',<%=mapp.getId()%>)">删除</a>
  </body>
</html>
