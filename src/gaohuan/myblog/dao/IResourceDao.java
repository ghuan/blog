package gaohuan.myblog.dao;


import gaohuan.myblog.pojo.Resource;

import java.util.List;

public interface IResourceDao {
	public boolean addSource(Resource resource);
	public boolean delSource(int resourceid);
	public boolean updateBlog(Resource resource);
	public boolean updateBlogpoint(Resource resource);
	public List<Resource> findResource();
	public List<Resource> findResourcestyle(int styleid);
	public List<Resource> findResourcepoint();
	public Resource findResource(int resourceid);
	public List<Resource> findResourcetime(String condition);
}
