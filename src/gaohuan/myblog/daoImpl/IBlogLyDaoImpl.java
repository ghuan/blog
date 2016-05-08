package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.IBlogLyDao;
import gaohuan.myblog.pojo.BlogLy;
import gaohuan.myblog.util.Conn;

public class IBlogLyDaoImpl extends Conn implements IBlogLyDao {

	@Override
	public boolean addBlogLy(BlogLy blogly) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into blog_ly (blog_id,username,text,mail,inputtime) values(?,?,?,?,?)",new Object[]{
				 blogly.getBlogid(),
				blogly.getUsername(),
				blogly.getText(),
				blogly.getMail(),
				blogly.getInputtime()
		} );
	}

	@Override
	public boolean delBlogLy(int lyid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from blog_ly where ly_id=?",new Object[]{
				lyid 
		} );
	}

	@Override
	public List<BlogLy> findBlogLy(int blogid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from blog_ly where blog_id=? order by ly_id");
			ps.setInt(1, blogid);
			ResultSet rs=ps.executeQuery();
			List<BlogLy> list=new ArrayList<BlogLy>();
			while(rs.next()){
				BlogLy d=new BlogLy();
				d.setLyid(rs.getInt(1));
				d.setBlogid(rs.getInt(2));
				d.setUsername(rs.getString(3));
				d.setText(rs.getString(4));
				d.setReply(rs.getString(5));
				d.setMail(rs.getString(6));
				d.setInputtime(rs.getTimestamp(7));
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
	public boolean updateBlogLy(BlogLy blogly) {
		// TODO Auto-generated method stub
		return this.excuteDb("update blog_ly set reply=? where ly_id=? ",new Object[]{
				blogly.getReply(),
				blogly.getLyid()
		} );
	}

}
