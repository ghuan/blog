<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
request.setCharacterEncoding("utf-8");
String resadd=request.getParameter("resadd");
int resourceid=Integer.parseInt(request.getParameter("resourceid"));
IResourceDao resour=new IResourceDaoImpl();
Resource ress=new Resource();
Resource resa=resour.findResource(resourceid);
ress.setPoint((resa.getPoint())+1);
ress.setResourceid(resourceid);
resour.updateBlogpoint(ress);
%>
  <body>
  <%
  response.setHeader("refresh", "0;url="+resadd);
   %>
  </body>
