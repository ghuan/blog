<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
	CountDay gaohuan=new CountDay();
java.text.DateFormat yyyy = new java.text.SimpleDateFormat("yyyy-MM-dd");
String time=yyyy.format(new Date());
int day=gaohuan.getBetweenDayNumber("2013-12-6", time);


IBlogDao blog=new IBlogDaoImpl();
List<Blog> bloglist=blog.findBlog();
IPhotoDao photo=new IPhotoDaoImpl();
List<Photo> photolist=photo.findPhoto();
IResourceDao resource=new IResourceDaoImpl();
List<Resource> resourcelist=resource.findResource();


IIpLookDao ipfind1=new IIpLookDaoImpl();
List<IpLook> iplistl1=ipfind1.findIplook();
String yestday=gaohuan.getYestDay();
List<IpLook> yestlist=ipfind1.findIpDay(yestday);
List<IpLook> todaylist=ipfind1.findIpDay(time);
%>

<div class="rili1">
	<h1>站长统计</h1>
</div>
<div class="ril">
	<center>
		<div style="width:150px;color:#888;font-size:13px;font-family:宋体;text-align:left;">
			站点年龄：<%=day %>天
		<br>
			博文数量：<%=bloglist.size() %>篇
		<br>
			相片数量：<%=photolist.size() %>张
		<br>
			收藏数量：<%=resourcelist.size() %>个
		<br>
			总访问量：<%=iplistl1.size() %>人
		<br>
			今日访问：<%=todaylist.size() %>人
		<br>
			昨日访问：<%=yestlist.size() %>人
		</div>
	</center>
</div>