package gaohuan.myblog.dao;

import java.util.List;

import gaohuan.myblog.pojo.Blog;

public interface IBlogDao {
	public boolean addBlog(Blog blog);
	public boolean delBlog(int blogid);
	public boolean updateBlog(Blog blog);
	public List<Blog> findBlog();
	public Blog findBlog(int blogid);
	public Blog findBeforeBlog(int beforeblogid);
	public Blog findNextBlog(int nextblogid);
	public List<Blog> findBlogpoint();
	public List<Blog> findBlogstyle(int styleid);
	public List<Blog> findBlog(String condition);
	public List<Blog> findBlogorder();
	public List<Blog> findBlogtime(String condition);
}
 