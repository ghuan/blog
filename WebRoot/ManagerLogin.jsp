
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'AddSPSuccess.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
<% 
	request.setCharacterEncoding("utf-8");
	String una=request.getParameter("name");
	String upa=request.getParameter("password");
	
		IAdminDao lg=new IAdminDaoImpl();
		Admin gh= lg.login(una); 
%>
<%
		if (request.getParameter("rand") != null){
		String rand = (String) session.getAttribute("rand");
			String input = request.getParameter("rand");
			if (rand.equals(input)){
								if(gh==null){
							 %>	
							 	
									<script type="text/javascript">
		<!--
			var result=confirm("用户名不存在！！");
			if(result==true){
				window.history.go(-1);
			}else{
				window.opener=null;window.open('','_self','');
				window.history.go(-1);
			}
		//-->
		</script>										
							<%
								}
								else if(gh.getAdminpwd().equalsIgnoreCase(upa)){
							%>

							<%	
								session.setAttribute("login", gh);
								response.setHeader("refresh", "0;url=manage.jsp");}else{
							 %>
									<script type="text/javascript">
									<!--
										var result=confirm("密码错误！！");
										if(result==true){
											window.history.go(-1);
										}else{
											window.opener=null;window.open('','_self','');
											window.history.go(-1);
										}
									//-->
									</script>
							 <%
							 	}
							 	}else{
							 		%>
							 		<script type="text/javascript">
									<!--
										var result=confirm("验证码错误！！");
										if(result==true){
											window.history.go(-1);
										}else{
											window.opener=null;window.open('','_self','');
											window.history.go(-1);
										}
									//-->
									</script>
							 		<%
							 	}
							 	}
							  %>
							
	<div
		style="color:#FC1201;font-size:20px;font-weight:bold;text-align:center">正在跳转...请稍候！！</div>

</body>
</html>
