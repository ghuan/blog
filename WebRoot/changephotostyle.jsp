<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IPhotoStyleDao sty=new IPhotoStyleDaoImpl();
List<PhotoStyle> list=sty.findPhotoStyle();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'changephotostyle.jsp' starting page</title>
    
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
	function delConfirm(style,styleid){
		var a=confirm("删除["+style+"]相册，会删除该相册下的所有相片！！确定要删除["+style+"]相册吗?？");
		if(a==true){
			window.location.href="photostyledel.jsp?styleid="+styleid;
		}
	}
</script>
  <body>
   <table style="border-color: #000" border="1">
   <tr>
   <td>
   相册id
   </td>
   <td>
   相册名
   </td>
   <td>
   时间
   </td>
   <td>
   操作
   </td>
   </tr>
   <%
   for(int i=0;i<list.size();i++){
  PhotoStyle bb=list.get(i);
    %>
    <tr>
   <td>
   <%=bb.getStyleid() %>
   </td>
   <td>
   <%=bb.getStyle() %>
   </td>
   <td>
   <%=bb.getInputtime() %>
   </td>
   <td>
   <a href="photoshow2.jsp" target="_blank">查看</a><a href="photostylechange.jsp?styleid=<%=bb.getStyleid() %>">修改</a><a href="javascript:delConfirm('<%=bb.getStyle() %>',<%=bb.getStyleid()%>)">删除</a>
   </td>
   </tr>
    <%
    }
     %>
   
   </table>
  </body>
</html>
