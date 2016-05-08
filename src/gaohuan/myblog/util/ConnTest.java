package gaohuan.myblog.util;
import gaohuan.myblog.dao.IAdminDao;
import gaohuan.myblog.dao.IBlogDao;
import gaohuan.myblog.dao.IBlogLyDao;
import gaohuan.myblog.dao.IBlogStyleDao;
import gaohuan.myblog.dao.ICollectDao;
import gaohuan.myblog.dao.ICollectLyDao;
import gaohuan.myblog.dao.ICollectStyleDao;
import gaohuan.myblog.dao.IIpLookDao;
import gaohuan.myblog.dao.ILybDao;
import gaohuan.myblog.dao.IMapDao;
import gaohuan.myblog.dao.IPhotoDao;
import gaohuan.myblog.dao.IPhotoLyDao;
import gaohuan.myblog.dao.IPhotoStyleDao;
import gaohuan.myblog.dao.IResourceDao;
import gaohuan.myblog.dao.IResourceLyDao;
import gaohuan.myblog.dao.IResourceStyleDao;
import gaohuan.myblog.daoImpl.CountDay;
import gaohuan.myblog.daoImpl.IAdminDaoImpl;
import gaohuan.myblog.daoImpl.IBlogDaoImpl;
import gaohuan.myblog.daoImpl.IBlogStyleDaoImpl;
import gaohuan.myblog.daoImpl.IBlogLyDaoImpl;
import gaohuan.myblog.daoImpl.ICollectDaoImpl;
import gaohuan.myblog.daoImpl.ICollectLyDaoImpl;
import gaohuan.myblog.daoImpl.ICollectStyleDaoImpl;
import gaohuan.myblog.daoImpl.IIpLookDaoImpl;
import gaohuan.myblog.daoImpl.ILybDaoImpl;
import gaohuan.myblog.daoImpl.IMapDaoImpl;
import gaohuan.myblog.daoImpl.IPhotoDaoImpl;
import gaohuan.myblog.daoImpl.IPhotoLyDaoImpl;
import gaohuan.myblog.daoImpl.IPhotoStyleDaoImpl;
import gaohuan.myblog.daoImpl.IResourceDaoImpl;
import gaohuan.myblog.daoImpl.IResourceLyDaoImpl;
import gaohuan.myblog.daoImpl.IResourceStyleDaoImpl;
import gaohuan.myblog.pojo.Admin;
import gaohuan.myblog.pojo.Blog;
import gaohuan.myblog.pojo.BlogLy;
import gaohuan.myblog.pojo.BlogStyle;
import gaohuan.myblog.pojo.Collect;
import gaohuan.myblog.pojo.CollectLy;
import gaohuan.myblog.pojo.CollectStyle;
import gaohuan.myblog.pojo.IpLook;
import gaohuan.myblog.pojo.Lyb;
import gaohuan.myblog.pojo.MapLook;
import gaohuan.myblog.pojo.Photo;
import gaohuan.myblog.pojo.PhotoLy;
import gaohuan.myblog.pojo.PhotoStyle;
import gaohuan.myblog.pojo.Resource;
import gaohuan.myblog.pojo.ResourceLy;
import gaohuan.myblog.pojo.ResourceStyle;

import java.sql.Connection;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
public class ConnTest {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	
		//连接测试
		Conn c=new Conn();
		Connection conn=c.getConnection();
		if(conn==null){
			System.out.println("数据库连接不成功");
		}else{
			System.out.println("ok");
		}
		IBlogDao a=new IBlogDaoImpl();
		Blog b=new Blog();
		
		//博客表
		//b.setBlogid(1);
		/*b.setStyleid(1);
		b.setTitle("几率多少减肥了的减肥鹿鼎记法第三方第三方");
		b.setText("dfsdfdf");
		b.setPoint(0);
		b.setInputtime(new Timestamp(new Date().getTime()));
		a.addBlog(b);*/
		//a.delBlog(23);
		//a.updateBlog(b);
		//a.findBlog("java");
		/*DateFormat longDateFormat = DateFormat.getDateTimeInstance
           		(DateFormat.LONG,DateFormat.LONG); 
		List<Blog> bb=a.findBlogtime("2013-11-21");
		for(int i=0;i<bb.size();i++){
		Blog aa=bb.get(i);
			System.out.println(aa.getBlogid()+""+aa.getStyleid()+""+aa.getTitle()+""+aa.getText()+""+aa.getPoint()+""+longDateFormat.format(aa.getInputtime()));
		}*/
		//b=a.findBlog(23);
		//System.out.println(b.getBlogid()+""+b.getStyleid()+""+b.getTitle()+""+b.getText()+""+b.getPoint()+""+b.getInputtime());
		
		
		
