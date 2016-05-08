package gaohuan.myblog.dao;


import gaohuan.myblog.pojo.CollectLy;

import java.util.List;

public interface ICollectLyDao {
	public boolean addCollectLy(CollectLy collectly);
	public boolean updateCollectLy(CollectLy collectly);
	public boolean delCollectLy(int lyid);
	public List<CollectLy> findCollectLy(int styleid);
}
