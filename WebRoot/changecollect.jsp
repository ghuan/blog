<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ICollectDao collecc=new ICollectDaoImpl();
List<Collect> coo=collecc.findCollect();
ICollectStyleDao cosy=new ICollectStyleDaoImpl();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'changecollect.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style>
  a{color:#000;text-decoration: none;font-size:13px;}
  a:hover{color:red;}
  </style>
  <script language="javascript">
	function delConfirm(blog,blogid){
		var a=confirm("确定要删除["+blog+"]收藏吗?？");
		if(a==true){
			window.location.href="collectdel.jsp?collectid="+blogid;
		}
	}
</script>
  <body>
    <table style="border-color: #000" border="1">
   <tr>
   <td>
   收藏id
   </td>
   <td>
   收藏类型
   </td>
   <td>
   收藏标题
   </td>
    <td>
    时间
   </td>
   <td>
   操作
   </td>
   </tr>
   <%
   for(int i=0;i<coo.size();i++){
   Collect bb=coo.get(i);
   CollectStyle sb=cosy.findCollectStyle(bb.getStyleid());
    %>
    <tr>
   <td>
   <%=bb.getCollectid() %>
   </td>
   <td>
   <%=sb.getStyle() %>
   </td>
   <td>
   <%=bb.getTitle() %>
   </td>
   <td>
   <%=bb.getInputtime() %>
   </td>
   <td>
   <a href="link.jsp?id=<%=bb.getStyleid()%>" target="_blank">查看</a><a href="collectchange.jsp?collectid=<%=bb.getCollectid() %>">修改</a><a href="javascript:delConfirm('<%=bb.getTitle() %>',<%=bb.getCollectid()%>)">删除</a>
   </td>
   </tr>
    <%
    }
     %>
   
   </table>
  </body>
</html>
