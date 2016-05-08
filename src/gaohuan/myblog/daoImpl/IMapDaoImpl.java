package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.IMapDao;
import gaohuan.myblog.pojo.MapLook;
import gaohuan.myblog.util.Conn;

public class IMapDaoImpl extends Conn implements IMapDao{

	@Override
	public boolean addMap(MapLook map) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into maplook (map_add,text,inputtime) values(?,?,?)",new Object[]{
				map.getMapadd(),
				map.getText(),
				map.getInputtime()
		} );
	}

	@Override
	public boolean delMap(int id) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from maplook where id=?",new Object[]{
				id 
		} );
	}

	@Override
	public boolean updateMap(MapLook map) {
		// TODO Auto-generated method stub
		return this.excuteDb("update maplook set map_add=?,text=?,inputtime=? where id=? ",new Object[]{
				map.getMapadd(),
				map.getText(),
				map.getInputtime(),
				map.getId()
		} );
	}

	@Override
	public List<MapLook> findMap() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from maplook order by id desc");
			ResultSet rs=ps.executeQuery();
			List<MapLook> list=new ArrayList<MapLook>();
			while(rs.next()){
				MapLook d=new MapLook();
				d.setId(rs.getInt(1));
				d.setMapadd(rs.getString(2));
				d.setText(rs.getString(3));
				d.setInputtime(rs.getTimestamp(4));
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
	public MapLook findMap(int id) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		MapLook d=new MapLook();
		try {
			
			PreparedStatement ps=conn.prepareStatement("select * from maplook where id=?");
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				d.setId(rs.getInt(1));
				d.setMapadd(rs.getString(2));
				d.setText(rs.getString(3));
				d.setInputtime(rs.getTimestamp(4));
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
