<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>后台管理</title>
<!--[if IE]>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/default/easyui.css"/>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/icon.css"/>
<![endif]-->
<!--[if lte IE 9]>
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery-1.8.0.min.js"></script>

<script type="text/javascript" src="jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<![endif]-->

<script type="text/javascript" src="js/denglujs.js"></script>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/default/easyui.css"/>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/icon.css"/>
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<%
	if(session.getAttribute("login")==null){
		response.sendRedirect("GLHT.jsp");
		return;
	}
	Admin sb=(Admin)session.getAttribute("login");

 %>
<script type="text/javascript">
	$(function() {
		// 数据
		var treeData1 = [ {
			text : "博文管理",
			children : [ {
				text : "添加文章",
				attributes : {
					url : "addblog.jsp"
				}
			}, {
				text : "修改删除文章",
				attributes : {
					url : "changeblog.jsp"
				}
		
			}]
		} ];
		var treeData2 = [ {
			text : "资源管理",
			children : [ {
				text : "添加资源",
				attributes : {
					url : "addresource.jsp"
				}
			}, {
				text : "修改删除资源",
				attributes : {
					url : "changeresource.jsp"
				}
			} ]
		} ];
		var treeData3 = [ {
			text : "相片管理",
			children : [ {
				text : "添加相册",
				attributes : {
					url : "addphotostyle.jsp"
				}
				},{
				text : "修改删除相册",
				attributes : {
					url : "changephotostyle.jsp"
				}
				},{
				text : "添加相片",
				attributes : {
					url : "addphoto.jsp"
				}
				},{
				text : "修改删除相片",
				attributes : {
					url : "changephoto.jsp"
				}
			} ]
		} ];
		var treeData4 = [ {
			text : "收藏管理",
			children : [ {
				text : "添加收藏",
				attributes : {
					url : "addcollect.jsp"
				}
			},{
				text : "修改删除收藏",
				attributes : {
					url : "changecollect.jsp"
				}
			
			}]
		} ];
		var treeData5 = [ {
			text : "旅行管理",
			children : [ {
				text : "添加我的行程",
				attributes : {
					url : "addmaplook.jsp"
				}
			},{
				text : "修改删除行程",
				attributes : {
					url : "changemaplook.jsp"
				}
			
			}]
		} ];
		var treeData6 = [ {
			text : "留言管理",
			children : [ {
				text : "博文留言",
				attributes : {
					url : "bloglymanage.jsp"
				}
				},{
				text : "相册留言",
				attributes : {
					url : "photolymanage.jsp"
				}
				},{
				text : "资源留言",
				attributes : {
					url : "resourcelymanage.jsp"
				}
				},{
				text : "收藏留言",
				attributes : {
					url : "collectmanage.jsp"
				}
				},{
				text : "留言板",
				attributes : {
					url : "lybmanage.jsp"
				
				}
			} ]
		} ];
		
		// 实例化树菜单
		$("#1").tree({
			data : treeData1,
			lines : true,
			onClick : function(node) {
				if (node.attributes) {
					openTab(node.text, node.attributes.url);
				}
			}
		});
		$("#2").tree({
			data : treeData2,
			lines : true,
			onClick : function(node) {
				if (node.attributes) {
					openTab(node.text, node.attributes.url);
				}
			}
		});
		$("#3").tree({
			data : treeData3,
			lines : true,
			onClick : function(node) {
				if (node.attributes) {
					openTab(node.text, node.attributes.url);
				}
			}
		});
		$("#4").tree({
			data : treeData4,
			lines : true,
			onClick : function(node) {
				if (node.attributes) {
					openTab(node.text, node.attributes.url);
				}
			}
		});
		$("#5").tree({
			data : treeData5,
			lines : true,
			onClick : function(node) {
				if (node.attributes) {
					openTab(node.text, node.attributes.url);
				}
			}
		});
		$("#6").tree({
			data : treeData5,
			lines : true,
			onClick : function(node) {
				if (node.attributes) {
					openTab(node.text, node.attributes.url);
				}
			}
		});
		
		// 新增Tab
		function openTab(text, url) {
			if ($("#tabs").tabs('exists', text)) {
				$("#tabs").tabs('select', text);
			} else {
				var content = "<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="
						+ url + "></iframe>";
				$("#tabs").tabs('add', {
					title : text,
					closable : true,
					content : content
				});
			}
		}
	});
</script>
<style>
	a{
		color:#000;
	text-decoration:none;
	
	}
	a:hover{
		text-decoration:underline;
	color:#FC1201;
	}
</style>
</head>
<body class="easyui-layout">
	<div region="north" style="height: 155px;background-color: #E1EEFF">

		
		<div style="margin:40px auto;"><%@ include file="date.jsp" %></div>
		<div style="margin-left:85%">当前管理员:<%=sb.getAdminname() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="GLHT.jsp">安全退出</a></div>

	</div>
	<div region="center">
		<div class="easyui-tabs" fit="true" border="false" id="tabs">
			<div title="首页">
				<div align="center" style="padding-top: 100px;">
					<font color="red" size="6">欢迎<font color="blue" size="5"><%=sb.getAdminname() %></font>管理员使用小欢欢个人博客后台管理系统</font>
				</div>
			</div>
		</div>
	</div>
	<div region="west" style="width: 150px;" title="后台管理" split="true">
		<ul id="1"></ul>
		<ul id="2"></ul>
		<ul id="3"></ul>
		<ul id="4"></ul>
		<ul id="5"></ul>
		
		
		
	</div>
	<div region="south" style="height: 25px;" align="center">
		版权所有：&nbsp;&nbsp;<a href="TeamMember.jsp">高欢</a>
	</div>
</body>
</html>