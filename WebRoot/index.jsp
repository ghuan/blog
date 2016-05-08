
<%@ include file="head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


  	<div class="nav">
  	<div class="text">
  	<UL>
  <LI class=sel><A href="index.jsp">首页</A> </LI>
  <LI><A href="blog.jsp">博客</A> </LI>
  <LI><A href="photoshow2.jsp">相册</A> </LI>
  <LI><A href="downlist.jsp">资源</A> </LI>
  <LI><A href="link.jsp">收藏</A> </LI>
  <LI><A href="map.jsp">旅行</A> </LI>
  <LI><A href="post.jsp">留言</A> </LI>
  <LI><A href="myself.jsp">关于我</A> </LI></UL>
  	</div>
	</div>
	<table width="985" border="0" height="500">
  <tr>
    <td width="250" valign="top">
    <div class="tln">
	<%@ include file="welcome.jsp"%>
	<%@ include file="aboutme1.jsp"%>
	<%@ include file="myblog.jsp"%>
	<%@ include file="showeather.jsp"%>
	<%@ include file="yqlj.jsp"%>
	
	</div>
	</td>
    <td width="710" valign="top">
    <div class="tln" style="margin-top:5px;">
    <table width="710" border="0">
    <tr>
    <td width="500" valign="top" >
	<%@ include file="zym.jsp"%>
	
	<%@ include file="newblog.jsp"%>
	</td>
	<td width="210" valign="top">
	<%@ include file="blogorder.jsp"%>
	<%@ include file="downloadorder.jsp"%>
	</td>
	</tr>
	</table>
	<%@ include file="photoshow1.jsp"%>
	<table width="710" border="0">
	<tr>
	<td>
	<%@ include file="xqrz.jsp"%>
	</td>
	<td>
	<%@ include file="xxgz.jsp"%>
	</td>
	<td>
	<%@ include file="itqy.jsp"%>
	</td>
	</tr>
	<tr>
	<td>
	<%@ include file="rjxz.jsp"%>
	</td>
	<td>
	<%@ include file="ymfx.jsp"%>
	</td>
	<td>
	<%@ include file="xxzl.jsp"%>
	</td>
	</tr>
	</table>
	</div>
	</td>
    </div>
  </tr>
</table>

<%@ include file="foot.jsp"%>