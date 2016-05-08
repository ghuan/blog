package gaohuan.myblog.dao;


import gaohuan.myblog.pojo.ResourceLy;

import java.util.List;

public interface IResourceLyDao {
	public boolean addResourceLy(ResourceLy resourcely );
	public boolean updateResourceLy(ResourceLy resourcely);
	public boolean delResourceLy(int lyid);
	public List<ResourceLy> findResourceLy(int resourceid);
}
