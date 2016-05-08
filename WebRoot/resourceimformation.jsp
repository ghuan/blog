<%@ page language="java" import="java.util.*,java.sql.Timestamp" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
request.setCharacterEncoding("utf-8");
int resourceid=Integer.parseInt(request.getParameter("resourceid"));
IResourceDao resour=new IResourceDaoImpl();
Resource ress=resour.findResource(resourceid);

IResourceStyleDao style=new IResourceStyleDaoImpl();
ResourceStyle stee=style.findResourceStyle(ress.getStyleid());
%>
<title>小欢欢个人博客-我的资源-<%=ress.getTitle() %></title>
<div class="bloglist">
<div id="downtitle"><%=ress.getTitle() %></div>
<table width="700">
<tr>
<td valign="top" width="400">
<font id="downcomm">软件分类：</font><font id="downcomn"><%=stee.getStyle() %> </font><br>
<font id="downcomm">软件大小：</font><font style="font-size:15px;"><%=ress.getSize() %></font><br>
<font id="downcomm">下载次数：</font><font color="red" style="font-size:15px;"><%=ress.getPoint() %></font><font id="downcomn">次</font><br>
<font id="downcomm">软件语言：</font><font style="font-size:15px;"><%=ress.getLanguage() %></font><br>
<font id="downcomm">添加时间：</font><font style="font-size:15px;"><%=ress.getInputtime() %></font><br>
<font id="downcomm">软件版本：</font><font style="font-size:15px;"><%=ress.getBanben()%></font>
<div id="downcomm"><a href="showresource.jsp?resourceid=<%=ress.getResourceid() %>#xiazai"><img src="images/down.gif" border="0"></a>&nbsp;<a href="showresource.jsp?resourceid=<%=ress.getResourceid() %>#pinglun"><img src="images/lun.gif" border="0"></a></div>
<!-- Baidu Button BEGIN -->
		<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare" style="margin-left:50px;">
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
</td>
<td valign="top" width="300">
<font><a href="<%=ress.getImageadd() %>" title="点击查看全图" target="_blank"><img src="<%=ress.getImageadd() %>"  width="250" height="200" border="0"></a></font>
</td>
</tr>
</table>
<div class="sendmessage"><h4>下载必读</h4></div>
<div id="downmess">&nbsp;&nbsp;小欢欢个人网站之所有下载资源，都是经小欢欢精心审核验证后，才决定推荐给大家的。其中包括个人的一些作品源码、使用过的开发工具、电脑软件、API技术文档、论文作品等，绝对不包含病毒，木马等危害电脑的程序。像挂马等等的不齿行为，历来都受到本站长的严重鄙视。所有的资料都已经打包，若你还不放心，下载后请再次扫描。如果您某个链接下载不了，或出现其他错误，请留言，谢谢。</div>
<div class="sendmessage"><h4>软件介绍</h4></div>
<div id="downmess"><%=ress.getText() %></div>
<div class="sendmessage"><h4 id="xiazai">下载地址</h4></div>
<div id="downmess"><a href="downloading.jsp?resadd=<%=ress.getResadd() %>&resourceid=<%=ress.getResourceid() %>" target="_blank">下载地址1</a>&nbsp;&nbsp;<a href="downloading.jsp?resadd=<%=ress.getResadd() %>&resourceid=<%=ress.getResourceid() %>" target="_blank">下载地址2</a></div>
<div class="sendmessage"><h4 id="pinglun">评论</h4></div>
<!-- Duoshuo Comment BEGIN -->
		<div class="ds-thread" data-thread-key="<%=ress.getResourceid() %>" data-title="<%=ress.getTitle()%>" style="font-size:13px;font-family:宋体;color:#ccc;margin-left:20px;margin-right:20px;"></div>
	
<!-- Duoshuo Comment END -->
</div>