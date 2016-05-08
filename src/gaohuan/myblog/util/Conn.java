package gaohuan.myblog.util;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Conn {
	public Connection getConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/myblog", "myblog", "ghjstc12");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}return null;
	}
	public Boolean excuteDb(String sql,Object[] object){
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			if(object!=null){
				for(int i=0;i<object.length;i++){
					ps.setObject(i+1, object[i]);
				}
				ps.executeUpdate();
				return true;
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
		return false;
	}
}
