package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.IResourceDao;
import gaohuan.myblog.pojo.Resource;
import gaohuan.myblog.util.Conn;

public class IResourceDaoImpl extends Conn implements IResourceDao {

	@Override
	public boolean addSource(Resource resource) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into resource (style_id,title,size,language,banben,text,inputtime,res_add,image_add) values(?,?,?,?,?,?,?,?,?)",new Object[]{
				resource.getStyleid(),
				resource.getTitle(),
				resource.getSize(),
				resource.getLanguage(),
				resource.getBanben(),
				resource.getText(),
				resource.getInputtime(),
				resource.getResadd(),
				resource.getImageadd()
		} );
	}

	@Override
	public boolean delSource(int resourceid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from resource where resource_id=?",new Object[]{
				resourceid 
		} );
	}

	@Override
	public boolean updateBlog(Resource resource) {
		// TODO Auto-generated method stub
		return this.excuteDb("update resource set style_id=?,title=?,size=?,language=?,banben=?,text=?,inputtime=?,res_add=?,image_add=? where resource_id=? ",new Object[]{
				resource.getStyleid(),
				resource.getTitle(),
				resource.getSize(),
				resource.getLanguage(),
				resource.getBanben(),
				resource.getText(),
				resource.getInputtime(),
				resource.getResadd(),
				resource.getImageadd(),
				resource.getResourceid()
		} );
	}

	@Override
	public List<Resource> findResource() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from resource order by resource_id desc");
			ResultSet rs=ps.executeQuery();
			List<Resource> list=new ArrayList<Resource>();
			while(rs.next()){
				Resource d=new Resource();
				
				
				d.setResourceid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setSize(rs.getString(4));
				d.setLanguage(rs.getString(5));
				d.setBanben(rs.getString(6));
				d.setText(rs.getString(7));
				d.setPoint(rs.getInt(8));
				d.setInputtime(rs.getTimestamp(9));
				d.setResadd(rs.getString(10));
				d.setImageadd(rs.getString(11));
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
	public Resource findResource(int resourceid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		Resource d=new Resource();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from resource where resource_id=?");
			ps.setInt(1,resourceid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				d.setResourceid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setSize(rs.getString(4));
				d.setLanguage(rs.getString(5));
				d.setBanben(rs.getString(6));
				d.setText(rs.getString(7));
				d.setPoint(rs.getInt(8));
				d.setInputtime(rs.getTimestamp(9));
				d.setResadd(rs.getString(10));
				d.setImageadd(rs.getString(11));
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
	public List<Resource> findResourcepoint() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from resource order by point desc");
			ResultSet rs=ps.executeQuery();
			List<Resource> list=new ArrayList<Resource>();
			while(rs.next()){
				Resource d=new Resource();
				
				
				d.setResourceid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setSize(rs.getString(4));
				d.setLanguage(rs.getString(5));
				d.setBanben(rs.getString(6));
				d.setText(rs.getString(7));
				d.setPoint(rs.getInt(8));
				d.setInputtime(rs.getTimestamp(9));
				d.setResadd(rs.getString(10));
				d.setImageadd(rs.getString(11));
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
	public List<Resource> findResourcestyle(int styleid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from resource where style_id=? order by resource_id desc");
			ps.setInt(1, styleid);
			ResultSet rs=ps.executeQuery();
			List<Resource> list=new ArrayList<Resource>();
			while(rs.next()){
				Resource d=new Resource();
				d.setResourceid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setSize(rs.getString(4));
				d.setLanguage(rs.getString(5));
				d.setBanben(rs.getString(6));
				d.setText(rs.getString(7));
				d.setPoint(rs.getInt(8));
				d.setInputtime(rs.getTimestamp(9));
				d.setResadd(rs.getString(10));
				d.setImageadd(rs.getString(11));
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
	public List<Resource> findResourcetime(String condition) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from resource where inputtime like '%"+condition+"%' order by resource_id desc");
			ResultSet rs=ps.executeQuery();
			List<Resource> list=new ArrayList<Resource>();
			while(rs.next()){
				Resource d=new Resource();
				d.setResourceid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setSize(rs.getString(4));
				d.setLanguage(rs.getString(5));
				d.setBanben(rs.getString(6));
				d.setText(rs.getString(7));
				d.setPoint(rs.getInt(8));
				d.setInputtime(rs.getTimestamp(9));
				d.setResadd(rs.getString(10));
				d.setImageadd(rs.getString(11));
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
	public boolean updateBlogpoint(Resource resource) {
		// TODO Auto-generated method stub
		return this.excuteDb("update resource set point=? where resource_id=? ",new Object[]{
				resource.getPoint(),
				resource.getResourceid()
		} );
	}

}
