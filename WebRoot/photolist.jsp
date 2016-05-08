<%@ include file="head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../style-projects-jquery.css" />    
    
    <!-- Arquivos utilizados pelo jQuery lightBox plugin -->
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script>
    <link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" media="screen" />
    <!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->
    
    <!-- Ativando o jQuery lightBox plugin -->
    <script type="text/javascript">
    $(function() {
        $('#gallery a').lightBox();
    });
    </script>
   	<style type="text/css">
	/* jQuery lightBox plugin - Gallery style */

	#img{border:5px;}
	#img img {
		border: 5px solid #ccc;
		border-width: 5px 5px 5px;
	}
	#img a:hover img {
		border: 5px solid #fff;
		border-width: 5px 5px 5px;
		color: #fff;
	}
	</style>


<div class="nav">
	<div class="text">
		<UL>
			<LI><A href="index.jsp">首页</A>
			</LI>
			<LI><A href="blog.jsp">博客</A>
			</LI>
			<LI class=sel><A href="photoshow2.jsp">相册</A>
			</LI>
			<LI><A href="downlist.jsp">资源</A>
			</LI>
			<LI><A href="link.jsp">收藏</A>
			</LI>
			<LI><A href="map.jsp">旅行</A>
			</LI>
			<LI><A href="post.jsp">留言</A>
			</LI>
			<LI><A href="myself.jsp">关于我</A>
			</LI>
		</UL>
	</div>
</div>
<center>
	<div class="blogshow">
		<h2>小欢欢的相册</h2>
	</div>
	

	<div id="photolstt2">
	<div style="width:833px;padding-top:20px;">
	<table width="833">
	<tr>
	<td>
	<%@ include file="showphoto.jsp"%>
	</td>
	</tr>
	<tr>
	 <td>
	 <table class="pagelist2" width="833">
							<tr>
								<td width="133">总共有<%=totalpage%>页</td>
								<td width="100">当前第<%=pagenum%>页</td>
								<td width="600">
								<%
							if (totalpage <= 1&&pagenum==1) {
						%>
						<%
							} else if (pagenum == 1 && totalpage > 1) {
						%>		
								首页
								上一页 
								1
						<% 
							for(int pagenm=2;pagenm<=totalpage;pagenm++){
						%>
								<a href="photolist.jsp?pagenumb=<%=pagenm%>&styleid=<%=styleid%>"><%=pagenm%> </a>	
						<%
							}
						%>
								<a href="photolist.jsp?pagenumb=<%=pagenum + 1%>&styleid=<%=styleid%>"> 下一页 </a>
								<a href="photolist.jsp?pagenumb=<%=totalpage%>&styleid=<%=styleid%>"> 尾页 </a>
						<% 
							} else if (pagenum == totalpage&& totalpage>1) {
						%>	
							<a href="photolist.jsp?pagenumb=1&styleid=<%=styleid%>"> 首页 </a>
							<a href="photolist.jsp?pagenumb=<%=pagenum - 1%>&styleid=<%=styleid%>"> 上一页 </a>
						<%
							for(int pagenm=1;pagenm<totalpage;pagenm++){
						 %>
							<a href="photolist.jsp?pagenumb=<%=pagenm%>&styleid=<%=styleid%>"><%=pagenm%> </a>
								
						<%
							}
						%>	
								<%=totalpage %>
								下一页
								 尾页 
						<% 
							} else {
						%>			
								
								<a href="photolist.jsp?pagenumb=1&styleid=<%=styleid%>"> 首页 </a>
								<a href="photolist.jsp?pagenumb=<%=pagenum - 1%>&styleid=<%=styleid%>"> 上一页 </a>
						<% 
								for(int pagenm=1;pagenm<pagenum;pagenm++){
						%>	
								<a href="photolist.jsp?pagenumb=<%=pagenm%>&styleid=<%=styleid%>"><%=pagenm%> </a>		
						<%
						}
						%>
								<%=pagenum %>
						<%
								for(int pagenm=pagenum+1;pagenm<=totalpage;pagenm++){
						%>
								<a href="photolist.jsp?pagenumb=<%=pagenm%>&styleid=<%=styleid%>"><%=pagenm%></a>
						<%
						}
						%>
								
								<a href="photolist.jsp?pagenumb=<%=pagenum + 1%>&styleid=<%=styleid%>"> 下一页 </a>
								<a href="photolist.jsp?pagenumb=<%=totalpage%>&styleid=<%=styleid%>"> 尾页 </a>
						<%
						}
						 %>		
								</td>
							</tr>
						</table>	
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
	<!-- Duoshuo Comment BEGIN -->
	<div class="ds-thread" data-thread-key="<%=styleid %>" data-title="<%=st.getStyle() %>"></div>

<!-- Duoshuo Comment END -->
	
	
</td>
</tr>
</table>
	</div>
	</div>
</center>
<%@ include file="foot.jsp"%>
