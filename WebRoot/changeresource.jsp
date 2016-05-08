<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IResourceDao photo=new IResourceDaoImpl();
IResourceStyleDao style=new IResourceStyleDaoImpl();
List<Resource> pho= photo.findResource();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改删除资源</title>
    
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
		var a=confirm("确定要删除["+photo+"]资源吗?？");
		if(a==true){
			window.location.href="resourcedel.jsp?resourceid="+photoid;
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
    资源图片 
    </td>
    <td>
    资源id
    </td>
    <td>
    所属类型
    </td>
    <td>
    资源标题
    </td>
    <td>
    资源简介
    </td>
    <td>
    资源大小
    </td>
    <td>
   软件语言
    </td>
    <td>
    软件版本
    </td>
    <td>
    下载地址
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
    Resource pph=pho.get(i);
    ResourceStyle styy=style.findResourceStyle(pph.getStyleid());
    %>
    <tr>
    <td>
    <img src="<%=pph.getImageadd() %>" width="100" height="90">
    </td>
    <td>
    <%=pph.getResourceid() %>
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
    <%=pph.getSize() %>
    </td>
    <td>
    <%=pph.getLanguage() %>
    </td>
    <td>
    <%=pph.getBanben() %>
    </td>
    <td>
    <%=pph.getResadd() %>
    </td>
    <td>
    <%=pph.getInputtime() %>
    </td>
    <td>
    <a href="showresource.jsp?resourceid=<%=pph.getResourceid() %>" target="_blank">查看</a><a href="resourcechange.jsp?resourceid=<%=pph.getResourceid() %>">修改</a><a href="javascript:delConfirm('<%=pph.getTitle() %>',<%=pph.getResourceid()%>)">删除</a>
    </td>
    </tr>
    <% 
    }
    %>
    </table>
  </body>
</html>
