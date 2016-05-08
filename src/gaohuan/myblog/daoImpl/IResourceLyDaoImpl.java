package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.IResourceLyDao;
import gaohuan.myblog.pojo.ResourceLy;
import gaohuan.myblog.util.Conn;

public class IResourceLyDaoImpl extends Conn implements IResourceLyDao {

	@Override
	public boolean addResourceLy(ResourceLy resourcely) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into resource_ly (resource_id,username,text,mail,inputtime) values(?,?,?,?,?)",new Object[]{
				resourcely.getResourceid(),
				resourcely.getUsername(),
				resourcely.getText(),
				resourcely.getMail(),
				resourcely.getInputtime()
		} );
	}

	@Override
	public boolean delResourceLy(int lyid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from resource_ly where ly_id=?",new Object[]{
				lyid 
		} );
	}

	@Override
	public List<ResourceLy> findResourceLy(int resourceid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from resource_ly where resource_id=? order by ly_id desc");
			ps.setInt(1, resourceid);
			ResultSet rs=ps.executeQuery();
			List<ResourceLy> list=new ArrayList<ResourceLy>();
			while(rs.next()){
				ResourceLy d=new ResourceLy();
				d.setLyid(rs.getInt(1));
				d.setResourceid(rs.getInt(2));
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
	public boolean updateResourceLy(ResourceLy resourcely) {
		// TODO Auto-generated method stub
		return this.excuteDb("update resource_ly set reply=? where ly_id=? ",new Object[]{
				resourcely.getReply(),
				resourcely.getLyid()
		} );
	}

}
