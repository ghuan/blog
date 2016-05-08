package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.IIpLookDao;
import gaohuan.myblog.pojo.IpLook;
import gaohuan.myblog.util.Conn;

public class IIpLookDaoImpl extends Conn implements IIpLookDao {

	@Override
	public boolean addIplook(IpLook iplook) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into iplook (ip,inputtime) values(?,?)",new Object[]{
				iplook.getIp(),
				
				iplook.getInputtime()
		} );
	}

	@Override
	public List<IpLook> findIplook() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from iplook order by id desc");
			ResultSet rs=ps.executeQuery();
			List<IpLook> list=new ArrayList<IpLook>();
			while(rs.next()){
				IpLook d=new IpLook();
				d.setId(rs.getInt(1));
				d.setIp(rs.getString(2));
				
				d.setInputtime(rs.getTimestamp(3));
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
	public List<IpLook> findIpDay(String day) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from iplook where inputtime like '%"+day+"%' order by id desc");
			ResultSet rs=ps.executeQuery();
			List<IpLook> list=new ArrayList<IpLook>();
			while(rs.next()){
				IpLook d=new IpLook();
				d.setId(rs.getInt(1));
				d.setIp(rs.getString(2));
				d.setInputtime(rs.getTimestamp(3));
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
	public List<IpLook> findIpbyIp(String ip) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from iplook where ip like '%"+ip+"%' order by id desc");
			ResultSet rs=ps.executeQuery();
			List<IpLook> list=new ArrayList<IpLook>();
			while(rs.next()){
				IpLook d=new IpLook();
				d.setId(rs.getInt(1));
				d.setIp(rs.getString(2));
				d.setInputtime(rs.getTimestamp(3));
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

	
}
