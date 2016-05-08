<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IPhotoStyleDao gaohu=new IPhotoStyleDaoImpl();
List<PhotoStyle> sytll=gaohu.findPhotoStyle();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addphotostyle.jsp' starting page</title>
    
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
			if(document.getElementById("style").value==""){
				alert("请输入相册名！！");
				return false;
			}
			return true;
		}
	</script>
  <body>
  <form action="addphotostyleok.jsp" method="post">
    相册名：<input type="text" name="style" id="style">
    
      
      <input type="submit" value="数据提交" onclick="return addblog()">
      </form>
      现有相册：
    <%
    for(int i=0;i<sytll.size();i++){
    PhotoStyle bsty=sytll.get(i);
     %>
     <%=bsty.getStyle() %>
     <%
     }
      %>
  </body>
</html>
