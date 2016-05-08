<%@ page language="java" import="java.util.*,java.sql.Timestamp,com.jspsmart.upload.*" pageEncoding="gb2312"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%@page import="java.text.SimpleDateFormat"%>


<%   
 	request.setCharacterEncoding("utf-8");
     SmartUpload su = new SmartUpload();
	//初始化SmartUpload对象
	su.initialize(pageContext);
	com.jspsmart.upload.File file = null;
	//允许上传类型
	String allowed = "gif,jpg,doc,rar,png,mp3,wma,jpeg";
	//不许上传类型
	String denied = "jsp,asp,php,aspx,html,htm,exe,bat";
	com.jspsmart.upload.Request req  = null;
	//设置上传文件大小
	int file_size = 20*1024*1024;
	String exceptionMsg = null;
	String paths="";//获得上传图片的路径
	int i = 0;
	try {
			//定义允许上传文件类型   
			su.setAllowedFilesList(allowed);
			//不允许上传文件类型   
			su.setDeniedFilesList(denied);		
			//单个文件最大限制   
			su.setMaxFileSize(file_size);						
			//执行上传
			su.upload();
			//得到单个上传文件的信息
			file = su.getFiles().getFile(0);
			String filepath = null;
			if(!file.isMissing()){
				//设置文件在服务器的保存位置
				filepath = "images//";
				filepath += file.getFileName();
				//文件另存为   
				System.out.println(filepath);
				paths=filepath;
				file.saveAs(filepath, SmartUpload.SAVE_VIRTUAL);
			}
			
		} catch (Exception e) {
			exceptionMsg = e.getMessage();
			e.printStackTrace();
		}	
    
     int styleid=Integer.parseInt(su.getRequest().getParameter("styleid"));
     String title=su.getRequest().getParameter("title");
     String text=su.getRequest().getParameter("text");
    IPhotoDao photo=new IPhotoDaoImpl();
    Photo pho=new Photo();
    pho.setStyleid(styleid);
    pho.setTitle(title);
    pho.setText(text);
    pho.setPhoadd(paths);
    pho.setInputtime(new Timestamp(new Date().getTime()));
    photo.addPhoto(pho);
 %>
添加成功..
    <%
		response.setHeader("refresh", "0;url=addphoto.jsp");
	%>