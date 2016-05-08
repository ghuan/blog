package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.IResourceStyleDao;
import gaohuan.myblog.pojo.ResourceStyle;
import gaohuan.myblog.util.Conn;

public class IResourceStyleDaoImpl extends Conn implements IResourceStyleDao{

	@Override
	public boolean addResourceStyle(ResourceStyle resourcestyle) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into resource_style (style) values(?)",new Object[]{
				resourcestyle.getStyle()
		} );
	}

	@Override
	public boolean delResourceStyle(int styleid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from resource_style where style_id=?",new Object[]{
				styleid
		} );
	}

	@Override
	public boolean updateResourceStyle(ResourceStyle resourcestyle) {
		// TODO Auto-generated method stub
		return this.excuteDb("update resource_style set style=? where style_id=? ",new Object[]{
				resourcestyle.getStyle(),
				resourcestyle.getStyleid()
		} );
	}

	@Override
	public List<ResourceStyle> findResourceStyle() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from resource_style order by style_id ");
			ResultSet rs=ps.executeQuery();
			List<ResourceStyle> list=new ArrayList<ResourceStyle>();
			while(rs.next()){
				ResourceStyle d=new ResourceStyle();
				
				
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
	public ResourceStyle findResourceStyle(int styleid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		ResourceStyle d=new ResourceStyle();
		try {
			
			PreparedStatement ps=conn.prepareStatement("select * from resource_style where style_id=?");
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
