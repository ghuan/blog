package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.IPhotoStyleDao;

import gaohuan.myblog.pojo.PhotoStyle;
import gaohuan.myblog.util.Conn;

public class IPhotoStyleDaoImpl extends Conn implements IPhotoStyleDao {

	@Override
	public boolean addPhotoStyle(PhotoStyle photostyle) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into photo_style (style,inputtime) values(?,?)",new Object[]{
				photostyle.getStyle(),
				photostyle.getInputtime()
		} );
	}

	@Override
	public boolean delPhotoStyle(int styleid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from photo_style where style_id=?",new Object[]{
				styleid
		} );
	}

	@Override
	public boolean updatePhotoStyle(PhotoStyle photostyle) {
		// TODO Auto-generated method stub
		return this.excuteDb("update photo_style set style=?,inputtime=? where style_id=? ",new Object[]{
				photostyle.getStyle(),
				photostyle.getInputtime(),
				photostyle.getStyleid()
		} );
	}

	@Override
	public List<PhotoStyle> findPhotoStyle() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from photo_style order by style_id ");
			ResultSet rs=ps.executeQuery();
			List<PhotoStyle> list=new ArrayList<PhotoStyle>();
			while(rs.next()){
				PhotoStyle d=new PhotoStyle();
				d.setStyleid(rs.getInt(1));
				d.setStyle(rs.getString(2));
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
	public PhotoStyle findPhotoStyle(int styleid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		PhotoStyle d=new PhotoStyle();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from photo_style where style_id=?");
			ps.setInt(1,styleid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				d.setStyleid(rs.getInt(1));
				d.setStyle(rs.getString(2));
				d.setInputtime(rs.getTimestamp(3));
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
