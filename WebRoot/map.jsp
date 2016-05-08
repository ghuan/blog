<%@ include file="head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<title>小欢欢个人博客-我的行程</title>
  	<div class="nav">
  	<div class="text">
  	<UL>
  <LI><A href="index.jsp">首页</A>
			</LI>
			<LI><A href="blog.jsp">博客</A>
			</LI>
			<LI><A href="photoshow2.jsp">相册</A>
			</LI>
			<LI><A href="downlist.jsp">资源</A>
			</LI>
			<LI><A href="link.jsp">收藏</A>
			</LI>
			<LI class=sel><A href="map.jsp">旅行</A>
			</LI>
			<LI><A href="post.jsp">留言</A>
			</LI>
			<LI><A href="myself.jsp">关于我</A>
			</LI></UL>
  	</div>
	</div>
	<center>
	<iframe src="mapchange.jsp" width="980" height="500" frameborder="0" scrolling="no"></iframe>
	</center>
	<%@ include file="foot.jsp"%>