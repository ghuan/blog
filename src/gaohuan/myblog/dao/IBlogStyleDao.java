package gaohuan.myblog.dao;


import gaohuan.myblog.pojo.BlogStyle;

import java.util.List;

public interface IBlogStyleDao {
	public boolean addBlogStyle(BlogStyle blogstyle);
	public boolean delBlogStyle(int styleid);
	public boolean updateBlogStyle(BlogStyle blogstyle);
	public BlogStyle findBlogStyle(int styleid);
	public List<BlogStyle> findBlogStyle();
}
