<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
IIpLookDao ipfind=new IIpLookDaoImpl();
List<IpLook> iplistl=ipfind.findIplook();
 %>
<center>
<div class="foot"></div>
<div class="foottitle"><br><a href="link.jsp?id=2">友情链接</a>|<a href="myself.jsp">关于我</a>|<a href="post.jsp">给我留言</a>|<a href="site.jsp">站点地图</a>
<a target="_blank" href="http://wp.qq.com/wpa/qunwpa?idkey=a86a038949c367627c06202486cf8d17d9902fd0914d0d2cf7916dee189d71b2"><img border="0" src="http://pub.idqqimg.com/wpa/images/group.png" alt="jsp建站交流群" title="jsp建站交流群"></a>
	<br>本站部分文章、资源来自互联网，版权归原作者及网站所有，如果侵犯了您的权利，请及时致信告知我站.
	<br>版权声明：凡文章来源注明为本站的文章、图片、视频等信息，请在转载时保留本站链接
	<br>©2013-2015 小欢欢个人网站,All Rights Reserved.
	<br>访问统计：你是本站第 <a href="visit.jsp"><%=iplistl.size() %></a> 位访客
	<br><a href="#">备案号暂定</a>
	<br><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1000188140'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1000188140%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
</div>

</center>
<!-- JiaThis Button BEGIN -->
<script type="text/javascript" src="http://v3.jiathis.com/code_mini/jiathis_r.js" charset="utf-8"></script>
<!-- JiaThis Button END -->
<!-- UJian Button BEGIN -->
	<script type="text/javascript" src="http://v1.ujian.cc/code/ujian.js?type=slide"></script>
<!-- UJian Button END -->
<!-- UJian Button BEGIN -->
<script type="text/javascript" src="http://v1.ujian.cc/code/ujian.js?type=slide&fade=1"></script>
<a href="http://www.ujian.cc" style="border:0;"><img src="http://img.ujian.cc/pixel.png" alt="友荐云推荐" style="border:0;padding:0;margin:0;" /></a>
<!-- UJian Button END -->
</div>
</center>

  </body>
</html>