<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<title>小欢欢个人博客-首页</title>
<div class="tl"><H1 id="welc">欢迎您！朋友</H1></div>
	<div class="mtl" style="height:auto;">
	<br>
	<center>
	<div style="background-image: url(images/touxiang.gif); height:75px;width:75px;margin:0 auto;"></div>
	小欢欢
	<br><br><a href=# onclick="this.style.behavior='url(#default#homepage)';this.sethomepage('http://hjdv.v050.10000net.cn/MyBlog');">[设为首页]</A> | 
	<a href=# onclick="window.external.addfavorite('http://hjdv.v050.10000net.cn/MyBlog','小欢欢的个人博客')">[加入收藏]</A> 
	<br><A href="mailto:2223486623@qq.com" target=_blank><IMG title=2223486623@qq.com border=0 alt=点击这里给我发邮件 src="images/mail.gif"></A>
	 <A href="http://wpa.qq.com/msgrd?v=3&amp;uin=2223486623&amp;site=qq&amp;menu=yes" target=_blank><IMG title=QQ:2223486623 border=0 alt=点击这里给我发消息 src="images/button_10.gif"></A>
	</center>
	</div>
	 <SCRIPT type=text/javascript src="iplookup.html">
</SCRIPT>

<SCRIPT type=text/javascript>
   var welc = document.getElementById("welc");
   if(welc!=null)welc.innerHTML= "欢迎您！<span style='color:#fff;'>"+remote_ip_info["province"]+','+remote_ip_info["city"]+"</span> 的朋友";
</SCRIPT>	