<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IPhotoDao photo=new IPhotoDaoImpl();
IPhotoStyleDao style=new IPhotoStyleDaoImpl();
List<Photo> pho= photo.findPhoto();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改删除相片</title>
    
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
	function delConfirm(photo,photoid){
		var a=confirm("确定要删除["+photo+"]相片吗?？");
		if(a==true){
			window.location.href="photodel.jsp?photoid="+photoid;
		}
	}
</script>
   <style>
  a{color:#000;text-decoration: none;font-size:13px;}
  a:hover{color:red;}
  </style>
  <body>
    <table style="border-color: #000" border="1">
    <tr>
    <td> 
    相片 
    </td>
    <td>
    相片id
    </td>
    <td>
    所属相册
    </td>
    <td>
    相片名
    </td>
    <td>
    相片简述
    </td>
    <td>
    相片路径
    </td>
    <td>
    时间
    </td>
    <td>
    操作
    </td>
    </tr>
    <% 
    for(int i=0;i<pho.size();i++){
    Photo pph=pho.get(i);
    PhotoStyle styy=style.findPhotoStyle(pph.getStyleid());
    %>
    <tr>
    <td>
    <img src="<%=pph.getPhoadd() %>" width="100" height="90">
    </td>
    <td>
    <%=pph.getPhotoid() %>
    </td>
    <td>
    <%=styy.getStyle() %>
    </td>
    <td>
    <%=pph.getTitle() %>
    </td>
    <td>
    <%=pph.getText() %>
    </td>
    <td>
    <%=pph.getPhoadd() %>
    </td>
    <td>
    <%=pph.getInputtime() %>
    </td>
    <td>
    <a href="photolist.jsp?styleid=<%=pph.getStyleid() %>" target="_blank">查看</a><a href="photochange.jsp?photoid=<%=pph.getPhotoid() %>">修改</a><a href="javascript:delConfirm('<%=pph.getTitle() %>',<%=pph.getPhotoid()%>)">删除</a>
    </td>
    </tr>
    <% 
    }
    %>
    </table>
  </body>
</html>
