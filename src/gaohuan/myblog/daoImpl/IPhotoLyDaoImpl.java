package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.IPhotoLyDao;
import gaohuan.myblog.pojo.PhotoLy;
import gaohuan.myblog.util.Conn;

public class IPhotoLyDaoImpl extends Conn implements IPhotoLyDao {

	@Override
	public boolean addPhotoLy(PhotoLy photoly) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into photo_ly (photo_id,username,text,mail,inputtime) values(?,?,?,?,?)",new Object[]{
				photoly.getPhotoid(),
				photoly.getUsername(),
				photoly.getText(),
				photoly.getMail(),
				photoly.getInputtime()
		} );
	}

	@Override
	public boolean delPhotoLy(int lyid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from photo_ly where ly_id=?",new Object[]{
				lyid 
		} );
	}

	@Override
	public List<PhotoLy> findPhotoLy(int photoid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from photo_ly where photo_id=? order by ly_id desc");
			ps.setInt(1, photoid);
			ResultSet rs=ps.executeQuery();
			List<PhotoLy> list=new ArrayList<PhotoLy>();
			while(rs.next()){
				PhotoLy d=new PhotoLy();
				d.setLyid(rs.getInt(1));
				d.setPhotoid(rs.getInt(2));
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
	public boolean updatePhotoLy(PhotoLy photoly) {
		// TODO Auto-generated method stub
		return this.excuteDb("update photo_ly set reply=? where ly_id=? ",new Object[]{
				photoly.getReply(),
				photoly.getLyid()
		} );
	}
	
}
