<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%@ include file="htmlEditC.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("utf-8");
int blogid=Integer.parseInt(request.getParameter("blogid"));
IBlogStyleDao stty=new IBlogStyleDaoImpl();
List<BlogStyle> syt=stty.findBlogStyle();
IBlogDao bbll=new IBlogDaoImpl();
Blog skd=bbll.findBlog(blogid);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改文章</title>
    
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
			if(document.getElementById("title").value==""){
				alert("请输入文章标题！");
				return false;
			}
			if(document.getElementById("text").value==""){
				alert("请输入正文内容！");
				return false;
			}
			return true;
		}
	</script>
  
  <body>
    <form action="changeblogok.jsp" method="post">
    <input type="text" name="blogid" id="blogid" value="<%=skd.getBlogid() %>" style="display:none;">
    文章类型：<select id="style" name="style">
    <% 
    for(int i=0;i<syt.size();i++){
    BlogStyle steyc=syt.get(i);
    %>
		  <option value="<%=steyc.getStyleid()%>"><%=steyc.getStyle() %></option>
	<% 
	}
	%>
		</select>
		
    文章标题：<input type="text" name="title" id="title" value="<%=skd.getTitle() %>">
    正文内容：<textarea name="text" class="htmlEditCss" id="text" ><%=skd.getText() %></textarea>
    <input type="submit" value="数据提交" onclick="return addblog()">
    </form>
  </body>
</html>
