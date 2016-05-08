package gaohuan.myblog.dao;


import gaohuan.myblog.pojo.ResourceStyle;

import java.util.List;

public interface IResourceStyleDao {
	public boolean addResourceStyle(ResourceStyle resourcestyle);
	public boolean delResourceStyle(int styleid);
	public boolean updateResourceStyle(ResourceStyle resourcestyle);
	public ResourceStyle findResourceStyle(int styleid);
	public List<ResourceStyle> findResourceStyle();
}
