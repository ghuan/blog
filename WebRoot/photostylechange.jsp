<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IPhotoStyleDao gaohu=new IPhotoStyleDaoImpl();
List<PhotoStyle> sytll=gaohu.findPhotoStyle();
request.setCharacterEncoding("utf-8");
int styleid=Integer.parseInt(request.getParameter("styleid"));
PhotoStyle psly=gaohu.findPhotoStyle(styleid);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'photostylechange.jsp' starting page</title>
    
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
  <form action="changephotostyleok.jsp" method="post">
    相册名：<input type="text" name="style" id="style" value="<%=psly.getStyle()%>">
    <input type="text" name="styleid" id="styleid" value="<%=psly.getStyleid() %>" style="display:none;">
    
      
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
