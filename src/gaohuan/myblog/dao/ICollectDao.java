package gaohuan.myblog.dao;


import gaohuan.myblog.pojo.Collect;

import java.util.List;

public interface ICollectDao {
	public boolean addCollect(Collect collect);
	public boolean delCollect(int collectid);
	public boolean updateCollect(Collect collect);
	public List<Collect> findCollect();
	public Collect findCollect(int collectid);
	public List<Collect> findCollectstyle(int styleid);
}
