<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="htmlEditC.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加我的行程</title>
    
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
  <form action="addmaplookok.jsp" method="post">
   地址： <input type="text" id="address" name="address">
  详情：  <textarea name="text" class="htmlEditCss" id="text"></textarea>
    <input type="submit" value="数据提交" onclick="return addblog()">
    </form>
  </body>
</html>
