package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.IAdminDao;
import gaohuan.myblog.pojo.Admin;
import gaohuan.myblog.util.Conn;

public class IAdminDaoImpl extends Conn implements IAdminDao{

	@Override
	public boolean addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into admin (admin_name,admin_pwd) values(?,?)",new Object[]{
				admin.getAdminname(),
				admin.getAdminpwd()
		} );
	}

	@Override
	public boolean delAdmin(int adminid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from admin where admin_id=?",new Object[]{
				adminid 
		} );
	}

	@Override
	public boolean updateAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return this.excuteDb("update admin set admin_name=?,admin_pwd=? where admin_id=? ",new Object[]{
				 admin.getAdminname(),
				 admin.getAdminpwd(),
				 admin.getAdminid()
		} );
	}

	@Override
	public Admin findAdmin(int adminid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		Admin d=new Admin();
		try {
			
			PreparedStatement ps=conn.prepareStatement("select * from admin where admin_id=?");
			ps.setInt(1,adminid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				d.setAdminid(rs.getInt(1));
				d.setAdminname(rs.getString(2));
				d.setAdminpwd(rs.getString(3));
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
	public List<Admin> findAdmin() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from admin order by admin_id desc");
			ResultSet rs=ps.executeQuery();
			List<Admin> list=new ArrayList<Admin>();
			while(rs.next()){
				Admin d=new Admin();
				d.setAdminid(rs.getInt(1));
				d.setAdminname(rs.getString(2));
				d.setAdminpwd(rs.getString(3));
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
	public Admin login(String adminName) {
		// TODO Auto-generated method stub
		Connection a=this.getConnection();
		try {
			PreparedStatement b=a.prepareStatement("select * from admin where admin_name=?");
			b.setString(1, adminName);
			ResultSet result=b.executeQuery();
			Admin lg=null;
			while(result.next()){
				lg=new Admin();
				lg.setAdminname(result.getString("admin_name"));
				lg.setAdminpwd(result.getString("admin_pwd"));
				
			}return lg;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				a.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

}