		//博客留言表
		//IBlogLyDao a=new IBloyLyDaoImpl();
		/*BlogLy b=new BlogLy();
		b.setBlogId(3);
		b.setUserName("高fdsf欢");
		b.setText("高欢就dsfsdf是天才");
		b.setMail("2223486623@qq.com");
		b.setInputTime(new Timestamp(new Date().getTime()));
		a.addBlogLy(b);*/
		//a.delBlogLy(3);
		/*List<BlogLy> b=a.findBlogLy(3);
		for(int i=0;i<b.size();i++){
			BlogLy aa=b.get(i);
				System.out.println(aa.getBlogId()+""+aa.getLyId()+""+aa.getText()+""+aa.getMail()+""+aa.getInputTime()+""+aa.getUserName());
			}*/
		
		//博客类型表
		//IBlogStyleDao a=new IBlogStyleDaoImpl();
		//BlogStyle b=new BlogStyle();
		//b.setStyleid(3);
		//b.setStyle("IT前沿");
		//a.addBlogStyle(b);
		//a.delBlogStyle(4);
		//a.updateBlogStyle(b);
		/*List<BlogStyle> b=a.findBlogStyle();
		for(int i=0;i<b.size();i++){
			BlogStyle aa=b.get(i);
				System.out.println(aa.getStyleid()+""+aa.getStyle());
			}*/
		
		//资源表
		//IResourceDao a=new IResourceDaoImpl();
		//Resource b=new Resource();
		//b.setResourceid(1);
		/*b.setStyleid(2);
		b.setTitle("webservice的java实现");
		b.setText("合力泰日苍井空");
		b.setResadd("www.baidu.com");
		b.setInputtime(new Timestamp(new Date().getTime()));
		a.addSource(b);*/
		//a.delSource(2);
	/*	//a.updateBlog(b);
		List<Resource> b=a.findResourcepoint();
		for(int i=0;i<b.size();i++){
			Resource aa=b.get(i);
				System.out.println(aa.getResourceid()+""+aa.getStyleid()+""+aa.getTitle()+""+aa.getText()+""+aa.getResadd()+""+aa.getInputtime()+"........"+aa.getPoint());
			}*/
		//b=a.findResource(12);
		//System.out.println(b.getResourceid()+""+b.getStyleid()+""+b.getTitle()+""+b.getText()+""+b.getResadd()+""+b.getInputtime()+""+b.getPoint());
		
		
		//资源留言表
		//IResourceLyDao a=new IResourceLyDaoImpl();
		/*ResourceLy b=new ResourceLy();
		b.setResourceid(1);
		b.setUsername("好困啊");
		b.setText("一个人的工作");
		b.setMail("admin@bhxu.com");
		b.setInputtime(new Timestamp(new Date().getTime()));
		a.addResourceLy(b);*/
		//a.delResourceLy(1);
		/*List<ResourceLy> b=a.findResourceLy(1);
		for(int i=0;i<b.size();i++){
			ResourceLy aa=b.get(i);
				System.out.println(aa.getLyid()+""+aa.getResourceid()+""+aa.getText()+""+aa.getMail()+""+aa.getInputtime()+""+aa.getUsername());
			}*/
		
		//资源类型表
		//IResourceStyleDao a=new IResourceStyleDaoImpl();
		//ResourceStyle b=new ResourceStyle();
		//b.setStyleid(3);
		//b.setStyle("学习资料");
		//a.addResourceStyle(b);
		//a.delResourceStyle(4);
		//a.updateBlogStyle(b);
		/*List<ResourceStyle> b=a.findResourceStyle();
		for(int i=0;i<b.size();i++){
			ResourceStyle aa=b.get(i);
				System.out.println(aa.getStyleid()+""+aa.getStyle());
			}*/
		
		//相片表
	/*	IPhotoDao a=new IPhotoDaoImpl();
		Photo b=new Photo();
		//b.setPhotoid(35);
		b.setStyleid(10);
		b.setTitle("21");
		b.setText("21");
		b.setInputtime(new Timestamp(new Date().getTime()));
		b.setPhoadd("images/image2.jpg");
		a.addPhoto(b);*/
		//a.delPhoto(9);
		//a.updatePhoto(b);
		/*List<Photo> b=a.findPhotoshow(2);
		for(int i=0;i<b.size();i++){
			Photo aa=b.get(i);
				System.out.println(aa.getPhotoid()+""+aa.getStyleid()+""+aa.getText()+""+aa.getTitle()+""+aa.getInputtime()+""+aa.getPhoadd());
			}*/
		/*Photo aa=a.findPhoto(4);
		System.out.println(aa.getPhotoid()+""+aa.getStyleid()+""+aa.getText()+""+aa.getTitle()+""+aa.getInputtime()+""+aa.getPoint()+""+aa.getPhoadd());*/
		//System.out.println(a.findPhotoStyle(4));
		//相片留言表
		//IPhotoLyDao a=new IPhotoLyDaoImpl();
		//PhotoLy b=new PhotoLy();
		/*b.setLyid(4);
		b.setPhotoid(3);
		b.setUsername("高dfd欢");
		b.setText("降到了dsfdsf减肥了的减肥");
		b.setMail("wwwdsfdsf.jdlfkjd.com");
		b.setInputtime(new Timestamp(new Date().getTime()));*/
		//a.addPhotoLy(b);
		//a.delPhotoLy(3);
		/*List<PhotoLy> b=a.findPhotoLy(3);
		for(int i=0;i<b.size();i++){
			PhotoLy aa=b.get(i);
				System.out.println(aa.getPhotoid()+""+aa.getLyid()+""+aa.getText()+""+aa.getUsername()+""+aa.getInputtime()+""+aa.getMail());
			}*/
		
