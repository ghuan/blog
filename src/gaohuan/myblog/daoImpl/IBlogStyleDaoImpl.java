package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.IBlogStyleDao;

import gaohuan.myblog.pojo.BlogStyle;
import gaohuan.myblog.util.Conn;

public class IBlogStyleDaoImpl extends Conn implements IBlogStyleDao {

	@Override
	public boolean addBlogStyle(BlogStyle blogstyle) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into blog_style (style) values(?)",new Object[]{
				blogstyle.getStyle()
		} );
	}

	@Override
	public boolean delBlogStyle(int styleid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from blog_style where style_id=?",new Object[]{
				styleid
		} );
	}

	@Override
	public boolean updateBlogStyle(BlogStyle blogstyle) {
		// TODO Auto-generated method stub
		return this.excuteDb("update blog_style set style=? where style_id=? ",new Object[]{
				blogstyle.getStyle(),
				blogstyle.getStyleid()
		} );
	}

	@Override
	public List<BlogStyle> findBlogStyle() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from blog_style order by style_id ");
			ResultSet rs=ps.executeQuery();
			List<BlogStyle> list=new ArrayList<BlogStyle>();
			while(rs.next()){
				BlogStyle d=new BlogStyle();
				
				
				d.setStyleid(rs.getInt(1));
				d.setStyle(rs.getString(2));
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
	public BlogStyle findBlogStyle(int styleid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		BlogStyle d=new BlogStyle();
		try {
			
			PreparedStatement ps=conn.prepareStatement("select * from blog_style where style_id=?");
			ps.setInt(1,styleid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				d.setStyleid(rs.getInt(1));
				d.setStyle(rs.getString(2));
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
