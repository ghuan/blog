package gaohuan.myblog.dao;


import gaohuan.myblog.pojo.CollectStyle;

import java.util.List;

public interface ICollectStyleDao {
	public boolean addCollectStyle(CollectStyle collectstyle);
	public boolean delCollectStyle(int styleid);
	public boolean updateCollectStyle(CollectStyle collectstyle);
	public List<CollectStyle> findCollectStyle();
	public CollectStyle findCollectStyle(int styleid);
}
