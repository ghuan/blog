package gaohuan.myblog.dao;


import gaohuan.myblog.pojo.Photo;

import java.util.List;

public interface IPhotoDao {
	public boolean addPhoto(Photo photo);
	public boolean delPhoto(int photoid);
	public boolean delPhotobystyle(int styleid);
	public boolean updatePhoto(Photo photo);
	public List<Photo> findPhoto();
	public Photo findPhoto(int photoid);
	public List<Photo> findPhotoStyle(int styleid);
	
}
