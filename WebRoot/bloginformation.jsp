<%@ page language="java"
	import="java.util.*,java.text.DateFormat,java.sql.Timestamp"
	pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<script language="javascript" src="js/ly.js"></script>
<%
	request.setCharacterEncoding("utf-8");
int blogid=Integer.parseInt(request.getParameter("blogid"));
IBlogDao bloggh=new IBlogDaoImpl();
IBlogLyDao liuyan = new IBlogLyDaoImpl();
Blog gaohuan=bloggh.findBlog(blogid);
IBlogLyDao blglyz=new IBlogLyDaoImpl();
List<BlogLy> cao=blglyz.findBlogLy(blogid);
DateFormat longDateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
List<BlogLy> bgliuyan = liuyan.findBlogLy(blogid);
Blog gaohuanup=bloggh.findBeforeBlog(blogid-1);
Blog gaohuandown=bloggh.findNextBlog(blogid+1);

%>
<title>小欢欢个人博客-我的博文-<%=gaohuan.getTitle()%></title>
<div class="bloglist">
	<div id="detail1">
		<img src="images/member.gif" style="height:15px;margin-top:20px;">小欢欢|发表于<%=longDateFormat.format(gaohuan.getInputtime())%>
	</div>
	<div id="blogtitle"><%=gaohuan.getTitle()%></div>
	<div id="blogtext"><%=gaohuan.getText()%></div>
	<div id="detail2">
		阅读(<%=gaohuan.getPoint()%>)评论<span class="ds-thread-count" data-thread-key="<%=gaohuan.getBlogid() %>" data-count-type="comments">(0)</span>
	</div>
	<div id="share">
		<!-- Baidu Button BEGIN -->
		<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
			<span class="bds_more">分享到：</span> <a class="bds_qzone"></a> <a
				class="bds_tsina"></a> <a class="bds_tqq"></a> <a class="bds_renren"></a>
			<a class="bds_t163"></a> <a class="shareCount"></a>
		</div>
		<script type="text/javascript" id="bdshare_js"
			data="type=tools&amp;uid=0"></script>
		<script type="text/javascript" id="bdshell_js"></script>
		<script type="text/javascript">
			document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion="
					+ Math.ceil(new Date() / 3600000)
		</script>
		<!-- Baidu Button END -->
		<div id="bgn">
			<%
				if (gaohuanup.getTitle() == null) {
			%>
			上一篇：没有了
			<%
				} else {
					String nr = gaohuanup.getTitle();
					if (nr.length() > 10) {
						nr = nr.substring(0, 10);
					}
			%>
			上一篇：<a href="showblog.jsp?blogid=<%=gaohuanup.getBlogid()%>"
				title="<%=gaohuanup.getTitle()%>"><%=nr%></a>
			<%
				}
			%>
			<%
				if (gaohuandown.getTitle() == null) {
			%>
			下一篇：没有了
			<%
				} else {
					String nr = gaohuandown.getTitle();
					if (nr.length() > 10) {
						nr = nr.substring(0, 10);
					}
			%>
			下一篇：<a href="showblog.jsp?blogid=<%=gaohuandown.getBlogid()%>"
				title="<%=gaohuandown.getTitle()%>"><%=nr%></a>
			<%
				}
			%>
		</div>
	</div>
	<br>
		<!-- Duoshuo Comment BEGIN -->
		<div class="ds-thread" data-thread-key="<%=gaohuan.getBlogid() %>" data-title="<%=gaohuan.getTitle() %>" style="font-size:13px;font-family:宋体;color:#ccc;margin-left:20px;margin-right:20px;"></div>
	
<!-- Duoshuo Comment END -->
</div>