		//相册表
		/*IPhotoStyleDao a=new IPhotoStyleDaoImpl();
		PhotoStyle b=new PhotoStyle();
		//b.setStyleid(9);
		b.setStyle("photoshop");
		b.setInputtime(new Timestamp(new Date().getTime()));
		a.addPhotoStyle(b);*/
		//a.delPhotoStyle(3);
		//a.updatePhotoStyle(b);
		/*List<PhotoStyle> b=a.findPhotoStyle();
		for(int i=0;i<b.size();i++){
			PhotoStyle aa=b.get(i);
				System.out.println(aa.getStyleid()+""+aa.getStyle());
			}*/
		
		//收藏表
		/*ICollectDao a=new ICollectDaoImpl();
		Collect b=new Collect();
		//b.setCollectid(4);
		b.setStyleid(2);
		b.setTitle("52自学网");
		b.setMark("java,php,photoshop,phpcms,脚本");
		b.setDescription("52自学网是本人初次接触建设网站，在凡高建站系统下建的第一个网站，里面包含了在校期间实习期间学习到的各种it知识与应用。 ");
		b.setInputtime(new Timestamp(new Date().getTime()));
		b.setColladd("http://www.gaohuan123.icoc.cc/");
		a.addCollect(b);*/
		//a.delCollect(12);
		//a.updateCollect(b);
		/*List<Collect> b=a.findCollect();
		for(int i=0;i<b.size();i++){
			Collect aa=b.get(i);
				System.out.println(aa.getStyleid()+""+aa.getCollectid()+""+aa.getTitle()+""+aa.getPoint()+""+aa.getInputtime()+""+aa.getColladd());
			}*/
		/*Collect b=a.findCollect(5);
		System.out.println(b.getStyleid()+""+b.getCollectid()+""+b.getTitle()+""+b.getPoint()+""+b.getInputtime()+""+b.getColladd());
*/
		
		//收藏留言表
		//ICollectLyDao a=new ICollectLyDaoImpl();
		//CollectLy b=new CollectLy();
		/*b.setStyleid(4);
		b.setUsername("gaohuan");
		b.setText("dfsdfdf");
		b.setMail("www.baidu.com");
		b.setInputtime(new Timestamp(new Date().getTime()));*/
		//a.addCollectLy(b);
		//a.delCollectLy(3);
		/*List<CollectLy> b=a.findCollectLy(4);
		for(int i=0;i<b.size();i++){
			CollectLy aa=b.get(i);
				System.out.println(aa.getStyleid()+""+aa.getLyid()+""+aa.getUsername()+""+aa.getText()+""+aa.getInputtime()+""+aa.getMail());
			}*/
		
		//收藏类型表
		//ICollectStyleDao a=new ICollectStyleDaoImpl();
		//CollectStyle b=new CollectStyle();
		//b.setStyleid(4);
		//b.setStyle("我的导航");
		//a.addCollectStyle(b);
		//a.delCollectStyle(6);
		//a.updateCollectStyle(b);
		/*List<CollectStyle> b=a.findCollectStyle();
		for(int i=0;i<b.size();i++){
			CollectStyle aa=b.get(i);
				System.out.println(aa.getStyleid()+""+aa.getStyle());
			}*/
		
		
		//留言表
		//ILybDao a=new ILybDaoImpl();
		//Lyb b=new Lyb();
		/*b.setUsername("ghlkdjf");
		b.setText("dsfdf");
		b.setMail("dsfdsf");
		b.setInputtime(new Timestamp(new Date().getTime()));*/
		//a.addLyb(b);
		//a.delLyb(3);
		/*List<Lyb> b=a.findLyb();
		for(int i=0;i<b.size();i++){
			Lyb aa=b.get(i);
				System.out.println(aa.getLyid()+""+aa.getUsername()+""+aa.getText()+""+aa.getMail()+""+aa.getInputtime());
			}*/
		//管理员表
		/*IAdminDao a=new IAdminDaoImpl();
		Admin b=new Admin();
		b.setAdminname("gaohuan");
		b.setAdminpwd("397899");
		a.addAdmin(b);*/
		
		//ip
	/*	IIpLookDao ip=new IIpLookDaoImpl();
		List<IpLook> iplook=ip.findIpDay("2012-12-07");
		for(int i=0;i<iplook.size();i++){
			IpLook ipa=iplook.get(i);
			System.out.println(ipa.getIp()+ipa.getInputtime());
		}*/
		/*CountDay dd=new CountDay();
		System.out.print(dd.getYestDay());*/
		//地图表
		/*
*/
	}
}
