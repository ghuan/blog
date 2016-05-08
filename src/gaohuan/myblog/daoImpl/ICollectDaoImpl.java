package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.ICollectDao;
import gaohuan.myblog.pojo.Collect;
import gaohuan.myblog.util.Conn;

public class ICollectDaoImpl extends Conn implements ICollectDao{

	@Override
	public boolean addCollect(Collect collect) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into collect (style_id,title,mark,description,inputtime,coll_add) values(?,?,?,?,?,?)",new Object[]{
				collect.getStyleid(),
				collect.getTitle(),
				collect.getMark(),
				collect.getDescription(),
				collect.getInputtime(),
				collect.getColladd()
		} );
	}

	@Override
	public boolean delCollect(int collectid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from collect where collect_id=?",new Object[]{
				collectid 
		} );
	}

	@Override
	public boolean updateCollect(Collect collect) {
		// TODO Auto-generated method stub
		return this.excuteDb("update collect set style_id=?,title=?,mark=?,description=?,inputtime=?,coll_add=? where collect_id=? ",new Object[]{
				collect.getStyleid(),
				collect.getTitle(),
				collect.getMark(),
				collect.getDescription(),
				collect.getInputtime(),
				collect.getColladd(),
				collect.getCollectid()
		} );
	}

	@Override
	public List<Collect> findCollect() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from collect order by collect_id desc");
			ResultSet rs=ps.executeQuery();
			List<Collect> list=new ArrayList<Collect>();
			while(rs.next()){
				Collect d=new Collect();
				
				
				d.setCollectid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setMark(rs.getString(4));
				d.setDescription(rs.getString(5));
				d.setPoint(rs.getInt(6));
				d.setInputtime(rs.getTimestamp(7));
				d.setColladd(rs.getString(8));
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
	public Collect findCollect(int collectid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		Collect d=new Collect();
		try {
			PreparedStatement pss =conn.prepareStatement("update collect set point=point+1 where collect_id=?");
			pss.setInt(1,collectid);
			pss.executeUpdate();
			PreparedStatement ps=conn.prepareStatement("select * from collect where collect_id=?");
			ps.setInt(1,collectid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				d.setCollectid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setMark(rs.getString(4));
				d.setDescription(rs.getString(5));
				d.setPoint(rs.getInt(6));
				d.setInputtime(rs.getTimestamp(7));
				d.setColladd(rs.getString(8));
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
	public List<Collect> findCollectstyle(int styleid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from collect where style_id=? order by collect_id desc");
			ps.setInt(1, styleid);
			ResultSet rs=ps.executeQuery();
			List<Collect> list=new ArrayList<Collect>();
			while(rs.next()){
				Collect d=new Collect();
				d.setCollectid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
				d.setTitle(rs.getString(3));
				d.setMark(rs.getString(4));
				d.setDescription(rs.getString(5));
				d.setPoint(rs.getInt(6));
				d.setInputtime(rs.getTimestamp(7));
				d.setColladd(rs.getString(8));
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
