package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.IPhotoDao;
import gaohuan.myblog.pojo.Photo;
import gaohuan.myblog.util.Conn;

public class IPhotoDaoImpl extends Conn implements IPhotoDao {

	@Override
	public boolean addPhoto(Photo photo) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into photo (style_id,title,text,inputtime,pho_add) values(?,?,?,?,?)",new Object[]{
				photo.getStyleid(),
				photo.getTitle(),
				photo.getText(),
				photo.getInputtime(),
				photo.getPhoadd()
		} );
	}

	@Override
	public boolean delPhoto(int photoid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from photo where photo_id=?",new Object[]{
				photoid 
		} );
	}

	@Override
	public boolean updatePhoto(Photo photo) {
		// TODO Auto-generated method stub
		return this.excuteDb("update photo set style_id=?,title=?,text=?,inputtime=?,pho_add=? where photo_id=? ",new Object[]{
				photo.getStyleid(),
				photo.getTitle(),
				photo.getText(),
				photo.getInputtime(),
				photo.getPhoadd(),
				photo.getPhotoid()
		} );
	}

	@Override
	public List<Photo> findPhoto() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from photo order by photo_id desc");
			ResultSet rs=ps.executeQuery();
			List<Photo> list=new ArrayList<Photo>();
			while(rs.next()){
				Photo d=new Photo();
				
				
				d.setPhotoid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setText(rs.getString(4));
				d.setInputtime(rs.getTimestamp(5));
				d.setPhoadd(rs.getString(6));
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
	public Photo findPhoto(int photoid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		Photo d=new Photo();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from photo where photo_id=?");
			ps.setInt(1,photoid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				d.setPhotoid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setText(rs.getString(4));
				d.setInputtime(rs.getTimestamp(5));
				d.setPhoadd(rs.getString(6));
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
	public List<Photo> findPhotoStyle(int styleid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from photo where style_id=? order by photo_id");
			ps.setInt(1,styleid);
			ResultSet rs=ps.executeQuery();
			List<Photo> list=new ArrayList<Photo>();
			while(rs.next()){
				Photo d=new Photo();
				
				
				d.setPhotoid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setText(rs.getString(4));
				d.setInputtime(rs.getTimestamp(5));
				d.setPhoadd(rs.getString(6));
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
	public boolean delPhotobystyle(int styleid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from photo where style_id=?",new Object[]{
				styleid 
		} );
	}

}