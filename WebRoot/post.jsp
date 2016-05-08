<%@ include file="head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<title>小欢欢个人博客-我的留言板</title>
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
			<LI><A href="map.jsp">旅行</A>
			</LI>
			<LI class=sel><A href="post.jsp">留言</A>
			</LI>
			<LI><A href="myself.jsp">关于我</A>
			</LI>
		</UL>
	</div>
</div>
<center>
	<div class="blogshow">
		<h2>小欢欢的留言板</h2>
	</div>
	<table width="985" border="0">
		<tr>
			<td width="220" valign="top">
				<div class="bolgleft">
					<%@ include file="mydata.jsp"%>
				</div>
			</td>
			<td width="765" valign="top">
				<div class="bolgright">
					<%@ include file="lyb.jsp"%>
				</div></td>
		</tr>
	</table>
</center>
<%@ include file="foot.jsp"%>
