package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.ICollectStyleDao;
import gaohuan.myblog.pojo.CollectStyle;
import gaohuan.myblog.util.Conn;

public class ICollectStyleDaoImpl extends Conn implements ICollectStyleDao {

	@Override
	public boolean addCollectStyle(CollectStyle collectstyle) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into collect_style (style) values(?)",new Object[]{
				collectstyle.getStyle()
		} );
	}

	@Override
	public boolean delCollectStyle(int styleid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from collect_style where style_id=?",new Object[]{
				styleid
		} );
	}

	@Override
	public boolean updateCollectStyle(CollectStyle collectstyle) {
		// TODO Auto-generated method stub
		return this.excuteDb("update collect_style set style=? where style_id=? ",new Object[]{
				collectstyle.getStyle(),
				collectstyle.getStyleid()
		} );
	}

	@Override
	public List<CollectStyle> findCollectStyle() {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from collect_style order by style_id ");
			ResultSet rs=ps.executeQuery();
			List<CollectStyle> list=new ArrayList<CollectStyle>();
			while(rs.next()){
				CollectStyle d=new CollectStyle();
				
				
				d.setStyleid(rs.getInt(1));
				d.setStyle(rs.getString(2));
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
	public CollectStyle findCollectStyle(int styleid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		CollectStyle d=new CollectStyle();
		try {
			
			PreparedStatement ps=conn.prepareStatement("select * from collect_style where style_id=?");
			ps.setInt(1,styleid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				d.setStyleid(rs.getInt(1));
				d.setStyle(rs.getString(2));
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
