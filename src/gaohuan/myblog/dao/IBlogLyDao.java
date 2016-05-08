package gaohuan.myblog.dao;

import gaohuan.myblog.pojo.BlogLy;

import java.util.List;

public interface IBlogLyDao {
	public boolean addBlogLy(BlogLy blogly);
	public boolean updateBlogLy(BlogLy blogly);
	public boolean delBlogLy(int lyid);
	public List<BlogLy> findBlogLy(int blogid);
}
