package gaohuan.myblog.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gaohuan.myblog.dao.ICollectLyDao;
import gaohuan.myblog.pojo.CollectLy;
import gaohuan.myblog.util.Conn;

public class ICollectLyDaoImpl extends Conn implements ICollectLyDao{

	@Override
	public boolean addCollectLy(CollectLy collectly) {
		// TODO Auto-generated method stub
		return this.excuteDb("insert into collect_ly (style_id,username,text,mail,inputtime) values(?,?,?,?,?)",new Object[]{
				collectly.getStyleid(),
				collectly.getUsername(),
				collectly.getText(),
				collectly.getMail(),
				collectly.getInputtime()
		} );
	}

	@Override
	public boolean delCollectLy(int lyid) {
		// TODO Auto-generated method stub
		return this.excuteDb("delete from collect_ly where ly_id=?",new Object[]{
				lyid 
		} );
	}

	@Override
	public List<CollectLy> findCollectLy(int styleid) {
		// TODO Auto-generated method stub
		Connection conn=this.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from collect_ly where style_id=? order by ly_id desc");
			ps.setInt(1, styleid);
			ResultSet rs=ps.executeQuery();
			List<CollectLy> list=new ArrayList<CollectLy>();
			while(rs.next()){
				CollectLy d=new CollectLy();
				d.setLyid(rs.getInt(1));
				d.setStyleid(rs.getInt(2));
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
	public boolean updateCollectLy(CollectLy collectly) {
		// TODO Auto-generated method stub
		return this.excuteDb("update collect_ly set reply=? where ly_id=? ",new Object[]{
				collectly.getReply(),
				collectly.getLyid()
		} );
	}

}
