<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<% 
IPhotoDao photo=new IPhotoDaoImpl();
List<Photo> photolist=null;
photolist=photo.findPhoto();
%>
	<div class="tl3" style="margin-left:2px;"><h1>相片展示</h1></div>
	<div class="mtl5" style="height:130px;margin-left:2px;">
	<center>
	<DIV id=con_2>
	<table width="700" height="130" border="0">
	<tr>
	<td width="20">
		<div class=LeftBotton id=LeftArr></div>
	
</td>
<td width="630" >

<div class=Cont id=ISL_Cont_1>
<%
for(int i=0;i<photolist.size();i++){
	  		Photo pho=photolist.get(i);
     	String titl1=pho.getTitle();
				if(titl1.length()>8){
					titl1=titl1.substring(0,8);
				}
%>
<DIV class=box><A href="photolist.jsp?styleid=<%=pho.getStyleid() %>" target=_blank><IMG alt="<%=titl1  %>" title="<%=pho.getTitle() %>" src="<%=pho.getPhoadd() %>" width=145 height=94></A> 
<P><A href="photolist.jsp?styleid=<%=pho.getStyleid() %>" target=_blank title="<%=pho.getTitle() %>"><%=titl1 %></A></P></DIV>
<%
}
 %>
</td>
<td width="20">
<div class=RightBotton id=RightArr></div>
</td>
<SCRIPT language=javascript type=text/javascript>
			<!--//--><![CDATA[//><!--
			var scrollPic_02 = new ScrollPic();
			scrollPic_02.scrollContId   = "ISL_Cont_1"; //内容容器ID
			scrollPic_02.arrLeftId      = "LeftArr";//左箭头ID
			scrollPic_02.arrRightId     = "RightArr"; //右箭头ID
			scrollPic_02.frameWidth     = 630;//显示框宽度
			scrollPic_02.pageWidth      = 160; //翻页宽度
			scrollPic_02.speed          = 10; //移动速度(单位毫秒，越小越快)
			scrollPic_02.space          = 10; //每次移动像素(单位px，越大越快)
			scrollPic_02.autoPlay       = true; //自动播放
			scrollPic_02.autoPlayTime   = 3; //自动播放间隔时间(秒)
			scrollPic_02.initialize(); //初始化			
			//--><!]]>
	</SCRIPT>
	</tr>
	</table>
</DIV>
</center>
	</div>