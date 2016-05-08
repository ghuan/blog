package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.ILybDao;
import gaohuan.myblog.pojo.Lyb;
import gaohuan.myblog.util.Conn;

public class ILybDaoImpl extends Conn implements ILybDao {

	@Override
	public boolean addLyb(Lyb lyb) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into lyb (username,text,mail,inputtime) values(?,?,?,?)",new Object[]{
				lyb.getUsername(),
				lyb.getText(),
				lyb.getMail(),
				lyb.getInputtime()
		} );
	}

	@Override
	public boolean delLyb(int lyid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from lyb where ly_id=?",new Object[]{
				lyid 
		} );
	}

	@Override
	public List<Lyb> findLyb() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from lyb order by ly_id desc");
			ResultSet rs=ps.executeQuery();
			List<Lyb> list=new ArrayList<Lyb>();
			while(rs.next()){
				Lyb d=new Lyb();
				d.setLyid(rs.getInt(1));
				d.setUsername(rs.getString(2));
				d.setText(rs.getString(3));
				d.setReply(rs.getString(4));
				d.setMail(rs.getString(5));
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
	public boolean updateLyb(Lyb lyb) {
		// TODO Auto-generated method stub
		return this.excuteDb("update lyb set reply=? where ly_id=? ",new Object[]{
				lyb.getReply(),
				lyb.getLyid()
		} );
	}

}
