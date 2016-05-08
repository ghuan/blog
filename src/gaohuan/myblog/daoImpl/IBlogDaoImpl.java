package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.IBlogDao;
import gaohuan.myblog.pojo.Blog;
import gaohuan.myblog.util.Conn;



public class IBlogDaoImpl extends Conn implements IBlogDao {

	@Override
	public boolean addBlog(Blog blog) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into blog (style_id,title,text,inputtime) values(?,?,?,?)",new Object[]{
				 blog.getStyleid(),
				 blog.getTitle(),
				 blog.getText(),
				blog.getInputtime()
		} );
		
		
	}

	@Override
	public boolean delBlog(int blogid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from blog where blog_id=?",new Object[]{
				blogid 
		} );
	}

	@Override
	public boolean updateBlog(Blog blog) {
		// TODO Auto-generated method stub
		return this.excuteDb("update blog set style_id=?,title=?,text=?,inputtime=? where blog_id=? ",new Object[]{
				 blog.getStyleid(),
				 blog.getTitle(),
				 blog.getText(),
				blog.getInputtime(),
				blog.getBlogid()
		} );
	}

	@Override
	public List<Blog> findBlog() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from blog order by blog_id desc");
			ResultSet rs=ps.executeQuery();
			List<Blog> list=new ArrayList<Blog>();
			while(rs.next()){
				Blog d=new Blog();
				d.setBlogid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setText(rs.getString(4));
				d.setPoint(rs.getInt(5));
				d.setInputtime(rs.getTimestamp(6));
				list.add(d);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public Blog findBlog(int blogid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		Blog d=new Blog();
		try {
			PreparedStatement pss =conn.prepareStatement("update blog set point=point+1 where blog_id=?");
			pss.setInt(1,blogid);
			pss.executeUpdate();
			PreparedStatement ps=conn.prepareStatement("select * from blog where blog_id=?");
			ps.setInt(1,blogid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				d.setBlogid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setText(rs.getString(4));
				d.setPoint(rs.getInt(5));
				d.setInputtime(rs.getTimestamp(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return d;
	}

	@Override
	public List<Blog> findBlogpoint() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from blog order by point desc");
			ResultSet rs=ps.executeQuery();
			List<Blog> list=new ArrayList<Blog>();
			while(rs.next()){
				Blog d=new Blog();
				d.setBlogid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setText(rs.getString(4));
				d.setPoint(rs.getInt(5));
				d.setInputtime(rs.getTimestamp(6));
				list.add(d);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public List<Blog> findBlogstyle(int styleid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from blog where style_id=? order by blog_id desc");
			ps.setInt(1, styleid);
			ResultSet rs=ps.executeQuery();
			List<Blog> list=new ArrayList<Blog>();
			while(rs.next()){
				Blog d=new Blog();
				d.setBlogid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setText(rs.getString(4));
				d.setPoint(rs.getInt(5));
				d.setInputtime(rs.getTimestamp(6));
				list.add(d);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public List<Blog> findBlog(String condition) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from blog where title like '%"+condition+"%' or text like '%"+condition+"%' or inputtime like '%"+condition+"%' order by blog_id desc");
			ResultSet rs=ps.executeQuery();
			List<Blog> list=new ArrayList<Blog>();
			while(rs.next()){
				Blog d=new Blog();
				d.setBlogid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setText(rs.getString(4));
				d.setPoint(rs.getInt(5));
				d.setInputtime(rs.getTimestamp(6));
				list.add(d);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public List<Blog> findBlogorder() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from blog order by rand()");
			ResultSet rs=ps.executeQuery();
			List<Blog> list=new ArrayList<Blog>();
			while(rs.next()){
				Blog d=new Blog();
				d.setBlogid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setText(rs.getString(4));
				d.setPoint(rs.getInt(5));
				d.setInputtime(rs.getTimestamp(6));
				list.add(d);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public List<Blog> findBlogtime(String condition) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from blog where inputtime like '%"+condition+"%' order by blog_id desc");
			ResultSet rs=ps.executeQuery();
			List<Blog> list=new ArrayList<Blog>();
			while(rs.next()){
				Blog d=new Blog();
				d.setBlogid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setText(rs.getString(4));
				d.setPoint(rs.getInt(5));
				d.setInputtime(rs.getTimestamp(6));
				list.add(d);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public Blog findBeforeBlog(int beforeblogid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		Blog d=new Blog();
		try {
			
			PreparedStatement ps=conn.prepareStatement("select * from blog where blog_id=?");
			ps.setInt(1,beforeblogid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				d.setBlogid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setText(rs.getString(4));
				d.setPoint(rs.getInt(5));
				d.setInputtime(rs.getTimestamp(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return d;
	}

	@Override
	public Blog findNextBlog(int nextblogid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		Blog d=new Blog();
		try {
			
			PreparedStatement ps=conn.prepareStatement("select * from blog where blog_id=?");
			ps.setInt(1,nextblogid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				d.setBlogid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setText(rs.getString(4));
				d.setPoint(rs.getInt(5));
				d.setInputtime(rs.getTimestamp(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return d;
	}
	
}
